package io.github.lazyimmortal.sesame.model.extensions;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class TestRpcCall {
    private static final String VERSION = "20240704";

    public static String queryEnvironmentCertDetailList(String str, int i, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryEnvironmentCertDetailList", "[{\"alias\":\"" + str + "\",\"certId\":\"\",\"pageNum\":" + i + ",\"shareId\":\"\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"targetUserID\":\"" + str2 + "\",\"version\":\"20230701\"}]");
    }

    public static String sendTree(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.sendTree", "[{\"blessWords\":\"梭梭没有叶子，四季常青，从不掉发，祝你发量如梭。\",\"certificateId\":\"" + str + "\",\"friendUserId\":\"" + str2 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryTreeItemsForExchange(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeItemsForExchange", "[{\"applyActions\":\"" + str + "\",\"itemTypes\":\"\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"20240704\"}]");
    }

    public static String queryTreeForExchange(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeForExchange", "[{\"projectId\":\"" + str + "\",\"version\":\"20240704\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryAreaTrees() {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryAreaTrees", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"userId\":\"\",\"version\":\"20221215\"}]");
    }
}
