package io.github.lazyimmortal.sesame.model.task.antMember;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class MerchantServiceRpcCall {
    public static String transcodeCheck() {
        return ApplicationHook.requestString("alipay.mrchservbase.mrchbusiness.sign.transcode.check", "[{}]");
    }

    private static String zcjViewInvoke(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.zcj.view.invoke", "[{\"compId\":\"" + str + "\"}]");
    }

    public static String zcjSignInQuery() {
        return zcjViewInvoke("ZCJ_SIGN_IN_QUERY");
    }

    public static String zcjSignInExecute() {
        return zcjViewInvoke("ZCJ_SIGN_IN_EXECUTE");
    }

    public static String taskListQueryV2() {
        return taskListQueryV2("");
    }

    public static String taskListQuery() {
        return ApplicationHook.requestString("alipay.mrchservbase.zcj.taskList.query", "[{\"compId\":\"ZCJ_TASK_LIST\",\"params\":{\"activityCode\":\"ZCJ\",\"clientVersion\":\"10.3.36\",\"extInfo\":{},\"platform\":\"Android\",\"underTakeTaskCode\":\"\"}}]");
    }

    public static String taskListQueryV2(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.zcj.taskList.query.v2", "[{\"taskItemCode\":\"" + str + "\"}]");
    }

    public static String taskFinish(String str) {
        return ApplicationHook.requestString("com.alipay.adtask.biz.mobilegw.service.task.finish", "[{\"bizId\":\"" + str + "\"}]");
    }

    public static String taskReceive(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.sqyj.task.receive", "[{\"compId\":\"ZTS_TASK_RECEIVE\",\"extInfo\":{\"taskCode\":\"" + str + "\"}}]");
    }

    public static String taskQueryByActionCode(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.task.query.by.actioncode", "[{\"actionCode\":\"" + str + "\"}]");
    }

    public static String taskActionProduce(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.biz.task.action.produce", "[{\"actionCode\":\"" + str + "\"}]");
    }

    public static String ballQueryV1() {
        return ApplicationHook.requestString("alipay.mrchservbase.mrchpoint.ball.query.v1", "[{}]");
    }

    public static String ballReceive(String str) {
        return ApplicationHook.requestString("alipay.mrchservbase.mrchpoint.ball.receive", "[{\"ballIds\":[\"" + str + "\"],\"channel\":\"MRCH_SELF\",\"outBizNo\":\"" + RandomUtil.getRandomUUID() + "\"}]");
    }

    public static String KMDKQueryActivity() {
        return ApplicationHook.requestString("alipay.merchant.kmdk.query.activity", "[{\"scene\":\"activityCenter\"}]");
    }

    public static String KMDKSignIn(String str) {
        return ApplicationHook.requestString("alipay.merchant.kmdk.signIn", "[{\"activityNo\":\"" + str + "\"}]");
    }

    public static String KMDKSignUp(String str) {
        return ApplicationHook.requestString("alipay.merchant.kmdk.signUp", "[{\"activityNo\":\"" + str + "\"}]");
    }
}
