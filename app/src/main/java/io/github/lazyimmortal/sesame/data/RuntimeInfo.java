package io.github.lazyimmortal.sesame.data;

import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class RuntimeInfo {
    private static final String TAG = "RuntimeInfo";
    private static RuntimeInfo instance;
    private JSONObject joAll;
    private JSONObject joCurrent;
    private final String userId;

    public enum RuntimeInfoKey {
        ForestPauseTime
    }

    public static RuntimeInfo getInstance() {
        RuntimeInfo runtimeInfo = instance;
        if (runtimeInfo == null || !Objects.equals(runtimeInfo.userId, UserIdMap.getCurrentUid())) {
            instance = new RuntimeInfo();
        }
        return instance;
    }

    private RuntimeInfo() {
        String currentUid = UserIdMap.getCurrentUid();
        this.userId = currentUid;
        try {
            this.joAll = new JSONObject(FileUtil.readFromFile(FileUtil.runtimeInfoFile(currentUid)));
        } catch (Exception unused) {
            this.joAll = new JSONObject();
        }
        try {
            if (!this.joAll.has(this.userId)) {
                this.joAll.put(this.userId, new JSONObject());
            }
        } catch (Exception unused2) {
        }
        try {
            this.joCurrent = this.joAll.getJSONObject(this.userId);
        } catch (Exception unused3) {
            this.joCurrent = new JSONObject();
        }
    }

    public void save() {
        FileUtil.write2File(this.joAll.toString(), FileUtil.runtimeInfoFile(this.userId));
    }

    public Object get(RuntimeInfoKey runtimeInfoKey) throws JSONException {
        return this.joCurrent.opt(runtimeInfoKey.name());
    }

    public String getString(String str) {
        return this.joCurrent.optString(str);
    }

    public Long getLong(String str, long j) {
        return Long.valueOf(this.joCurrent.optLong(str, j));
    }

    public boolean getBool(String str, boolean z) {
        return this.joCurrent.optBoolean(str, z);
    }

    public String getString(RuntimeInfoKey runtimeInfoKey) {
        return this.joCurrent.optString(runtimeInfoKey.name());
    }

    public Long getLong(RuntimeInfoKey runtimeInfoKey) {
        return Long.valueOf(this.joCurrent.optLong(runtimeInfoKey.name(), 0L));
    }

    public void put(RuntimeInfoKey runtimeInfoKey, Object obj) {
        put(runtimeInfoKey.name(), obj);
    }

    public void put(String str, Object obj) {
        try {
            this.joCurrent.put(str, obj);
            this.joAll.put(this.userId, this.joCurrent);
        } catch (JSONException e) {
            String str2 = TAG;
            Log.i(str2, "put err:");
            Log.printStackTrace(str2, e);
        }
        save();
    }
}
