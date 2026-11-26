package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.model.task.antSports.AntSportsRpcCall;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.idMap.PathThemeMapListMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class WalkPath extends IdAndName {
    private static List<WalkPath> list;

    public WalkPath(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<WalkPath> getList() {
        list = new ArrayList();
        for (Map.Entry<String, String> entry : PathThemeMapListMap.getMap().entrySet()) {
            list.add(new WalkPath(entry.getKey(), entry.getValue()));
        }
        return list;
    }

    public static List<WalkPath> getThemeListFromRpc() {
        JSONArray jSONArrayOptJSONArray;
        list = new ArrayList();
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(AntSportsRpcCall.queryThemeList()).optJSONObject("data");
            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("themeList")) != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject2.optString("themeId");
                    String strOptString2 = jSONObjectOptJSONObject2.optString("themeName");
                    if (strOptString != null && !strOptString.isEmpty() && strOptString2 != null && !strOptString2.isEmpty()) {
                        list.add(new WalkPath(strOptString, strOptString2));
                    }
                }
            }
        } catch (Throwable th) {
            Log.i("WalkPath", "获取主题列表失败:");
            Log.printStackTrace("WalkPath", th);
        }
        return list;
    }

    public static void remove(String str) {
        getList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).id.equals(str)) {
                list.remove(i);
                return;
            }
        }
    }
}
