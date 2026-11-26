package io.github.lazyimmortal.sesame.data;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class ViewAppInfo {
    private static String appTitle = "";
    private static String appVersion = "";
    private static Context context;
    private static RunType runType = RunType.DISABLE;

    public static Context getContext() {
        return context;
    }

    public static String getAppTitle() {
        return appTitle;
    }

    public static String getAppVersion() {
        return appVersion;
    }

    public static void setRunType(RunType runType2) {
        runType = runType2;
    }

    public static RunType getRunType() {
        return runType;
    }

    public static void init(Context context2) {
        if (context == null) {
            context = context2;
            appTitle = context2.getString(R.string.app_name);
            try {
                appVersion = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionName;
                appTitle += " " + appVersion;
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
        }
    }

    public static RunType checkRunType() {
        Bundle bundleCall;
        RunType runType2 = runType;
        if (runType2 != null) {
            return runType2;
        }
        try {
            Context context2 = context;
            if (context2 == null) {
                RunType runType3 = RunType.DISABLE;
                runType = runType3;
                return runType3;
            }
            ContentResolver contentResolver = context2.getContentResolver();
            Uri uri = Uri.parse("content://me.weishu.exposed.CP/");
            try {
                try {
                    bundleCall = contentResolver.call(uri, "active", (String) null, (Bundle) null);
                } catch (Throwable unused) {
                    RunType runType4 = RunType.DISABLE;
                    runType = runType4;
                    return runType4;
                }
            } catch (RuntimeException unused2) {
                Intent intent = new Intent("me.weishu.exp.ACTION_ACTIVE");
                intent.addFlags(268435456);
                context.startActivity(intent);
                bundleCall = null;
            }
            if (bundleCall == null) {
                bundleCall = contentResolver.call(uri, "active", (String) null, (Bundle) null);
            }
            if (bundleCall == null) {
                RunType runType5 = RunType.DISABLE;
                runType = runType5;
                return runType5;
            }
            if (bundleCall.getBoolean("active", false)) {
                RunType runType6 = RunType.MODEL;
                runType = runType6;
                return runType6;
            }
            RunType runType7 = RunType.DISABLE;
            runType = runType7;
            return runType7;
        } catch (Throwable unused3) {
            RunType runType8 = RunType.DISABLE;
            runType = runType8;
            return runType8;
        }
    }

    public static void setRunTypeByCode(Integer num) {
        RunType byCode = RunType.getByCode(num);
        if (byCode == null) {
            byCode = RunType.DISABLE;
        }
        runType = byCode;
    }

    public static boolean isApkInDebug() {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
