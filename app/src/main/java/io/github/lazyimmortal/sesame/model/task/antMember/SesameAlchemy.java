package io.github.lazyimmortal.sesame.model.task.antMember;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.task.antOrchard.GoldenBeanRpcCall;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.GoldenBeansTaskListMap;
import java.util.Calendar;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SesameAlchemy {
    private static final String TAG = "SesameAlchemy";

    public static void run(boolean z, boolean z2, boolean z3, Set<String> set, boolean z4, int i, int i2, boolean z5) {
        if (z || z2) {
            try {
                alchemy(z2, z);
            } catch (Throwable th) {
                Log.i(TAG, "run err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        }
        if (z3 || z4) {
            goldenBean(z3, set, z4, i, i2);
        }
        if (z5) {
            pointTreasureBox();
        }
    }

    private static void pointTreasureBox() {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject(AlchemyRpcCall.queryPointTreasureBox());
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null && jSONObjectOptJSONObject.optBoolean("hasBox", false) && "WAIT_CLAIM".equals(jSONObjectOptJSONObject.optString(NotificationCompat.CATEGORY_STATUS))) {
                JSONObject jSONObject2 = new JSONObject(AlchemyRpcCall.openPointTreasureBox());
                TimeUtil.sleep(500L);
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                    StringBuilder sb = new StringBuilder("芝麻积分🎁宝箱#获得[");
                    sb.append(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optInt("rewardAmount", jSONObjectOptJSONObject.optInt("rewardAmount", 0)) : jSONObjectOptJSONObject.optInt("rewardAmount", 0));
                    sb.append("芝麻粒]");
                    Log.other(sb.toString());
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "pointTreasureBox err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void alchemy(boolean z, boolean z2) {
        if (z) {
            try {
                if (!Status.hasFlagToday("SesameAlchemy::alchemySign").booleanValue()) {
                    if (alchemySign()) {
                        Status.flagToday("SesameAlchemy::alchemySign");
                    }
                    TimeUtil.sleep(500L);
                }
            } catch (Throwable th) {
                Log.i(TAG, "alchemy err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        }
        if (z2) {
            if (!Status.hasFlagToday("SesameAlchemy::timeLimited").booleanValue()) {
                if (timeLimitedTask()) {
                    Status.flagToday("SesameAlchemy::timeLimited");
                }
                TimeUtil.sleep(500L);
            }
            doAlchemyLoop();
        }
        if (z2 && !Status.hasFlagToday("SesameAlchemy::stageAward").booleanValue() && claimStageAward()) {
            Status.flagToday("SesameAlchemy::stageAward");
        }
    }

    private static boolean alchemySign() {
        int iOptInt;
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.alchemyQueryCheckIn("alchemy"));
            TimeUtil.sleep(500L);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("currentDateCheckInTaskVO");
            if (jSONObjectOptJSONObject2 == null || !"CAN_COMPLETE".equals(jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS))) {
                return true;
            }
            String strOptString = jSONObjectOptJSONObject2.optString("checkInDate");
            if (strOptString.isEmpty()) {
                return true;
            }
            JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.zmCheckInCompleteTask(strOptString, "alchemy"));
            TimeUtil.sleep(500L);
            if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("data");
            if (jSONObjectOptJSONObject3 != null) {
                iOptInt = jSONObjectOptJSONObject3.optInt("zmlNum", jSONObjectOptJSONObject3.optJSONObject("prize") != null ? jSONObjectOptJSONObject3.optJSONObject("prize").optInt("num", 0) : 0);
                if (iOptInt == 0) {
                    iOptInt = jSONObjectOptJSONObject3.optInt("awardPoint", 0);
                }
            } else {
                iOptInt = 0;
            }
            Log.other("芝麻炼金📅签到#获得[" + iOptInt + "]");
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "alchemySign err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static boolean timeLimitedTask() {
        try {
            JSONObject jSONObject = new JSONObject(AlchemyRpcCall.queryTimeLimitedTask());
            TimeUtil.sleep(500L);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("timeLimitedTaskVO");
            if (jSONObjectOptJSONObject2 != null && !jSONObjectOptJSONObject2.optBoolean("tomorrow", false)) {
                int iOptInt = jSONObjectOptJSONObject2.optInt("startHour", -1);
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("endHour", -1);
                int iOptInt3 = jSONObjectOptJSONObject2.optInt("state", 0);
                String strOptString = jSONObjectOptJSONObject2.optString("templateId");
                if (!strOptString.isEmpty() && iOptInt3 == 1) {
                    int i = Calendar.getInstance().get(11);
                    if (iOptInt >= 0 && iOptInt2 > iOptInt && (i < iOptInt || i >= iOptInt2)) {
                        return true;
                    }
                    String strOptString2 = jSONObjectOptJSONObject2.optString("longTitle", jSONObjectOptJSONObject2.optString("shortTitle", "限时补贴"));
                    JSONObject jSONObject2 = new JSONObject(AlchemyRpcCall.completeTimeLimitedTask(strOptString));
                    TimeUtil.sleep(500L);
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("data");
                        Log.other("芝麻炼金⏰限时补贴[" + strOptString2 + "]#获得[" + (jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optInt("zmlNum", jSONObjectOptJSONObject2.optInt("rewardAmount", 0)) : jSONObjectOptJSONObject2.optInt("rewardAmount", 0)) + "芝麻粒]");
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "timeLimitedTask err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static void doAlchemyLoop() {
        JSONObject jSONObjectOptJSONObject;
        boolean z;
        JSONObject jSONObjectOptJSONObject2;
        int iOptInt;
        try {
            JSONObject jSONObject = new JSONObject(AlchemyRpcCall.queryHome());
            long j = 500;
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null) {
                int iOptInt2 = jSONObjectOptJSONObject.optInt("alchemyNum", 0);
                if (jSONObjectOptJSONObject.optBoolean("capReached", false)) {
                    iOptInt2 = 0;
                }
                if (iOptInt2 <= 0) {
                    return;
                }
                int iOptInt3 = -1;
                int iOptInt4 = jSONObjectOptJSONObject.optInt("staminaCurrent", -1);
                String str = "体力不足#剩余体力[";
                if (jSONObjectOptJSONObject.optBoolean("staminaExhausted", false) || iOptInt4 == 0) {
                    Log.i(TAG, "体力不足#剩余体力[" + iOptInt4 + "]，本轮跳过炼金");
                    return;
                }
                useAlchemyItems();
                int iOptInt5 = jSONObjectOptJSONObject.optInt("alchemyDailyCap", 0);
                int i = iOptInt2 + 5;
                int i2 = 0;
                int i3 = 0;
                long jOptLong = 0;
                while (true) {
                    if (iOptInt2 > 0) {
                        int i4 = i - 1;
                        if (i > 0) {
                            if (iOptInt3 > 0 && iOptInt4 >= 0 && iOptInt4 < iOptInt3) {
                                Log.i(TAG, str + iOptInt4 + "]#本轮已炼[" + i2 + "次]，停止");
                            } else {
                                JSONObject jSONObject2 = new JSONObject(AlchemyRpcCall.alchemy());
                                TimeUtil.sleep(j);
                                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue() && (jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data")) != null && jSONObjectOptJSONObject2.optBoolean("success", true)) {
                                    if (iOptInt5 > 0 && jSONObjectOptJSONObject2.has("alchemyNum") && (iOptInt = iOptInt5 - jSONObjectOptJSONObject2.optInt("alchemyNum", 0)) >= 0 && iOptInt < iOptInt2) {
                                        iOptInt2 = iOptInt;
                                    }
                                    if (jSONObjectOptJSONObject2.optBoolean("levelFull", false)) {
                                        z = true;
                                        break;
                                    }
                                    int i5 = iOptInt5;
                                    String str2 = str;
                                    jOptLong += jSONObjectOptJSONObject2.optLong("goldNum", 0L);
                                    i2++;
                                    if (jSONObjectOptJSONObject2.optBoolean("levelUp", false)) {
                                        i3++;
                                    }
                                    iOptInt2--;
                                    if (iOptInt3 <= 0) {
                                        iOptInt3 = 5;
                                    }
                                    iOptInt3 = jSONObjectOptJSONObject2.optInt("staminaUsedV2", iOptInt3);
                                    iOptInt4 = jSONObjectOptJSONObject2.optInt("staminaCurrent", iOptInt4);
                                    iOptInt5 = i5;
                                    str = str2;
                                    i = i4;
                                    j = 500;
                                }
                            }
                        }
                    }
                    z = false;
                    break;
                }
                JSONObject jSONObject3 = new JSONObject(AlchemyRpcCall.queryHome());
                TimeUtil.sleep(500L);
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue() && jSONObject3.optJSONObject("data") != null) {
                    jSONObjectOptJSONObject = jSONObject3.optJSONObject("data");
                }
                if (i2 > 0) {
                    summaryAlchemy(jSONObjectOptJSONObject, i2, jOptLong, i3);
                }
                if (z) {
                    Log.i(TAG, "已满级#本轮炼金[" + i2 + "次]后停止");
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "doAlchemyLoop err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void useAlchemyItems() {
        try {
            JSONObject jSONObject = new JSONObject(AlchemyRpcCall.queryAvailableItems());
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONArray("items");
                if (jSONArrayOptJSONArray == null) {
                    return;
                }
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2 != null) {
                        String strOptString = jSONObjectOptJSONObject2.optString("itemId");
                        String strOptString2 = jSONObjectOptJSONObject2.optString("itemType");
                        if (!strOptString.isEmpty()) {
                            JSONObject jSONObject2 = new JSONObject(AlchemyRpcCall.useItem(strOptString, strOptString2));
                            TimeUtil.sleep(500L);
                            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                Log.other("芝麻炼金🧪使用道具[" + strOptString2 + "]");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "useAlchemyItems err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void summaryAlchemy(JSONObject jSONObject, int i, long j, int i2) {
        String str;
        if (jSONObject == null) {
            return;
        }
        try {
            long jOptLong = jSONObject.optLong("goldBalance", 0L);
            int iOptInt = jSONObject.optInt("currentLevel", 0);
            long jOptLong2 = jSONObject.optLong("zmlBalance", 0L);
            int iOptInt2 = jSONObject.optInt("finishAlchemyCount", 0);
            StringBuilder sb = new StringBuilder("芝麻炼金⚗️炼金[");
            sb.append(i);
            sb.append("次]#获得[");
            sb.append(j);
            sb.append("金币]#今日累计[");
            sb.append(iOptInt2);
            sb.append("次]");
            if (i2 > 0) {
                str = "#升级[" + i2 + "级→lv" + iOptInt + "]";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("#金币余额[");
            sb.append(jOptLong);
            sb.append("]#芝麻粒余额[");
            sb.append(jOptLong2);
            sb.append("]");
            Log.other(sb.toString());
        } catch (Throwable th) {
            Log.i(TAG, "summaryAlchemy err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static boolean claimStageAward() {
        try {
            JSONObject jSONObject = new JSONObject(AlchemyRpcCall.queryEntryList());
            TimeUtil.sleep(500L);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONArray("entryList");
            if (jSONArrayOptJSONArray == null) {
                return true;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 != null && "ALCHEMY_STAGE_REWARD".equals(jSONObjectOptJSONObject2.optString("entryCode"))) {
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("nextDayAwardDTO");
                    if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.optBoolean("awardAvailable", false)) {
                        JSONObject jSONObject2 = new JSONObject(AlchemyRpcCall.claimAward());
                        TimeUtil.sleep(500L);
                        if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            Log.other("芝麻炼金🏆阶段奖励#获得[" + jSONObjectOptJSONObject3.optInt("pointValue", 0) + "]");
                        }
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "claimStageAward err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static void goldenBean(boolean z, Set<String> set, boolean z2, int i, int i2) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.index(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, GoldenBeanRpcCall.SOURCE_ZHIMA, GoldenBeanRpcCall.VERSION_ZHIMA));
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                int iOptInt = jSONObject.optInt("sproutCollectedDelta", 0);
                if (iOptInt > 0) {
                    Log.other("炼金金豆🌱金豆苗收取#获得[" + iOptInt + "金豆]");
                }
                if (z) {
                    syncGoldenBeanTaskList(jSONObject);
                    if (!Status.hasFlagToday("SesameAlchemy::zhimaSign").booleanValue()) {
                        if (zhimaSign(jSONObject.optJSONObject("signInfo"))) {
                            Status.flagToday("SesameAlchemy::zhimaSign");
                        }
                        TimeUtil.sleep(500L);
                    }
                    if (jSONObject.has("taskList")) {
                        doTaskList(jSONObject.optJSONArray("taskList"), set);
                    }
                }
                if (z2) {
                    exchangeManure(jSONObject.optJSONObject("manureExchangeInfo"), i, i2);
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "goldenBean err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void syncGoldenBeanTaskList(JSONObject jSONObject) {
        try {
            if (Status.hasFlagToday("BlackList::initAlchemyGB").booleanValue()) {
                return;
            }
            GoldenBeansTaskListMap.load();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("taskList");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("taskDisplayConfig");
                    String strOptString = jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.optString("title");
                    if (!strOptString.isEmpty()) {
                        GoldenBeansTaskListMap.add(strOptString, TaskIconUtil.extractIcon(jSONObjectOptJSONObject2));
                    }
                }
            }
            GoldenBeansTaskListMap.save();
            Status.flagToday("BlackList::initAlchemyGB");
            Log.record("同步任务🉑炼金金豆任务列表(与农场金豆共用黑名单)");
        } catch (Throwable th) {
            Log.i(TAG, "syncGoldenBeanTaskList err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static boolean zhimaSign(JSONObject jSONObject) {
        if (jSONObject == null) {
            return true;
        }
        try {
            if (jSONObject.optBoolean("todaySigned", false)) {
                return true;
            }
            String strOptString = jSONObject.optString("currentSignKey");
            if (strOptString.isEmpty()) {
                return true;
            }
            JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.sign(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, GoldenBeanRpcCall.SOURCE_ZHIMA, GoldenBeanRpcCall.VERSION_ZHIMA, strOptString));
            TimeUtil.sleep(500L);
            if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                return false;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("signList");
            int iOptInt = 100;
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("today", false)) {
                        iOptInt = jSONObjectOptJSONObject.optInt("awardCount", 100);
                        break;
                    }
                }
            }
            Log.other("炼金金豆🎁每日签到#获得[" + iOptInt + "金豆]");
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "zhimaSign err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static void doTaskList(JSONArray jSONArray, Set<String> set) {
        if (jSONArray == null) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("sceneCode");
                    String strOptString2 = jSONObjectOptJSONObject.optString("taskId");
                    String strOptString3 = jSONObjectOptJSONObject.optString("taskStatus");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("taskDisplayConfig");
                    String strOptString4 = jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.optString("title");
                    if (strOptString4.isEmpty()) {
                        strOptString4 = strOptString2;
                    }
                    if (set != null && set.contains(strOptString4)) {
                        if ("FINISHED".equals(strOptString3) || "COMPLETED".equals(strOptString3) || "TO_RECEIVE".equals(strOptString3)) {
                            receiveTaskAward(strOptString, strOptString2, strOptString4);
                        }
                    } else if (!"RECEIVED".equals(strOptString3)) {
                        if ("FINISHED".equals(strOptString3)) {
                            receiveTaskAward(strOptString, strOptString2, strOptString4);
                        } else {
                            if ("TODO".equals(strOptString3)) {
                                int iOptInt = jSONObjectOptJSONObject.optInt("rightsTimes", 0);
                                int iOptInt2 = jSONObjectOptJSONObject.optInt("rightsTimesLimit", 0);
                                int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                                int i2 = 0;
                                boolean z = false;
                                while (i2 < iRightsTimesToDo && finishTask(strOptString, strOptString2, strOptString4, TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i2))) {
                                    TimeUtil.sleep(500L);
                                    i2++;
                                    z = true;
                                }
                                if (z) {
                                    receiveTaskAward(strOptString, strOptString2, strOptString4);
                                }
                            }
                            TimeUtil.sleep(500L);
                        }
                    }
                }
            } catch (Throwable th) {
                Log.i(TAG, "doTaskList err:");
                Log.printStackTrace(TAG, th);
            }
        }
    }

    private static boolean isTransactionTask(String str) {
        if (str != null && !str.isEmpty()) {
            String[] strArr = {"付款", "下单", "购买", "消费", "交易", "租赁", "租车", "租借", "信用购", "花呗", "分期", "借款", "贷款", "缴费", "充值", "下单立减", "购物金", "还贷"};
            for (int i = 0; i < 18; i++) {
                if (str.contains(strArr[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean finishTask(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.finishTask(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, GoldenBeanRpcCall.SOURCE_ZHIMA, GoldenBeanRpcCall.VERSION_ZHIMA, str, str2));
            TimeUtil.sleep(500L);
            MessageUtil.checkResultCodeAndMarkTaskBlackList("GoldenBeansTaskList", str3, jSONObject);
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return false;
            }
            Log.other("炼金金豆🧾完成任务[" + str3 + "]" + str4);
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "finishTask err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static boolean receiveTaskAward(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.receiveTaskAward(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, GoldenBeanRpcCall.SOURCE_ZHIMA, GoldenBeanRpcCall.VERSION_ZHIMA, str, str2));
            TimeUtil.sleep(500L);
            MessageUtil.checkResultCodeAndMarkTaskBlackList("GoldenBeansTaskList", str3, jSONObject);
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.other("炼金金豆🎁领取奖励[" + str3 + "]#获得[" + jSONObject.optInt("incAwardCount", 0) + "金豆]");
                return true;
            }
        } catch (Throwable th) {
            Log.i(TAG, "receiveTaskAward err:");
            Log.printStackTrace(TAG, th);
        }
        return false;
    }

    private static void exchangeManure(JSONObject jSONObject, int i, int i2) {
        String str;
        if (jSONObject != null) {
            try {
                if (jSONObject.optBoolean("pageOpened", true)) {
                    int iOptInt = jSONObject.optInt("currentManure", 0);
                    int iOptInt2 = jSONObject.optInt("effectiveExchangeManure", 0);
                    int iOptInt3 = jSONObject.optInt("beanReward", 0);
                    int iOptInt4 = jSONObject.optInt("minExchangeAmount", 0);
                    int iOptInt5 = jSONObject.optInt("remainQuota", 0);
                    if (iOptInt3 <= 0 || iOptInt4 <= 0) {
                        Log.i(TAG, "换金豆服务端字段异常#beanReward=" + iOptInt3 + "#minExchangeAmount=" + iOptInt4 + "，跳过");
                        return;
                    }
                    if (iOptInt <= 0 || iOptInt5 <= 0) {
                        return;
                    }
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    int i3 = iOptInt - i2;
                    if (i3 <= 0) {
                        return;
                    }
                    if (i > 0) {
                        int goldenBeanExchangeCountToday = Status.getGoldenBeanExchangeCountToday(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA) / iOptInt3;
                        int i4 = i - goldenBeanExchangeCountToday;
                        if (i4 <= 0) {
                            Log.i(TAG, "今日已兑" + goldenBeanExchangeCountToday + "粒达上限" + i + "，跳过换金豆");
                            return;
                        }
                        if (i3 > i4) {
                            i3 = i4;
                        }
                    }
                    if (iOptInt2 <= 0 || i3 <= iOptInt2) {
                        iOptInt2 = i3;
                    }
                    int i5 = iOptInt2 * iOptInt3;
                    if (i5 > iOptInt5) {
                        i5 = (iOptInt5 / iOptInt3) * iOptInt3;
                    }
                    if (i5 < iOptInt4) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.manureExchange(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, GoldenBeanRpcCall.SOURCE_ZHIMA, GoldenBeanRpcCall.VERSION_ZHIMA, i5));
                    TimeUtil.sleep(500L);
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        long jOptLong = jSONObject2.optLong("beanDelta", 0L);
                        if (jOptLong > 0) {
                            Status.goldenBeanExchangeToday(GoldenBeanRpcCall.BIZ_TYPE_ZHIMA, (int) Math.min(jOptLong, 2147483647L));
                        }
                        int iOptInt6 = jSONObject2.optInt("manureCost", 0);
                        int iOptInt7 = jSONObject2.optInt("remainQuota", -1);
                        StringBuilder sb = new StringBuilder("炼金金豆💰芝麻粒换金豆#消耗[");
                        sb.append(iOptInt6);
                        sb.append("芝麻粒]获得[");
                        sb.append(jOptLong);
                        sb.append("金豆]");
                        if (iOptInt7 >= 0) {
                            str = "#今日剩余额度[" + iOptInt7 + "]";
                        } else {
                            str = "";
                        }
                        sb.append(str);
                        Log.other(sb.toString());
                    }
                }
            } catch (Throwable th) {
                Log.i(TAG, "exchangeManure err:");
                Log.printStackTrace(TAG, th);
            }
        }
    }
}
