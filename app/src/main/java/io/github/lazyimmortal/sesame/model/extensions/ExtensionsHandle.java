package io.github.lazyimmortal.sesame.model.extensions;

import io.github.lazyimmortal.sesame.data.TokenConfig;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.task.antSports.AntSportsRpcCall;
import io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectTreeRpcCall;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.PathThemeMapListMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ExtensionsHandle {
    private static final String TAG = "ExtensionsHandle";

    public static void handleRequest(String str, String str2, Object obj) {
        if (handleAlphaRequest(str, str2, obj) != null) {
        }
        str.hashCode();
        switch (str) {
            case "setCustomWalkPathIdList":
                addCustomWalkPathIdList((String) obj);
                break;
            case "setCustomWalkPathIdQueue":
                if ("addCustomWalkPathIdQueue".equals(str2)) {
                    addCustomWalkPathIdQueue((String) obj);
                    break;
                } else {
                    if ("clearCustomWalkPathIdQueue".equals(str2)) {
                        clearCustomWalkPathIdQueue();
                    }
                    break;
                }
                break;
            case "antForest":
                if ("getWateredItems".equals(str2)) {
                    getWateredItems();
                    break;
                } else {
                    if ("getWateringItems".equals(str2)) {
                        getWateringItems();
                    } else if ("getTreeItems".equals(str2)) {
                        getTreeItems();
                    } else if ("getNewTreeItems".equals(str2)) {
                        getNewTreeItems();
                    } else if ("queryAreaTrees".equals(str2)) {
                        queryAreaTrees();
                    } else if ("getUnlockTreeItems".equals(str2)) {
                        getUnlockTreeItems();
                    } else if ("fillWateredFriendList".equals(str2)) {
                        fillWateredFriendList();
                    }
                    break;
                }
                break;
        }
    }

    public static Object handleAlphaRequest(String str, String str2, Object obj) {
        try {
            return Class.forName("io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandleAlpha").getMethod("handleAlphaRequest", String.class, String.class, Object.class).invoke(null, str, str2, obj);
        } catch (Exception unused) {
            return null;
        }
    }

    private static void getWateredItems() {
        Status.getWateredFriendToday();
    }

    private static void getWateringItems() {
        Status.getWateringFriendToday();
    }

    private static void fillWateredFriendList() {
        Status.fillWateredFriendList();
    }

    private static void getNewTreeItems() {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeItemsForExchange("COMING", "project"));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("treeItems");
                if (jSONArray.length() == 0) {
                    Log.forest("新树上苗🌱[当前没有新树上苗信息!]");
                    return;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("projectType") && "TREE".equals(jSONObject2.getString("projectType")) && "COMING".equals(jSONObject2.getString("applyAction"))) {
                        queryTreeForExchange(jSONObject2.getString("itemId"));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getTreeItems err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void queryTreeForExchange(String str) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeForExchange(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("exchangeableTree");
                int i = jSONObject2.getInt("currentBudget");
                String string = jSONObject2.getString("region");
                String string2 = jSONObject2.getString("treeName");
                String str2 = "不可合种";
                if (jSONObject2.optBoolean("canCoexchange", false)) {
                    str2 = "可以合种-合种类型：" + jSONObject2.getJSONObject("extendInfo").getString("cooperate_template_id_list");
                }
                Log.forest("新树上苗🌱[" + string + "-" + string2 + "]#" + i + "株-" + str2);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryTreeForExchange err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void getTreeItems() {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeItemsForExchange("AVAILABLE,ENERGY_LACK", "project"));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("treeItems");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("projectType")) {
                        getTreeCurrentBudget(jSONObject2.getString("itemId"), jSONObject2.getString("itemName"));
                        TimeUtil.sleep(100L);
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getTreeItems err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void getTreeCurrentBudget(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeForExchange(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("exchangeableTree");
                int i = jSONObject2.getInt("currentBudget");
                Log.forest("树苗查询🌱[" + jSONObject2.getString("region") + "-" + str2 + "]#剩余:" + i);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryTreeForExchange err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void queryAreaTrees() {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryAreaTrees());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("areaTrees");
                JSONObject jSONObject3 = jSONObject.getJSONObject("regionConfig");
                Iterator<String> itKeys = jSONObject3.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject2.has(next)) {
                        Log.forest("未解锁地区🗺️[" + jSONObject3.getJSONObject(next).optString("regionName") + "]");
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryAreaTrees err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void getUnlockTreeItems() {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeItemsForExchange("", "project"));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("treeItems");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("projectType") && jSONObject2.optInt("certCountForAlias", -1) == 0) {
                        String strOptString = jSONObject2.optString("itemName");
                        Log.forest("未解锁项目🐘[" + jSONObject2.optString("region") + "-" + strOptString + "]#" + jSONObject2.optString("organization"));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getUnlockTreeItems err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void addCustomWalkPathIdList(String str) {
        if (StringUtil.isEmpty(str)) {
            return;
        }
        String strQueryPathName = AntSportsRpcCall.queryPathName(str);
        if (strQueryPathName == null) {
            Toast.show("添加自定义路线列表失败:找不到路线信息");
            return;
        }
        PathThemeMapListMap.load();
        PathThemeMapListMap.add(str, strQueryPathName);
        PathThemeMapListMap.save();
        Toast.show("添加自定义路线列表成功:" + strQueryPathName);
    }

    private static void addCustomWalkPathIdQueue(String str) {
        if (StringUtil.isEmpty(str)) {
            return;
        }
        String strQueryPathName = AntSportsRpcCall.queryPathName(str);
        if (strQueryPathName == null) {
            Toast.show("添加待行走路线队列失败:找不到路线信息");
        } else if (TokenConfig.addCustomWalkPathIdQueue(str).booleanValue()) {
            Toast.show("添加待行走路线队列成功:" + strQueryPathName);
        }
    }

    private static void clearCustomWalkPathIdQueue() {
        if (TokenConfig.clearCustomWalkPathIdQueue().booleanValue()) {
            Toast.show("清除待行走路线队列成功");
        }
    }
}
