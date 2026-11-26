package io.github.lazyimmortal.sesame.model.task.protectEcology;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProtectTreeRpcCall {
    private static final String VERSION = "20230501";
    private static final String VERSION2 = "20230522";

    public static String queryAreaTrees() {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryAreaTrees", "[{}]");
    }

    public static String queryTreeItemsForExchange() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeItemsForExchange", "[{}]");
    }

    public static String queryTreeItemsForExchange(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeItemsForExchange", "[{\"applyActions\":\"" + str + "\",\"itemTypes\":\"" + str2 + "\"}]");
    }

    public static String queryTreeForExchange(Object obj) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeForExchange", "[{\"projectId\":\"" + obj + "\"}]");
    }

    public static String exchangeTree(int i) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.exchangeTree", "[{\"projectId\":" + i + ",\"sToken\":\"" + System.currentTimeMillis() + "\"}]");
    }

    public static String applyGoldAnimalCert(int i) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.applyGoldAnimalCert", "[{\"projectId\":\"" + i + "\"}]");
    }

    public static String doRubickActivity(String str, String str2, JSONObject jSONObject) {
        return ApplicationHook.requestString("com.alipay.charityactivity.rubick.rpc.h5.doRubickActivity", "[{\"actionCode\":\"" + str + "\",\"activityId\":\"" + str2 + "\",\"paramMap\":" + jSONObject + ",\"source\":\"forest\"}]");
    }

    public static String pkQueryTreeMap(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.activity.doRubickActivity", "[{\"actionCode\":\"queryTreeMap\",\"activityId\":\"" + str + "\",\"source\":\"forest\"}]");
    }

    public static String pkSeason2Home(String str) {
        return doRubickActivity("pkSeason2Home", str, new JSONObject());
    }

    public static String pkSeason2Water(String str, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("donateNum", i);
            jSONObject.put("incrNum", i);
            return doRubickActivity("pkSeason2Water", str, jSONObject);
        } catch (Throwable unused) {
            return null;
        }
    }
}
