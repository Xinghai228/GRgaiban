package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class EcoLifeRpcCall {
    public static String queryHomePage() {
        return ApplicationHook.requestString("alipay.ecolife.rpc.h5.queryHomePage", "[{\"channel\":\"ALIPAY\",\"source\":\"search_brandbox\"}]");
    }

    public static String openEcolife() {
        return ApplicationHook.requestString("alipay.ecolife.rpc.h5.openEcolife", "[{\"channel\":\"ALIPAY\",\"source\":\"renwuGD\"}]");
    }

    public static String tick(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.ecolife.rpc.h5.tick", "[{\"actionId\":\"" + str + "\",\"channel\":\"ALIPAY\",\"dayPoint\":\"" + str2 + "\",\"generateEnergy\":false,\"source\":\"" + str3 + "\"}]");
    }

    public static String queryDish(String str, String str2) {
        return ApplicationHook.requestString("alipay.ecolife.rpc.h5.queryDish", "[{\"channel\":\"ALIPAY\",\"dayPoint\":\"" + str2 + "\",\"source\":\"" + str + "\"}]");
    }

    public static String uploadDishImage(String str, String str2, double d, double d2, double d3, String str3) {
        return ApplicationHook.requestString("alipay.ecolife.rpc.h5.uploadDishImage", "[{\"channel\":\"ALIPAY\",\"dayPoint\":\"" + str3 + "\",\"source\":\"photo-comparison\",\"uploadParamMap\":{\"AIResult\":[{\"conf\":" + d + ",\"kvPair\":false,\"label\":\"other\",\"pos\":[1.0002995,0.22104378,0.0011976048,0.77727276],\"value\":\"\"},{\"conf\":" + d2 + ",\"kvPair\":false,\"label\":\"guangpan\",\"pos\":[1.0002995,0.22104378,0.0011976048,0.77727276],\"value\":\"\"},{\"conf\":" + d3 + ",\"kvPair\":false,\"label\":\"feiguangpan\",\"pos\":[1.0002995,0.22104378,0.0011976048,0.77727276],\"value\":\"\"}],\"existAIResult\":true,\"imageId\":\"" + str2 + "\",\"imageUrl\":\"https://mdn.alipayobjects.com/afts/img/" + str2 + "/original?bz=APM_20000067\",\"operateType\":\"" + str + "\"}}]");
    }

    public static String uploadBeforeMealsDishImage(String str, String str2) {
        return uploadDishImage("BEFORE_MEALS", str, 0.16571736d, 0.07448776d, 0.7597949d, str2);
    }

    public static String uploadAfterMealsDishImage(String str, String str2) {
        return uploadDishImage("AFTER_MEALS", str, 4.0030346E-4d, 0.99891376d, 6.858421E-4d, str2);
    }
}
