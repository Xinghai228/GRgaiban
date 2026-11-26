package io.github.lazyimmortal.sesame.data;

import android.app.Application;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonMappingException;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class AppConfig {
    private static final File APP_CONFIG_DIRECTORY_FILE = getExternalFilesDir();
    public static final AppConfig INSTANCE = new AppConfig();
    private static final String TAG = "AppConfig";

    @JsonIgnore
    private boolean init;
    private Boolean newUI = true;
    private Boolean languageSimplifiedChinese = true;

    protected boolean canEqual(Object obj) {
        return obj instanceof AppConfig;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AppConfig)) {
            return false;
        }
        AppConfig appConfig = (AppConfig) obj;
        if (!appConfig.canEqual(this) || isInit() != appConfig.isInit()) {
            return false;
        }
        Boolean newUI = getNewUI();
        Boolean newUI2 = appConfig.getNewUI();
        if (newUI != null ? !newUI.equals(newUI2) : newUI2 != null) {
            return false;
        }
        Boolean languageSimplifiedChinese = getLanguageSimplifiedChinese();
        Boolean languageSimplifiedChinese2 = appConfig.getLanguageSimplifiedChinese();
        return languageSimplifiedChinese != null ? languageSimplifiedChinese.equals(languageSimplifiedChinese2) : languageSimplifiedChinese2 == null;
    }

    public int hashCode() {
        int i = isInit() ? 79 : 97;
        Boolean newUI = getNewUI();
        int iHashCode = ((i + 59) * 59) + (newUI == null ? 43 : newUI.hashCode());
        Boolean languageSimplifiedChinese = getLanguageSimplifiedChinese();
        return (iHashCode * 59) + (languageSimplifiedChinese != null ? languageSimplifiedChinese.hashCode() : 43);
    }

    @JsonIgnore
    public void setInit(boolean z) {
        this.init = z;
    }

    public void setLanguageSimplifiedChinese(Boolean bool) {
        this.languageSimplifiedChinese = bool;
    }

    public void setNewUI(Boolean bool) {
        this.newUI = bool;
    }

    public String toString() {
        return "AppConfig(init=" + isInit() + ", newUI=" + getNewUI() + ", languageSimplifiedChinese=" + getLanguageSimplifiedChinese() + ")";
    }

    public boolean isInit() {
        return this.init;
    }

    public Boolean getNewUI() {
        return this.newUI;
    }

    public Boolean getLanguageSimplifiedChinese() {
        return this.languageSimplifiedChinese;
    }

    private static File getExternalFilesDir() {
        try {
            Application application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (application != null) {
                return application.getExternalFilesDir("Sesame");
            }
        } catch (Exception e) {
            Log.printStackTrace(TAG, e);
        }
        return null;
    }

    public static Boolean save() {
        return Boolean.valueOf(FileUtil.write2File(toSaveStr(), new File(APP_CONFIG_DIRECTORY_FILE, "appConfig.json")));
    }

    public static synchronized AppConfig load() {
        AppConfig appConfig;
        File file = new File(APP_CONFIG_DIRECTORY_FILE, "appConfig.json");
        try {
            if (file.exists()) {
                Log.i("加载APP配置");
                String fromFile = FileUtil.readFromFile(file);
                JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(fromFile);
                String saveStr = toSaveStr();
                if (saveStr != null && !saveStr.equals(fromFile)) {
                    String str = TAG;
                    Log.i(str, "格式化APP配置");
                    Log.system(str, "格式化APP配置");
                    FileUtil.write2File(saveStr, file);
                }
            } else {
                unload();
                String str2 = TAG;
                Log.i(str2, "初始APP配置");
                Log.system(str2, "初始APP配置");
                FileUtil.write2File(toSaveStr(), file);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.printStackTrace(str3, th);
            Log.i(str3, "重置APP配置");
            Log.system(str3, "重置APP配置");
            try {
                unload();
                FileUtil.write2File(toSaveStr(), file);
            } catch (Exception unused) {
                Log.printStackTrace(TAG, th);
            }
        }
        appConfig = INSTANCE;
        appConfig.setInit(true);
        return appConfig;
    }

    public static synchronized void unload() {
        try {
            JsonUtil.copyMapper().updateValue(INSTANCE, new AppConfig());
        } catch (JsonMappingException e) {
            Log.printStackTrace(TAG, e);
        }
    }

    public static String toSaveStr() {
        return JsonUtil.toFormatJsonString(INSTANCE);
    }
}
