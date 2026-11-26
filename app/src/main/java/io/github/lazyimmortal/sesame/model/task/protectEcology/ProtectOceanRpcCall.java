package io.github.lazyimmortal.sesame.model.task.protectEcology;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class ProtectOceanRpcCall {
    private static String getUniqueId() {
        return String.valueOf(System.currentTimeMillis()) + RandomUtil.nextLong();
    }

    public static String queryCultivationList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryCultivationList", "[{\"source\":\"ANT_FOREST\"}]");
    }

    public static String queryCultivationDetail(String str, String str2) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryCultivationDetail", "[{\"cultivationCode\":\"" + str + "\",\"projectCode\":\"" + str2 + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String oceanExchangeTree(String str, String str2) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.exchangeTree", "[{\"cultivationCode\":\"" + str + "\",\"projectCode\":\"" + str2 + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }
}
