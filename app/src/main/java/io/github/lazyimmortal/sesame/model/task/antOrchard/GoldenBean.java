package io.github.lazyimmortal.sesame.model.task.antOrchard;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.model.task.antGame.GameTask;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GoldenBean {
    private static final String TAG = "GoldenBean";
    private static final Set<String> TASK_ID_BLACKLIST;
    private static final Set<String> TASK_TYPE_BLACKLIST;

    static {
        HashSet hashSet = new HashSet();
        TASK_TYPE_BLACKLIST = hashSet;
        HashSet hashSet2 = new HashSet();
        TASK_ID_BLACKLIST = hashSet2;
        hashSet.add("GAME_ZH");
        hashSet.add("KUAISHOU");
        hashSet.add("XIANSHANGZHIFU");
        hashSet.add("XIANXIAZHIFU");
        hashSet.add("YUEBAO");
        hashSet.add("XIAOXIDINGYUE");
        hashSet.add("WAKUANG");
        hashSet2.add("MANURE_EXCHANGE");
    }

    public void run(boolean z, Set<String> set, boolean z2, boolean z3, int i, int i2) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.index());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                summary(jSONObject);
                sign(jSONObject.optJSONObject("signInfo"));
                fortuneDraw(jSONObject.optJSONObject("fortuneDrawInfo"));
                collectFloatingBeans();
                miner();
                if (z) {
                    marketingPopup();
                    if (jSONObject.has("taskList")) {
                        doTaskList(jSONObject.optJSONArray("taskList"), "金豆", set);
                    }
                    if (jSONObject.has("farmTaskList")) {
                        doTaskList(jSONObject.optJSONArray("farmTaskList"), "肥料", set);
                    }
                }
                if (z2) {
                    gameCenter(jSONObject);
                    playGame();
                }
                if (z3) {
                    exchangeManure(jSONObject.optJSONObject("manureExchangeInfo"), i, i2);
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static String brief(String str) {
        if (str == null) {
            return "null";
        }
        if (str.length() <= 300) {
            return str;
        }
        return str.substring(0, 300) + "...(截断)";
    }

    private static void collectFloatingBeans() {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.sync("\"FLOATING_BEANS\""));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("floatingBeans");
                if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject != null) {
                    jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("floatingBeans");
                }
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject2 != null) {
                            String strOptString = jSONObjectOptJSONObject2.optString("assetId");
                            if (strOptString.length() != 0) {
                                String strOptString2 = jSONObjectOptJSONObject2.optString("outBizTypeDesc", "浮动金豆");
                                int iOptInt = jSONObjectOptJSONObject2.optInt("beanCount", 0);
                                if (MessageUtil.checkResultCode(TAG, new JSONObject(GoldenBeanRpcCall.collect(strOptString))).booleanValue()) {
                                    Log.farm("金豆夺宝🫘浮动金豆[" + strOptString2 + "]#获得[" + iOptInt + "金豆]");
                                }
                                sleep(500L);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "collectFloatingBeans err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void marketingPopup() {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.sync("\"MARKETING_POPUP\""));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("marketingPopupTask");
                if (jSONObjectOptJSONObject2 == null && jSONObjectOptJSONObject != null) {
                    jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("marketingPopupTask");
                }
                if (jSONObjectOptJSONObject2 != null && "TODO".equals(jSONObjectOptJSONObject2.optString("taskStatus"))) {
                    String strOptString = jSONObjectOptJSONObject2.optString("taskId");
                    if (strOptString.length() != 0) {
                        if (Status.hasFlagToday("GoldenBean::popup_" + strOptString).booleanValue()) {
                            return;
                        }
                        Status.flagToday("GoldenBean::popup_" + strOptString);
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("taskDisplayConfig");
                        String strOptString2 = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optString("title", "限时加量") : "限时加量";
                        GoldenBeanRpcCall.trigger(strOptString, "MARKETING_POPUP_CLICKED");
                        sleep(500L);
                        JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.receiveTaskAward(jSONObjectOptJSONObject2.optString("sceneCode", "GOLDEN_BEAN_MASTER_TASK"), strOptString));
                        if (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                            Log.farm("金豆夺宝⏫限时加量[" + strOptString2 + "]#获得[" + jSONObject2.optInt("incAwardCount", 0) + "金豆]");
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "marketingPopup err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void handleChangYongFangWen(String str) {
        int iOptInt;
        try {
            if (Status.hasFlagToday("GoldenBean::changYongFangWen").booleanValue()) {
                return;
            }
            Status.flagToday("GoldenBean::changYongFangWen");
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.indexFromHome());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() || (iOptInt = jSONObject.optInt("receptionAwardCount", 0)) <= 0) {
                return;
            }
            Log.farm("金豆夺宝🏠常用来访[" + str + "]#获得[" + iOptInt + "金豆]");
        } catch (Throwable th) {
            Log.i(TAG, "handleChangYongFangWen err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static boolean handleGameTaskByReport(String str, JSONObject jSONObject, String str2) {
        GameTask gameTask;
        int iMax;
        try {
            if (Status.hasFlagToday("GoldenBean::game_" + str).booleanValue()) {
                return true;
            }
            if (str2.contains("对对碰乐园")) {
                gameTask = GameTask.GoldenBean_ddply;
                iMax = Math.max(1, extractNumber(str2) / 10);
            } else if (str2.contains("森林小车车")) {
                gameTask = GameTask.GoldenBean_slxcc;
                iMax = Math.max(1, extractNumber(str2) / 20);
            } else {
                if (!str2.contains("森林救援队")) {
                    return str2.contains("农场上车车") || str2.contains("金豆乐园");
                }
                gameTask = GameTask.GoldenBean_sljyd;
                iMax = Math.max(1, extractNumber(str2) / 30);
            }
            gameTask.report(str2, iMax);
            Status.flagToday("GoldenBean::game_" + str);
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "handleGameTaskByReport err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static int extractNumber(String str) {
        try {
            Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
            if (matcher.find()) {
                return Integer.parseInt(matcher.group(1));
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static void summary(JSONObject jSONObject) {
        int iOptInt;
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("sproutInfo");
            if ((jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optInt("beanDelta", 0) : 0) <= 0 && (jSONObjectOptJSONObject = jSONObject.optJSONObject("goldenBeanSproutInfo")) != null) {
                jSONObjectOptJSONObject.optInt("beanDelta", 0);
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("jarInfo");
            int iOptInt2 = 99999;
            if (jSONObjectOptJSONObject3 != null) {
                iOptInt = jSONObjectOptJSONObject3.optInt("currentProgress", 0);
                iOptInt2 = jSONObjectOptJSONObject3.optInt("jarCapacity", 99999);
                jSONObjectOptJSONObject3.optInt("jarCount", 0);
                jSONObjectOptJSONObject3.optBoolean("jarFull", false);
            } else {
                iOptInt = 0;
            }
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("sproutInfo");
            if (jSONObjectOptJSONObject4 != null) {
                jSONObjectOptJSONObject4.optInt("pendingBeans", 0);
            }
            jSONObject.optInt("taskAwardToReceive", 0);
            Math.max(0, iOptInt2 - iOptInt);
        } catch (Throwable unused) {
        }
    }

    private static void sign(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.optBoolean("todaySigned", false)) {
                return;
            }
            String strOptString = jSONObject.optString("currentSignKey");
            if (!strOptString.isEmpty() && MessageUtil.checkResultCode(TAG, new JSONObject(GoldenBeanRpcCall.sign(strOptString))).booleanValue()) {
                Log.farm("金豆夺宝🎁每日签到#获得" + getTodayAwardCount(jSONObject) + "金豆");
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static int getTodayAwardCount(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("signList");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("today", false)) {
                        return jSONObjectOptJSONObject.optInt("awardCount", 100);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return 100;
    }

    private static void fortuneDraw(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.optBoolean("todayDrawn", false)) {
                    return;
                }
            } catch (Throwable th) {
                Log.printStackTrace(TAG, th);
                return;
            }
        }
        if (Status.hasFlagToday("GoldenBean::fortuneDraw").booleanValue()) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.fortuneDraw());
        String strOptString = jSONObject2.optString("resultCode");
        if (!"SUCCESS".equalsIgnoreCase(strOptString) && !"100".equals(strOptString)) {
            String str = jSONObject2.optString("resultDesc") + jSONObject2.optString("memo");
            if (str.contains("已抽") || str.contains("已完成") || str.contains("已领")) {
                Status.flagToday("GoldenBean::fortuneDraw");
                return;
            }
        }
        if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
            Status.flagToday("GoldenBean::fortuneDraw");
            int iOptInt = jSONObject2.optInt("beanDelta", 0);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("fortuneType");
            String str2 = "";
            String strOptString2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("typeName") : "";
            StringBuilder sb = new StringBuilder("金豆夺宝🔮求签夺宝#");
            if (!strOptString2.isEmpty()) {
                str2 = "[" + strOptString2 + "]";
            }
            sb.append(str2);
            sb.append("获得[");
            sb.append(iOptInt);
            sb.append("金豆]");
            Log.farm(sb.toString());
        }
    }

    private static void exchangeManure(JSONObject jSONObject, int i, int i2) {
        String str;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.optBoolean("farmOpened", true) && jSONObject.optBoolean("pageOpened", true)) {
                int iOptInt = jSONObject.optInt("effectiveExchangeManure", jSONObject.optInt("currentManure", 0));
                int iOptInt2 = jSONObject.optInt("minExchangeAmount", 800);
                int iOptInt3 = jSONObject.optInt("remainQuota", 0);
                if (i < 0) {
                    i = 0;
                }
                int i3 = iOptInt - i;
                if (i2 > 0) {
                    int goldenBeanExchangeCountToday = Status.getGoldenBeanExchangeCountToday("FARM");
                    int i4 = i2 - goldenBeanExchangeCountToday;
                    if (i4 <= 0) {
                        Log.i(TAG, "今日已兑" + goldenBeanExchangeCountToday + "肥料达上限" + i2 + "，跳过换金豆");
                        return;
                    }
                    if (i3 > i4) {
                        i3 = i4;
                    }
                }
                if (i3 <= iOptInt3) {
                    iOptInt3 = i3;
                }
                if (iOptInt3 < iOptInt2) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.manureExchange(iOptInt3));
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                    int iOptInt4 = jSONObject2.optInt("manureCost", iOptInt3);
                    long jOptLong = jSONObject2.optLong("beanDelta", ((long) iOptInt4) * ((long) jSONObject.optInt("beanReward", 1)));
                    if (iOptInt4 > 0) {
                        Status.goldenBeanExchangeToday("FARM", iOptInt4);
                    }
                    int iOptInt5 = jSONObject2.optInt("remainQuota", -1);
                    StringBuilder sb = new StringBuilder("金豆夺宝💰肥料换金豆#消耗[");
                    sb.append(iOptInt4);
                    sb.append("肥料]获得[");
                    sb.append(jOptLong);
                    sb.append("金豆]");
                    if (iOptInt5 >= 0) {
                        str = "#今日剩余额度[" + iOptInt5 + "]";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    Log.farm(sb.toString());
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static void miner() {
        JSONObject jSONObjectOptJSONObject;
        String strPickBestBean;
        try {
            if (Status.hasFlagToday("GoldenBean::minerDone").booleanValue()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.minerIndex());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONObjectOptJSONObject = jSONObject.optJSONObject("minerInfo")) != null) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("currentLevel");
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("taskProgress");
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject(NotificationCompat.CATEGORY_PROGRESS);
                int iOptInt = jSONObjectOptJSONObject3 == null ? 0 : jSONObjectOptJSONObject3.optInt("remainingTimes", 0);
                boolean zOptBoolean = jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.optBoolean("canGrab", false);
                if (iOptInt > 0 && zOptBoolean && jSONObjectOptJSONObject2 != null) {
                    HashSet hashSet = new HashSet();
                    int iOptInt2 = jSONObjectOptJSONObject4 == null ? 0 : jSONObjectOptJSONObject4.optInt("currentLevelIndex", 0);
                    addGrabbedIds(hashSet, jSONObjectOptJSONObject4);
                    int i = iOptInt + 10;
                    long jOptInt = 0;
                    int i2 = 0;
                    while (iOptInt > 0 && zOptBoolean && jSONObjectOptJSONObject2 != null) {
                        int i3 = i - 1;
                        if (i <= 0 || (strPickBestBean = pickBestBean(jSONObjectOptJSONObject2.optJSONArray("items"), hashSet)) == null) {
                            break;
                            break;
                        }
                        hashSet.add(strPickBestBean);
                        JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.minerGrab("BEAN", strPickBestBean));
                        if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            sleep(500L);
                        } else {
                            jOptInt += (long) (jSONObject2.optInt("baseReward", 0) + jSONObject2.optInt("extraReward", 0));
                            i2++;
                            jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("currentLevel");
                            JSONObject jSONObjectOptJSONObject5 = jSONObject2.optJSONObject(NotificationCompat.CATEGORY_PROGRESS);
                            JSONObject jSONObjectOptJSONObject6 = jSONObject2.optJSONObject("taskProgress");
                            if (jSONObjectOptJSONObject6 == null) {
                                break;
                            }
                            iOptInt = jSONObjectOptJSONObject6.optInt("remainingTimes", 0);
                            zOptBoolean = jSONObjectOptJSONObject6.optBoolean("canGrab", false);
                            int iOptInt3 = jSONObjectOptJSONObject5 == null ? iOptInt2 : jSONObjectOptJSONObject5.optInt("currentLevelIndex", iOptInt2);
                            if (iOptInt3 != iOptInt2) {
                                hashSet.clear();
                                addGrabbedIds(hashSet, jSONObjectOptJSONObject5);
                                iOptInt2 = iOptInt3;
                            }
                            sleep(500L);
                        }
                        i = i3;
                    }
                    long j = jOptInt;
                    int i4 = i2;
                    if (iOptInt <= 0) {
                        Status.flagToday("GoldenBean::minerDone");
                    }
                    if (i4 > 0) {
                        Log.farm("金豆夺宝⛏️金猫矿工#下钩[" + i4 + "次]获得[" + j + "金豆]");
                        return;
                    }
                    return;
                }
                if (iOptInt <= 0) {
                    Status.flagToday("GoldenBean::minerDone");
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static void addGrabbedIds(Set<String> set, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("grabbedItemIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i, "");
                    if (!strOptString.isEmpty()) {
                        set.add(strOptString);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static String pickBestBean(JSONArray jSONArray, Set<String> set) {
        int iOptInt;
        String str = null;
        if (jSONArray == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null && "BEAN".equalsIgnoreCase(jSONObjectOptJSONObject.optString("type"))) {
                String strOptString = jSONObjectOptJSONObject.optString("itemId");
                if (!strOptString.isEmpty() && ((set == null || !set.contains(strOptString)) && (iOptInt = jSONObjectOptJSONObject.optInt("beanValue", 0)) > i)) {
                    i = iOptInt;
                    str = strOptString;
                }
            }
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private void doTaskList(JSONArray jSONArray, String str, Set<String> set) {
        int i;
        JSONArray jSONArray2 = jSONArray;
        if (jSONArray2 == null) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        while (i3 < jSONArray.length()) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONArray2.optJSONObject(i3);
                if (jSONObjectOptJSONObject == null) {
                    i = i3;
                } else {
                    String strOptString = jSONObjectOptJSONObject.optString("sceneCode");
                    String strOptString2 = jSONObjectOptJSONObject.optString("taskId");
                    String strOptString3 = jSONObjectOptJSONObject.optString("taskStatus");
                    int iOptInt = jSONObjectOptJSONObject.optInt("rightsTimes", i2);
                    int iOptInt2 = jSONObjectOptJSONObject.optInt("rightsTimesLimit", i2);
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("taskDisplayConfig");
                    String strOptString4 = jSONObjectOptJSONObject2 == null ? strOptString2 : jSONObjectOptJSONObject2.optString("title");
                    String str2 = "";
                    String strOptString5 = jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.optString("desc");
                    String strOptString6 = jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.optString("targetUrl");
                    if (strOptString3.equals("FINISHED") || strOptString3.equals("COMPLETED") || strOptString3.equals("TO_RECEIVE")) {
                        goldenBeansReceiveTaskAward(strOptString, strOptString2, strOptString4, str);
                        if (iOptInt2 <= iOptInt) {
                            i = i3;
                        }
                    }
                    if (jSONObjectOptJSONObject2 != null) {
                        i = i3;
                        try {
                            if (!"GAME_ZH".equals(jSONObjectOptJSONObject2.optString("type")) || !"TODO".equals(strOptString3) || (!BaseModel.isMiniGameTaskDisallowed(strOptString4, strOptString5, "GoldenBeansTaskList") && !handleGameTaskByReport(strOptString2, jSONObjectOptJSONObject2, strOptString4))) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            Log.printStackTrace(TAG, th);
                            jSONArray2 = jSONArray;
                            i3 = i + 1;
                            i2 = 0;
                        }
                    } else {
                        i = i3;
                    }
                    try {
                        if (set.contains(strOptString4)) {
                            try {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("GoldenBeansTaskList", strOptString4, strOptString5, strOptString6, strOptString3).bizKey(strOptString2).rights(iOptInt, iOptInt2).taskRemain(Math.max(0, jSONObjectOptJSONObject.optInt("taskRequire", 0) - jSONObjectOptJSONObject.optInt("taskProgress", 0))).taskPlayType(jSONObjectOptJSONObject.optString("taskPlayType", jSONObjectOptJSONObject.optString("taskProdPlayType"))).taskMode(jSONObjectOptJSONObject.optString("taskMode")).taskSceneCode(strOptString).scene(strOptString, GoldenBeanRpcCall.SOURCE).version(GoldenBeanRpcCall.VERSION));
                            } catch (Throwable th2) {
                                th = th2;
                                Log.printStackTrace(TAG, th);
                            }
                        } else if (!strOptString3.equals("RECEIVED")) {
                            if ("GOLDEN_BEAN_TASK_CHANGYONGFANGWEN".equals(strOptString2) && "TODO".equals(strOptString3)) {
                                handleChangYongFangWen(strOptString4);
                            } else if (strOptString3.equals("TODO") || iOptInt2 > iOptInt) {
                                int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                                int i4 = 0;
                                while (i4 < iRightsTimesToDo) {
                                    String strOptString7 = jSONObjectOptJSONObject2 == null ? str2 : jSONObjectOptJSONObject2.optString("desc", str2);
                                    String strRightsProgressText = TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i4);
                                    String str3 = str2;
                                    String str4 = strOptString4;
                                    int i5 = iOptInt2;
                                    String str5 = strOptString7;
                                    int i6 = iOptInt;
                                    if (!goldenBeansFinishTask(strOptString, strOptString2, strOptString4, str5, strRightsProgressText)) {
                                        break;
                                    }
                                    goldenBeansReceiveTaskAward(strOptString, strOptString2, str4, str);
                                    sleep(500L);
                                    i4++;
                                    strOptString4 = str4;
                                    iOptInt = i6;
                                    str2 = str3;
                                    iOptInt2 = i5;
                                }
                            } else {
                                sleep(500L);
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        Log.printStackTrace(TAG, th);
                        jSONArray2 = jSONArray;
                        i3 = i + 1;
                        i2 = 0;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                i = i3;
            }
            jSONArray2 = jSONArray;
            i3 = i + 1;
            i2 = 0;
        }
    }

    private boolean goldenBeansFinishTask(String str, String str2, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.finishTask(str, str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("GoldenBeansTaskList", str3, jSONObject);
            if (!isGoldenBeanTaskClosed(jSONObject) && MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.farm("农场金豆🧾完成任务[" + str3 + "]" + str5);
                return true;
            }
        } catch (Throwable th) {
            Log.i(TAG, "goldenBeansFinishTask err:");
            Log.printStackTrace(TAG, th);
        }
        return false;
    }

    private boolean goldenBeansReceiveTaskAward(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject(GoldenBeanRpcCall.receiveTaskAward(str, str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("GoldenBeansTaskList", str3, jSONObject);
            if (!isGoldenBeanTaskClosed(jSONObject) && MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.farm("农场金豆🎁领取奖励[" + str3 + "]#获得" + jSONObject.optInt("incAwardCount", 0) + str4);
                return true;
            }
        } catch (Throwable th) {
            Log.i(TAG, "goldenBeansReceiveTaskAward err:");
            Log.printStackTrace(TAG, th);
        }
        return false;
    }

    private static boolean isGoldenBeanTaskClosed(JSONObject jSONObject) {
        if (jSONObject.optBoolean("success") || jSONObject.optBoolean("isSuccess")) {
            return false;
        }
        String str = jSONObject.optString("desc") + jSONObject.optString("errorMsg") + jSONObject.optString("errorMessage") + jSONObject.optString("resultDesc") + jSONObject.optString("memo");
        return str.contains("已完结") || str.contains("已完成") || str.contains("已领");
    }

    private static String parseTaskType(JSONObject jSONObject) {
        String strOptString;
        int iIndexOf;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("spmExtend");
            if (jSONObjectOptJSONObject != null && (iIndexOf = (strOptString = jSONObjectOptJSONObject.optString("iepTaskTracer")).indexOf("taskType:")) >= 0) {
                String strSubstring = strOptString.substring(iIndexOf + 9);
                int iIndexOf2 = strSubstring.indexOf(WebSocketProtocol.PAYLOAD_SHORT);
                return iIndexOf2 >= 0 ? strSubstring.substring(0, iIndexOf2) : strSubstring;
            }
        } catch (Throwable unused) {
        }
        return jSONObject.optString("taskId", "");
    }

    private static void gameCenter(JSONObject jSONObject) {
        int iOptInt;
        int iOptInt2;
        try {
            if (jSONObject.optBoolean("showGameCenter", true) && (iOptInt = jSONObject.optInt("gameCenterDrawRightsCount", 0)) > 0) {
                int i = iOptInt + 5;
                while (iOptInt > 0) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(GoldenBeanRpcCall.drawGameCenterAward(1));
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("gameCenterDrawAwardList");
                        if (jSONArrayOptJSONArray != null) {
                            iOptInt2 = 0;
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                                if (jSONObjectOptJSONObject != null && "GOLDEN_BEAN".equalsIgnoreCase(jSONObjectOptJSONObject.optString("awardType"))) {
                                    iOptInt2 += jSONObjectOptJSONObject.optInt("awardCount", 0);
                                }
                            }
                        } else {
                            iOptInt2 = 0;
                        }
                        JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("gameCenterDrawRights");
                        int iOptInt3 = jSONObjectOptJSONObject2 == null ? 0 : jSONObjectOptJSONObject2.optInt("quotaCanUse", 0);
                        Log.farm("砸出金豆🎖️" + iOptInt2 + "豆[剩蛋" + (jSONObjectOptJSONObject2 == null ? 0 : jSONObjectOptJSONObject2.optInt("quotaCanUse", 0)) + "个]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                        sleep(500L);
                        iOptInt = iOptInt3;
                    } else {
                        iOptInt--;
                    }
                    i = i2;
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static void playGame() {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(GoldenBeanRpcCall.queryGameCenterList()).optJSONObject("gameCenterDrawRights");
            int iOptInt = 0;
            int iOptInt2 = 20;
            if (jSONObjectOptJSONObject != null) {
                iOptInt = jSONObjectOptJSONObject.optInt("usedQuota", 0);
                iOptInt2 = jSONObjectOptJSONObject.optInt("quotaLimit", 20);
            }
            int i = iOptInt2 - iOptInt;
            if (i > 0) {
                GameTask.GoldenBean_ncscc.report("金豆乐园", i);
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static void sleep(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    private static void dbg(String str) {
        try {
            Log.debug("金豆调试｜" + str);
        } catch (Throwable unused) {
        }
    }
}
