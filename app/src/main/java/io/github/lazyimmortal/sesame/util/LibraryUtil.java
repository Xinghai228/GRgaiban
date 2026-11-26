package io.github.lazyimmortal.sesame.util;

import android.content.Context;
import android.content.pm.PackageManager;
import io.github.lazyimmortal.sesame.BuildConfig;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class LibraryUtil {
    private static final String TAG = "LibraryUtil";

    private static native boolean libraryDoFarmTask(JSONObject jSONObject);

    public static String getLibSesamePath(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(BuildConfig.APPLICATION_ID, 0).nativeLibraryDir + "/" + System.mapLibraryName(FileUtil.CONFIG_DIRECTORY_NAME);
        } catch (PackageManager.NameNotFoundException unused) {
            ToastUtil.show(context, "请授予支付宝读取芝麻粒的权限");
            Log.record("请授予支付宝读取芝麻粒的权限");
            return null;
        }
    }

    public static Boolean loadLibrary(String str) {
        try {
            System.loadLibrary(str);
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public static Boolean doFarmTask(JSONObject jSONObject) {
        return Boolean.valueOf(libraryDoFarmTask(jSONObject));
    }

    public static Boolean doFarmDrawTimesTask(JSONObject jSONObject) {
        try {
            if (jSONObject == null) {
                return false;
            }
            String strOptString = jSONObject.optString("taskId", "");
            Log.record("执行抽奖任务: " + jSONObject.optString("title", "") + " (taskId: " + strOptString + ")");
            return true;
        } catch (Exception e) {
            Log.printStackTrace(TAG, e);
            return false;
        }
    }
}
