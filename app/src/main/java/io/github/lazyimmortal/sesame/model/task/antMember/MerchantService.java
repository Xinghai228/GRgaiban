package io.github.lazyimmortal.sesame.model.task.antMember;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MerchantService {
    private static final String TAG = "MerchantService";

    public static Boolean transcodeCheck() {
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.transcodeCheck());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return false;
            }
            if (jSONObject.getJSONObject("data").optBoolean("isOpened")) {
                return true;
            }
            Log.record("商家服务🏪未开通");
            return false;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "transcodeCheck err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void zcjSignIn() {
        if (Status.hasFlagToday("zcj::signIn").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.zcjSignInQuery());
            String str = TAG;
            if (MessageUtil.checkSuccess(str, jSONObject).booleanValue()) {
                boolean zEquals = "RECEIVED".equals(jSONObject.getJSONObject("data").getJSONObject("button").getString(NotificationCompat.CATEGORY_STATUS));
                if (!zEquals) {
                    JSONObject jSONObject2 = new JSONObject(MerchantServiceRpcCall.zcjSignInExecute());
                    if (MessageUtil.checkSuccess(str, jSONObject2).booleanValue()) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("data");
                        int i = jSONObject3.getInt("todayReward");
                        Log.other("商家服务🏪完成[" + jSONObject3.getString("widgetName") + "]#获得[" + i + "商家积分]");
                        zEquals = true;
                    }
                }
                if (zEquals) {
                    Status.flagToday("zcj::signIn");
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "zcjSignIn err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static void taskListQueryV2() {
        zcjSignIn();
        ExtensionsHandle.handleAlphaRequest("merchantService", "doHideTask", null);
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.taskListQueryV2());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("moduleList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if ("MORE".equals(jSONObject2.getString("planCode"))) {
                    taskListProcessing(jSONObject2.getJSONArray("taskList"));
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "taskListQueryV2 err:");
            Log.printStackTrace(str, th);
        }
        ballQueryV1();
    }

    private static void taskListProcessing(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(NotificationCompat.CATEGORY_STATUS);
                if (!"NEED_RECEIVE".equals(string)) {
                    if (jSONObject.has("extendLog")) {
                        taskFinish(jSONObject);
                    } else {
                        String actionCode = getActionCode(jSONObject);
                        if (taskQueryByActionCode(actionCode).booleanValue() && (!"UNRECEIVED".equals(string) || taskReceive(jSONObject).booleanValue())) {
                            taskActionProduce(jSONObject, actionCode);
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "taskListProcessing err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static void taskFinish(JSONObject jSONObject) {
        try {
            if (MessageUtil.checkSuccess(TAG, new JSONObject(MerchantServiceRpcCall.taskFinish(jSONObject.getJSONObject("extendLog").getJSONObject("bizExtMap").getString("bizId")))).booleanValue()) {
                Log.other("商家服务🏪[" + jSONObject.getString("title") + "]#获得[" + jSONObject.getString("reward") + "商家积分]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "taskListProcessing err:");
            Log.printStackTrace(str, th);
        }
    }

    private static String getActionCode(JSONObject jSONObject) {
        String str;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.getJSONObject("button").optJSONObject("extInfo");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("actionCode")) {
                str = jSONObjectOptJSONObject.getString("actionCode") + "_VIEWED";
            } else {
                if (!jSONObject.has("sendPointImmediately")) {
                    return null;
                }
                str = jSONObject.getString("taskCode") + "_VIEWED";
            }
            return str;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getActionCode err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private static Boolean taskQueryByActionCode(String str) {
        if (str == null) {
            return false;
        }
        try {
            return MessageUtil.checkSuccess(TAG, new JSONObject(MerchantServiceRpcCall.taskQueryByActionCode(str)));
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "taskQueryByActionCode err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    private static Boolean taskReceive(JSONObject jSONObject) {
        try {
            return MessageUtil.checkSuccess(TAG, new JSONObject(MerchantServiceRpcCall.taskReceive(jSONObject.getString("taskCode"))));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "taskReceive err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private static void taskActionProduce(JSONObject jSONObject, String str) {
        try {
            int i = jSONObject.getInt("target") - jSONObject.getInt("current");
            for (int i2 = 0; i2 < i; i2++) {
                if (MessageUtil.checkSuccess(TAG, new JSONObject(MerchantServiceRpcCall.taskActionProduce(str))).booleanValue()) {
                    String string = jSONObject.getString("title");
                    int i3 = jSONObject.getInt("target");
                    StringBuilder sb = new StringBuilder();
                    sb.append("商家服务🏪完成[");
                    sb.append(string);
                    sb.append("]");
                    sb.append(i3 > 1 ? "（" + Math.min(i3, jSONObject.getInt("current") + i2 + 1) + "/" + i3 + "）" : "");
                    Log.other(sb.toString());
                }
                TimeUtil.sleep(5000L);
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "taskActionProduce err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void ballQueryV1() {
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.ballQueryV1());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("pointBalls")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("pointBalls");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        ballReceive(jSONObject3.getString("id"), jSONObject3.getString("name"));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "ballQueryV1 err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void ballReceive(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.ballReceive(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.other("商家服务🏪领取[" + str2 + "]#获得[" + jSONObject.getJSONObject("data").getString("pointReceived") + "商家积分]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "ballReceive err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static void merchantKMDK() {
        if (TimeUtil.isNowAfterTimeStr("0600").booleanValue() && TimeUtil.isNowBeforeTimeStr("1200").booleanValue()) {
            merchantKMDKSignIn();
        }
        merchantKMDKSignUp();
    }

    private static void merchantKMDKSignIn() {
        try {
            JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.KMDKQueryActivity());
            String str = TAG;
            if (MessageUtil.checkSuccess(str, jSONObject).booleanValue() && "SIGN_IN_ENABLE".equals(jSONObject.getString("signInStatus")) && MessageUtil.checkResultCode(str, new JSONObject(MerchantServiceRpcCall.KMDKSignIn(jSONObject.getString("activityNo")))).booleanValue()) {
                Log.other("商家服务🏪[开门打卡签到成功]");
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "merchantKMDKSignIn err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void merchantKMDKSignUp() {
        if (Status.hasFlagToday("kmdk::signUp").booleanValue()) {
            return;
        }
        for (int i = 0; i < 5; i++) {
            try {
                JSONObject jSONObject = new JSONObject(MerchantServiceRpcCall.KMDKQueryActivity());
                String str = TAG;
                if (MessageUtil.checkSuccess(str, jSONObject).booleanValue()) {
                    String string = jSONObject.getString("activityNo");
                    if (Log.getFormatDate().replace("-", "").equals(string.split("_")[2])) {
                        if ("SIGN_UP".equals(jSONObject.getString("signUpStatus"))) {
                            Log.record("开门打卡今日已报名！");
                        } else {
                            if ("UN_SIGN_UP".equals(jSONObject.getString("signUpStatus"))) {
                                String string2 = jSONObject.getString("activityPeriodName");
                                if (MessageUtil.checkSuccess(str, new JSONObject(MerchantServiceRpcCall.KMDKSignUp(string))).booleanValue()) {
                                    Log.other("商家服务🏪报名[" + string2 + "开门打卡]");
                                }
                            }
                            TimeUtil.sleep(500L);
                        }
                        Status.flagToday("kmdk::signUp");
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "merchantKMDKSignUp err:");
                Log.printStackTrace(str2, th);
                return;
            }
        }
    }
}
