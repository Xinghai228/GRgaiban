package io.github.lazyimmortal.sesame.util;

import android.app.AlarmManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class PermissionUtil {
    private static final int REQUEST_EXTERNAL_STORAGE = 1;
    private static final String TAG = "AntForestRpcCall";
    private static final String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    public static Boolean checkOrRequestAllPermissions(AppCompatActivity appCompatActivity) {
        return Boolean.valueOf(checkOrRequestFilePermissions(appCompatActivity).booleanValue() && checkOrRequestAlarmPermissions(appCompatActivity).booleanValue());
    }

    public static boolean checkFilePermissions(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        if (Build.VERSION.SDK_INT >= 23) {
            for (String str : PERMISSIONS_STORAGE) {
                if (context.checkSelfPermission(str) != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public static Boolean checkOrRequestFilePermissions(AppCompatActivity appCompatActivity) {
        try {
            if (checkFilePermissions(appCompatActivity)) {
                return true;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setFlags(536870912);
                intent.setData(Uri.parse("package:" + appCompatActivity.getPackageName()));
                try {
                    appCompatActivity.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Intent intent2 = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                    intent2.setFlags(536870912);
                    appCompatActivity.startActivity(intent2);
                }
            } else if (Build.VERSION.SDK_INT >= 23) {
                appCompatActivity.requestPermissions(PERMISSIONS_STORAGE, 1);
            }
        } catch (Exception e) {
            Log.printStackTrace(TAG, e);
        }
        return false;
    }

    public static boolean checkAlarmPermissions() {
        Context context;
        AlarmManager alarmManager;
        try {
            if (!ApplicationHook.isHooked() || (context = ApplicationHook.getContext()) == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 31 || (alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)) == null) {
                return true;
            }
            return alarmManager.canScheduleExactAlarms();
        } catch (Exception unused) {
            return false;
        }
    }

    public static Boolean checkOrRequestAlarmPermissions(Context context) {
        try {
            if (checkAlarmPermissions()) {
                return true;
            }
            if (Build.VERSION.SDK_INT >= 31) {
                Intent intent = new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM");
                intent.setFlags(536870912);
                intent.setFlags(268435456);
                intent.setData(Uri.parse("package:com.eg.android.AlipayGphone"));
                try {
                    context.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Intent intent2 = new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM");
                    intent2.setFlags(536870912);
                    intent2.setFlags(268435456);
                    context.startActivity(intent2);
                }
            }
        } catch (Exception e) {
            Log.printStackTrace(TAG, e);
        }
        return false;
    }

    public static boolean checkBatteryPermissions() {
        Context context;
        PowerManager powerManager;
        try {
            if (!ApplicationHook.isHooked() || (context = ApplicationHook.getContext()) == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 23 || (powerManager = (PowerManager) context.getSystemService("power")) == null) {
                return true;
            }
            return powerManager.isIgnoringBatteryOptimizations(ClassUtil.PACKAGE_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    public static Boolean checkOrRequestBatteryPermissions(Context context) {
        try {
            if (checkBatteryPermissions()) {
                return true;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                intent.setFlags(536870912);
                intent.setFlags(268435456);
                intent.setData(Uri.parse("package:com.eg.android.AlipayGphone"));
                try {
                    context.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Intent intent2 = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                    intent2.setFlags(536870912);
                    intent2.setFlags(268435456);
                    context.startActivity(intent2);
                }
            }
        } catch (Exception e) {
            Log.printStackTrace(TAG, e);
        }
        return false;
    }
}
