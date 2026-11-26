package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AreaCode extends IdAndName {
    private static final String TAG = "AreaCode";
    private static List<AreaCode> list;

    public AreaCode(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AreaCode> getList() {
        JSONArray jSONArray;
        if (list == null) {
            try {
                jSONArray = new JSONArray(FileUtil.readFromFile(FileUtil.getCityCodeFile()));
            } catch (Throwable unused) {
                try {
                    jSONArray = new JSONArray("[{\"cityCode\":\"320100\",\"cityName\":\"南京市\"},{\"cityCode\":\"330100\",\"cityName\":\"杭州市\"},{\"cityCode\":\"350100\",\"cityName\":\"福州市\"},{\"cityCode\":\"370100\",\"cityName\":\"济南市\"},{\"cityCode\":\"430100\",\"cityName\":\"长沙市\"},{\"cityCode\":\"440100\",\"cityName\":\"广州市\"}]");
                } catch (JSONException unused2) {
                    jSONArray = new JSONArray();
                }
            }
            list = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    list.add(new AreaCode(jSONObject.getString("cityCode"), jSONObject.getString("cityName")));
                } catch (Throwable th) {
                    Log.printStackTrace(TAG, th);
                }
            }
        }
        return list;
    }
}
