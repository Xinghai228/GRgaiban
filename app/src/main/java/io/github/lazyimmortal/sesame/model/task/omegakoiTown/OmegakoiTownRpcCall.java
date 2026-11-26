package io.github.lazyimmortal.sesame.model.task.omegakoiTown;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class OmegakoiTownRpcCall {
    private static final String version = "2.0";

    private static String getUuid() {
        StringBuilder sb = new StringBuilder();
        for (String str : UUID.randomUUID().toString().split("-")) {
            sb.append(str.substring(str.length() / 2));
        }
        return sb.toString();
    }

    public static String houseProduct() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.house.product", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\",\"shouldScoreReward\":true}]");
    }

    public static String houseBuild(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.house.build", "[{\"groundId\":\"" + str + "\",\"houseId\":\"" + str2 + "\",\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getUserScore() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.user.getUserScore", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getBalloonsReadyToCollect() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.balloon.getBalloonsReadyToCollect", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getUserQuests() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.scenario.getUserQuests", "[{\"disableQuests\":true,\"outBizNo\":\"" + UUID.randomUUID().toString() + "\",\"scenarioId\":\"shopNewestTips\"}]");
    }

    public static String completeQuest(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.scenario.completeQuest", "[{\"optionIndex\":0,\"outBizNo\":\"" + UUID.randomUUID().toString() + "\",\"questId\":\"" + str + "\",\"scenarioId\":\"" + str2 + "\",\"showType\":\"mayor\"}]");
    }

    public static String groundBuy(String str) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.ground.buy", "[{\"groundId\":\"" + str + "\",\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getCurrentBalloonsByTarget(String str) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.balloon.getCurrentBalloonsByTarget", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getUserTasks() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.task.getUserTasks", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String queryAppInfo(String str) {
        return ApplicationHook.requestString("alipay.mappconfig.queryAppInfo", "[{\"baseInfoReq\":{\"appIds\":[\"" + str + "\"],\"platform\":\"ANDROID\",\"pre\":false,\"width\":0},\"packInfoReq\":{\"bundleid\":\"com.alipay.alipaywallet\",\"channel\":\"offical\",\"client\":\"10.5.36.8100\",\"env\":\"production\",\"platform\":\"android\",\"protocol\":\"1.0\",\"query\":\"{\\\"" + str + "\\\":{\\\"app_id\\\":\\\"" + str + "\\\",\\\"version\\\":\\\"*\\\",\\\"isTarget\\\":\\\"YES\\\"}}\",\"reqmode\":\"async\",\"sdk\":\"1.3.0.0\",\"system\":\"10\"},\"reqType\":2}]");
    }

    public static String triggerTaskReward(String str) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.task.triggerTaskReward", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\",\"taskId\":\"" + str + "\"}]");
    }

    public static String getShareId() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.user.getShareId", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getFengdieData() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.user.getFengdieData", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getSignInStatus() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.signIn.getSignInStatus", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String signIn() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.signIn.signIn", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getProduct() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.shop.getProduct", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getUserGrounds() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.ground.getUserGrounds", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String getUserHouses() {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.house.getUserHouses", "[{\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String collect(String str, long j) {
        return ApplicationHook.requestString("com.alipay.omegakoi.town.v2.house.collect", "[{\"houseId\":\"" + str + "\",\"id\":" + j + ",\"outBizNo\":\"" + UUID.randomUUID().toString() + "\"}]");
    }

    public static String matchCrowd() {
        return ApplicationHook.requestString("com.alipay.omegakoi.common.user.matchCrowd", "[{\"crowdCodes\":[\"OUW7WQPH7\",\"OM9K933XZ\"],\"outBizNo\":\"60123460-b6ac-11ee-95b2-3be423343437\"}]");
    }
}
