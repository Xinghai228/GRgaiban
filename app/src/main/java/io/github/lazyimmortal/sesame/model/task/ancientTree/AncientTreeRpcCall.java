package io.github.lazyimmortal.sesame.model.task.ancientTree;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class AncientTreeRpcCall {
    private static final String VERSION = "20230522";

    public static String homePage(String str) {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.ancienttree.homePage", "[{\"cityCode\":\"330100\",\"selectCityCode\":\"" + str + "\",\"source\":\"antforesthome\"}]");
    }

    public static String queryTreeItemsForExchange(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeItemsForExchange", "[{\"cityCode\":\"" + str + "\",\"itemTypes\":\"\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"20230522\"}]");
    }

    public static String districtDetail(String str) {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.ancienttree.districtDetail", "[{\"districtCode\":\"" + str + "\",\"source\":\"antforesthome\"}]");
    }

    public static String projectDetail(String str, String str2) {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.ancienttree.projectDetail", "[{\"ancientTreeProjectId\":\"" + str + "\",\"channel\":\"ONLINE\",\"cityCode\":\"" + str2 + "\",\"source\":\"ancientreethome\"}]");
    }

    public static String protect(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.ancienttree.protect", "[{\"ancientTreeActivityId\":\"" + str + "\",\"ancientTreeProjectId\":\"" + str2 + "\",\"cityCode\":\"" + str3 + "\",\"source\":\"ancientreethome\"}]");
    }
}
