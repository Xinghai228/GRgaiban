package io.github.lazyimmortal.sesame.model.task.antOrchard;

import androidx.core.os.EnvironmentCompat;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AntOrchardGameStayTask {
    private static final String DONE_FLAG_PREFIX = "Orchard::gameStay_";
    private static final Random RANDOM = new Random();
    private static final String SOURCE = "lianyun_nc_sydb";
    private static final String TAG = "农场游戏🎮";

    private AntOrchardGameStayTask() {
    }

    public static void execute() {
        try {
            ArrayList<StayTaskInfo> arrayList = new ArrayList();
            Log.i(TAG, "正在扫描农场游戏时长任务");
            scanIndexFeeds(arrayList);
            scanIndexDelivery(arrayList);
            if (arrayList.isEmpty()) {
                Log.i(TAG, "未发现待执行的农场游戏时长任务");
                return;
            }
            int i = 0;
            int i2 = 0;
            for (StayTaskInfo stayTaskInfo : arrayList) {
                if (!Status.hasFlagToday(DONE_FLAG_PREFIX + stayTaskInfo.appId).booleanValue()) {
                    Log.i(TAG, "发现任务: [" + stayTaskInfo.name + "] (" + stayTaskInfo.appId + ") | 时长: " + stayTaskInfo.duration + "s");
                    int iRunSingleGameTask = runSingleGameTask(stayTaskInfo);
                    if (iRunSingleGameTask >= 0) {
                        Status.flagToday(DONE_FLAG_PREFIX + stayTaskInfo.appId, UserIdMap.getCurrentUid());
                        i++;
                        i2 += iRunSingleGameTask;
                    }
                    TimeUtil.sleep(1000L);
                }
            }
            if (i > 0) {
                Log.farm("农场游戏🎮本次共完成" + i + "个任务共获得肥料" + i2 + "g");
                return;
            }
            Log.i(TAG, "本次扫描的所有任务均已在之前完成");
        } catch (Throwable th) {
            Log.i(TAG, "execute err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void scanIndexFeeds(List<StayTaskInfo> list) {
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(requestString("com.alipay.antorchard.indexFeeds", "[" + buildIndexFeedsBody(1) + "]")).optJSONArray("feedsInfoList");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null && "game".equals(jSONObjectOptJSONObject.optString("itemType"))) {
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("gameItem");
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("itemOutExtMap");
                        if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject3 != null) {
                            String strOptString = jSONObjectOptJSONObject3.optString("orchardBenefitInfo");
                            if (strOptString.length() != 0) {
                                JSONObject jSONObject = new JSONObject(strOptString);
                                if ("FLOAT_BALL_TASK".equals(jSONObject.optString("benefitType"))) {
                                    JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("bizInfo");
                                    addTask(list, jSONObjectOptJSONObject2.optString("gameItemId"), jSONObjectOptJSONObject2.optString("gameName", "未知游戏"), jSONObject.optString("iepTaskId"), jSONObject.optString("iepSceneCode"), jSONObjectOptJSONObject4 == null ? 60 : jSONObjectOptJSONObject4.optInt("floatBallDuration", 60));
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "scanIndexFeeds err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void scanIndexDelivery(List<StayTaskInfo> list) {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(requestString("com.alipay.antorchard.orchardIndexDelivery", "[{\"commonDegradeResult\":{\"deviceLevel\":\"high\",\"resultReason\":0,\"resultType\":0},\"enableTeamType\":[\"team\"],\"inTeam\":true,\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"teamPositionSwitch\":true,\"teamType\":\"help\",\"version\":\"20260721.01\"}]")).optJSONArray("indexDeliveryList");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("deliveryBenefitInfo")) != null && "FLOAT_BALL_TASK".equals(jSONObjectOptJSONObject.optString("benefitType"))) {
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("deliveryDisplayInfo");
                    String strOptString = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optString("btnText", "未知游戏") : "未知游戏";
                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("bizInfo");
                    addTask(list, jSONObjectOptJSONObject2.optString("contentId"), strOptString, jSONObjectOptJSONObject.optString("iepTaskId"), jSONObjectOptJSONObject.optString("iepSceneCode"), jSONObjectOptJSONObject4 == null ? 60 : jSONObjectOptJSONObject4.optInt("floatBallDuration", 60));
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "scanIndexDelivery err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static String buildIndexFeedsBody(int i) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("pageNum", i);
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("sceneCode", "ORCHARD");
        jSONObject.put("source", "ch_appcenter__chsub_9patch");
        jSONObject.put("version", "20260721.01");
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("itemType", "qianyi");
        jSONObject2.put("itemIdList", new JSONArray());
        jSONArray.put(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("itemType", "game");
        jSONObject3.put("itemIdList", new JSONArray());
        jSONArray.put(jSONObject3);
        jSONObject.put("filterItemList", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("deviceLevel", "high");
        jSONObject4.put("resultReason", 0);
        jSONObject4.put("resultType", 0);
        jSONObject.put("commonDegradeResultVO", jSONObject4);
        return jSONObject.toString();
    }

    private static void addTask(List<StayTaskInfo> list, String str, String str2, String str3, String str4, int i) {
        if (str == null || str.length() == 0 || str3 == null || str3.length() == 0) {
            return;
        }
        if (Status.hasFlagToday(DONE_FLAG_PREFIX + str).booleanValue()) {
            return;
        }
        Iterator<StayTaskInfo> it = list.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().appId)) {
                return;
            }
        }
        list.add(new StayTaskInfo(str, str2, str3, str4, Math.max(i, 30)));
    }

    private static int runSingleGameTask(StayTaskInfo stayTaskInfo) {
        try {
            requestString("com.alipay.antorchard.noticeGame", "[{\"appId\":\"" + stayTaskInfo.appId + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20260721.01\"}]");
            submitUserAction(stayTaskInfo.appId, "enterGame");
            TimeUtil.sleep(500L);
            submitEvent(stayTaskInfo.appId, "GAME_FIRST_FRAME", 0L, "paladinx_auto");
            TimeUtil.sleep(500L);
            submitEvent(stayTaskInfo.appId, "loading_completed", 0L, null);
            int iMax = Math.max(stayTaskInfo.duration, 30);
            Random random = RANDOM;
            int iNextInt = random.nextInt(2) + 3;
            Log.i(TAG, "[" + stayTaskInfo.name + "]正在极速模拟游玩 (预计等待" + iNextInt + "s)");
            long j = ((long) iNextInt) * 1000;
            TimeUtil.sleep(j);
            submitDuration(stayTaskInfo.appId, iMax);
            submitEvent(stayTaskInfo.appId, "game_play", j, null);
            Log.i(TAG, "[" + stayTaskInfo.name + "]极速游玩已完成，正在提交结项");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("outBizNo", stayTaskInfo.taskId + "_" + System.currentTimeMillis() + "_" + random.nextInt(1000));
            jSONObject.put("requestType", "NORMAL");
            jSONObject.put("sceneCode", stayTaskInfo.sceneCode);
            jSONObject.put("source", "ch_appcenter__chsub_9patch");
            jSONObject.put("taskType", stayTaskInfo.taskId);
            jSONObject.put("userId", "");
            jSONObject.put("version", "0.1.2411251623.29");
            String strRequestString = requestString("com.alipay.antiep.finishTask", "[" + jSONObject + "]");
            if (strRequestString != null && strRequestString.length() != 0) {
                JSONObject jSONObject2 = new JSONObject(strRequestString);
                if (!jSONObject2.optBoolean("success") && !"100000000".equals(jSONObject2.optString("code"))) {
                    Log.record("农场游戏🎮[" + stayTaskInfo.name + "]任务结项失败: " + jSONObject2.optString("desc"));
                    return -1;
                }
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("finishAwardResultVO");
                int iOptInt = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optInt("deltaAwardCount", 0) : 0;
                Log.farm("农场游戏🎮完成[" + stayTaskInfo.name + "]任务获得肥料" + iOptInt + "g");
                return iOptInt;
            }
            Log.record("农场游戏🎮[" + stayTaskInfo.name + "]任务结项返回为空");
            return -1;
        } catch (Throwable th) {
            Log.i(TAG, "[" + stayTaskInfo.name + "]执行异常:");
            Log.printStackTrace(TAG, th);
            return -1;
        }
    }

    private static void submitUserAction(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("actionCode", str2);
            jSONObject.put("gameId", str);
            jSONObject.put("paladinxVersion", "2.1.95");
            jSONObject.put("source", "gameFramework");
            requestString("com.alipay.gamecenteruprod.biz.rpc.v3.submitUserAction", "[" + jSONObject + "]");
        } catch (Throwable th) {
            Log.i(TAG, "submitUserAction err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void submitDuration(String str, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gameAppId", str);
            jSONObject.put("playTime", i);
            jSONObject.put("source", SOURCE);
            jSONObject.put("statisticTag", "");
            requestString("com.alipay.gamecenteruprod.biz.rpc.v3.submitUserPlayDurationAction", "[" + jSONObject + "]");
        } catch (Throwable th) {
            Log.i(TAG, "submitDuration err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static void submitEvent(String str, String str2, long j, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("CH_INFO", SOURCE);
            jSONObject.put("CPS_ID", EnvironmentCompat.MEDIA_UNKNOWN);
            jSONObject.put("GAME_VERSION", "6.5.72");
            jSONObject.put("PALADINX_VERSION", "2.1.95");
            jSONObject.put("PLAY_SCENE", "NORMAL");
            jSONObject.put("SCENE_ID", "nongchangleyuan");
            if ("GAME_FIRST_FRAME".equals(str2)) {
                jSONObject.put("ALIVE_ENTER", "0");
            }
            if (j > 0) {
                jSONObject.put("GAME_ELAPASED_TIME", j);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("appId", str);
            jSONObject2.put("eventAttrMap", jSONObject);
            jSONObject2.put("eventId", str2);
            StringBuilder sb = new StringBuilder("platform_");
            sb.append(System.currentTimeMillis());
            sb.append("_");
            Random random = RANDOM;
            sb.append(random.nextInt(100000));
            sb.append("_");
            sb.append(random.nextInt(10));
            jSONObject2.put("idempotentNo", sb.toString());
            if (str3 == null) {
                str3 = "loading_completed".equals(str2) ? "my.reportLoadingCompleted" : "my.reportGamePlay";
            }
            jSONObject2.put("source", str3);
            requestString("com.alipay.gameevent.biz.rpc.submitEvent", "[" + jSONObject2 + "]");
        } catch (Throwable th) {
            Log.i(TAG, "submitEvent err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static String requestString(String str, String str2) {
        String strRequestString = ApplicationHook.requestString(str, str2);
        return strRequestString == null ? "" : strRequestString;
    }

    private static final class StayTaskInfo {
        final String appId;
        final int duration;
        final String name;
        final String sceneCode;
        final String taskId;

        StayTaskInfo(String str, String str2, String str3, String str4, int i) {
            this.appId = str;
            this.name = str2;
            this.taskId = str3;
            this.sceneCode = str4;
            this.duration = i;
        }
    }
}
