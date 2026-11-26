package io.github.lazyimmortal.sesame.model.task.protectEcology;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class CooperateRpcCall {
    private static final String VERSION = "20230501";

    public static String queryUserCooperatePlantList() {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryUserCooperatePlantList", "[{}]");
    }

    public static String queryCooperatePlant(String str) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryCooperatePlant", "[{\"cooperationId\":\"" + str + "\"}]");
    }

    public static String cooperateWater(String str, String str2, int i) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.cooperateWater", "[{\"bizNo\":\"" + (str + "_" + str2 + "_" + System.currentTimeMillis()) + "\",\"cooperationId\":\"" + str2 + "\",\"energyCount\":" + i + "}]");
    }

    public static String queryCooperateRank(String str, String str2) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryCooperateRank", "[{\"bizType\":\"" + str + "\",\"cooperationId\":\"" + str2 + "\",\"source\":\"chInfo_ch_url-https://render.alipay.com/p/yuyan/180020010001247580/home.html\"}]");
    }
}
