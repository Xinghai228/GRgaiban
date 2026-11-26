package io.github.lazyimmortal.sesame.model.task.consumeGold;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class ConsumeGoldRpcCall {
    private static String getRequestId() {
        StringBuilder sb = new StringBuilder();
        for (String str : UUID.randomUUID().toString().split("-")) {
            sb.append(str.substring(str.length() / 2));
        }
        return sb.toString().toUpperCase();
    }

    public static String taskV2Index(String str) {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.taskV2.index", "[{\"alipayAppVersion\":\"10.5.36.8100\",\"appClient\":\"Android\",\"appSource\":\"consumeGold\",\"cacheMap\":{},\"clientTraceId\":\"" + UUID.randomUUID().toString() + "\",\"clientVersion\":\"6.3.0\",\"favoriteStatus\":\"LowVersion\",\"taskSceneCode\":\"" + str + "\",\"userType\":\"new\"}]");
    }

    public static String consumeGoldIndex() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.index", "[{\"appSource\":\"consumeGold\",\"cacheMap\":{},\"clientTraceId\":\"" + UUID.randomUUID().toString() + "\",\"clientVersion\":\"6.3.0\",\"favoriteStatus\":\"LowVersion\"}]");
    }

    public static String signinCalendar() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.task.signin.calendar", "[{}]");
    }

    public static String openBoxAward() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.task.openBoxAward", "[{\"actionAwardDetails\":[{\"actionType\":\"date_sign_start\"}],\"bizType\":\"CONSUME_GOLD\",\"boxType\":\"CONSUME_GOLD_SIGN_DATE\",\"clientVersion\":\"6.3.0\",\"timeScaleType\":0,\"userType\":\"new\"}]");
    }

    public static String taskV2TriggerSignUp(String str) {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.taskV2.trigger", "[{\"taskId\":\"" + str + "\",\"triggerAction\":\"SIGN_UP\"}]");
    }

    public static String taskV2TriggerSend(String str) {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.taskV2.trigger", "[{\"taskId\":\"" + str + "\",\"triggerAction\":\"SEND\"}]");
    }

    public static String taskV2TriggerReceive(String str) {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.taskV2.trigger", "[{\"taskId\":\"" + str + "\",\"triggerAction\":\"RECEIVE\"}]");
    }

    public static String promoTrigger() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.index.promo.trigger", "[{\"appSource\":\"consumeGold\",\"cacheMap\":{},\"clientTraceId\":\"" + UUID.randomUUID().toString() + "\",\"clientVersion\":\"6.3.0\",\"favoriteStatus\":\"UnFavorite\",\"requestId\":\"" + getRequestId() + "\"}]");
    }

    public static String advertisement(String str) {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.send.promo.advertisement", "[{\"appSource\":\"consumeGold\",\"cacheMap\":{},\"clientTraceId\":\"" + UUID.randomUUID().toString() + "\",\"clientVersion\":\"6.3.0\",\"favoriteStatus\":\"UnFavorite\",\"outBizNo\":\"" + str + "\",\"type\":\"HOME_PROMO_ADVERTISEMENT\",\"userType\":\"new\"}]");
    }
}
