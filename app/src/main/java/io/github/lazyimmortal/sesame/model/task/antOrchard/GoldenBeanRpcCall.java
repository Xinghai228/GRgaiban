package io.github.lazyimmortal.sesame.model.task.antOrchard;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class GoldenBeanRpcCall {
    private static final String BIZ_TYPE = "MASTER";
    public static final String BIZ_TYPE_ZHIMA = "ZHIMA";
    public static final String SOURCE = "babafarm";
    public static final String SOURCE_ZHIMA = "lianjin";
    public static final String VERSION = "20260803.01";
    public static final String VERSION_ZHIMA = "20260901.01";

    public static String index() {
        return index(BIZ_TYPE, SOURCE, VERSION);
    }

    public static String index(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.goldenbean.index", "[{\"bizType\":\"" + str + "\",\"darwinSceneList\":[\"indexLayoutTwo\",\"indexPreRequestCacheAB\",\"taskFlowHandGuide\"],\"source\":\"" + str2 + "\",\"version\":\"" + str3 + "\"}]");
    }

    public static String sign(String str) {
        return sign(BIZ_TYPE, SOURCE, VERSION, str);
    }

    public static String sign(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.goldenbean.sign", "[{\"bizType\":\"" + str + "\",\"signKey\":\"" + str4 + "\",\"source\":\"" + str2 + "\",\"version\":\"" + str3 + "\"}]");
    }

    public static String sync(String str) {
        return sync(BIZ_TYPE, SOURCE, VERSION, str);
    }

    public static String sync(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.goldenbean.sync", "[{\"bizType\":\"" + str + "\",\"source\":\"" + str2 + "\",\"syncTypeList\":[" + str4 + "],\"version\":\"" + str3 + "\"}]");
    }

    public static String manureExchange(int i) {
        return manureExchange(BIZ_TYPE, SOURCE, VERSION, i);
    }

    public static String manureExchange(String str, String str2, String str3, int i) {
        return ApplicationHook.requestString("com.alipay.goldenbean.manureExchange", "[{\"bizType\":\"" + str + "\",\"exchangeBeanAmount\":" + i + ",\"source\":\"" + str2 + "\",\"version\":\"" + str3 + "\"}]");
    }

    public static String minerIndex() {
        return ApplicationHook.requestString("com.alipay.goldenbean.miner.index", "[{\"bizType\":\"MASTER\",\"source\":\"ch_url-https://render.alipay.com/p/yuyan/180020010001291350/index.html\",\"version\":\"20260803.01\"}]");
    }

    public static String trigger(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.goldenbean.trigger", "[{\"bizType\":\"MASTER\",\"source\":\"babafarm\",\"taskId\":\"" + str + "\",\"triggerType\":\"" + str2 + "\",\"version\":\"20260803.01\"}]");
    }

    public static String indexFromHome() {
        return ApplicationHook.requestString("com.alipay.goldenbean.index", "[{\"bizType\":\"MASTER\",\"source\":\"ch_appcenter__chsub_commonapp\",\"version\":\"20260803.01\"}]");
    }

    public static String collect(String str) {
        return ApplicationHook.requestString("com.alipay.goldenbean.collect", "[{\"assetIds\":[\"" + str + "\"],\"bizType\":\"MASTER\",\"source\":\"babafarm\",\"version\":\"20260803.01\"}]");
    }

    public static String fortuneDraw() {
        return ApplicationHook.requestString("com.alipay.goldenbean.fortuneDraw", "[{\"bizType\":\"MASTER\",\"source\":\"babafarm\",\"taskId\":\"FORTUNE_DRAW\",\"version\":\"20260803.01\"}]");
    }

    public static String minerGrab(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.goldenbean.miner.grab", "[{\"bizType\":\"MASTER\",\"grabId\":\"" + UUID.randomUUID().toString() + "\",\"grabResult\":\"" + str + "\",\"itemId\":\"" + str2 + "\",\"source\":\"ch_url-https://render.alipay.com/p/yuyan/180020010001291350/index.html\",\"version\":\"20260803.01\"}]");
    }

    public static String finishTask(String str, String str2) {
        return finishTask(BIZ_TYPE, SOURCE, VERSION, str, str2);
    }

    public static String finishTask(String str, String str2, String str3, String str4, String str5) {
        return ApplicationHook.requestString("com.alipay.antieptask.finishTaskantorchard", "[{\"bizType\":\"" + str + "\",\"finishBusinessInfo\":{\"bizType\":\"" + str + "\"},\"outBizNo\":\"" + (UserIdMap.getCurrentUid() + System.currentTimeMillis()) + "\",\"sceneCode\":\"" + str4 + "\",\"source\":\"" + str2 + "\",\"taskType\":\"" + str5 + "\",\"version\":\"" + str3 + "\"}]");
    }

    public static String receiveTaskAward(String str, String str2) {
        return receiveTaskAward(BIZ_TYPE, SOURCE, VERSION, str, str2);
    }

    public static String receiveTaskAward(String str, String str2, String str3, String str4, String str5) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardantorchard", "[{\"bizInfo\":{\"bizType\":\"" + str + "\"},\"bizType\":\"" + str + "\",\"ignoreLimit\":true,\"sceneCode\":\"" + str4 + "\",\"source\":\"" + str2 + "\",\"taskType\":\"" + str5 + "\",\"version\":\"" + str3 + "\"}]");
    }

    public static String queryGameCenterList() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryGameList", "[{\"bizType\":\"GOLDENBEAN\",\"commonDegradeFilterRequest\":{\"deviceLevel\":\"high\",\"platform\":\"Android\",\"unityDeviceLevel\":\"high\"},\"recentAppRecordList\":[],\"requestType\":\"NORMAL\",\"sceneCode\":\"GOLDENBEAN\",\"source\":\"H5\",\"version\":\"20260803.01\"}]");
    }

    public static String drawGameCenterAward(int i) {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.drawGameCenterAward", "[{\"batchDrawCount\":" + i + ",\"bizType\":\"GOLDENBEAN\",\"requestType\":\"RPC\",\"sceneCode\":\"GOLDENBEAN\",\"source\":\"babafarm\",\"version\":\"20260803.01\"}]");
    }
}
