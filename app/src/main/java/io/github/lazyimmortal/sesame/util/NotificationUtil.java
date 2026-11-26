package io.github.lazyimmortal.sesame.util;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import io.github.lazyimmortal.sesame.data.RuntimeInfo;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class NotificationUtil {
    private static final String CHANNEL_ID = "io.github.lazyimmortal.sesame.ANTFOREST_NOTIFY_CHANNEL";
    private static final int NOTIFICATION_ID = 99;
    private static Notification.Builder builder = null;
    private static String contentText = "";
    private static Context context = null;
    private static volatile long lastNoticeTime = 0;
    private static NotificationManager mNotifyManager = null;
    private static String titleText = "";

    public static long getLastNoticeTime() {
        return lastNoticeTime;
    }

    public static void start(Context context2) {
        try {
            context = context2;
            stop();
            titleText = "启动中";
            contentText = "暂无消息";
            mNotifyManager = (NotificationManager) context2.getSystemService("notification");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("alipays://platformapi/startapp?appId="));
            PendingIntent activity = PendingIntent.getActivity(context2, 0, intent, 201326592);
            if (Build.VERSION.SDK_INT >= 26) {
                FileUtil$$ExternalSyntheticApiModelOutline0.m150m();
                NotificationChannel notificationChannelM = FileUtil$$ExternalSyntheticApiModelOutline0.m(CHANNEL_ID, "芝麻粒能量提醒", 2);
                notificationChannelM.enableLights(false);
                notificationChannelM.enableVibration(false);
                notificationChannelM.setShowBadge(false);
                mNotifyManager.createNotificationChannel(notificationChannelM);
                FileUtil$$ExternalSyntheticApiModelOutline0.m$1();
                builder = FileUtil$$ExternalSyntheticApiModelOutline0.m149m(context2, CHANNEL_ID);
            } else {
                builder = new Notification.Builder(context2).setPriority(-1);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setCategory("navigation");
            }
            builder.setSmallIcon(R.drawable.sym_def_app_icon).setLargeIcon(BitmapFactory.decodeResource(context2.getResources(), R.drawable.sym_def_app_icon)).setSubText("芝麻粒").setAutoCancel(false).setContentIntent(activity);
            if (BaseModel.getEnableOnGoing().getValue().booleanValue()) {
                builder.setOngoing(true);
            }
            Notification notificationBuild = builder.build();
            if (context2 instanceof Service) {
                if (Build.VERSION.SDK_INT >= 34) {
                    mNotifyManager.notify(NOTIFICATION_ID, notificationBuild);
                    return;
                } else {
                    ((Service) context2).startForeground(NOTIFICATION_ID, notificationBuild);
                    return;
                }
            }
            mNotifyManager.notify(NOTIFICATION_ID, notificationBuild);
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void stop() {
        NotificationManager notificationManager;
        try {
            Context context2 = context;
            if (context2 instanceof Service) {
                if (Build.VERSION.SDK_INT >= 26) {
                    ((Service) context).stopForeground(1);
                } else {
                    ((Service) context).stopForeground(true);
                }
            } else {
                NotificationManager notificationManager2 = mNotifyManager;
                if (notificationManager2 != null) {
                    notificationManager2.cancel(NOTIFICATION_ID);
                } else if (context2 != null && (notificationManager = (NotificationManager) context2.getSystemService("notification")) != null) {
                    notificationManager.cancel(NOTIFICATION_ID);
                }
            }
            mNotifyManager = null;
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void updateStatusText(String str) {
        try {
            Long l = RuntimeInfo.getInstance().getLong(RuntimeInfo.RuntimeInfoKey.ForestPauseTime);
            if (l.longValue() > System.currentTimeMillis()) {
                str = "触发异常，等待至" + TimeUtil.getCommonDate(l);
            }
            titleText = str;
            lastNoticeTime = System.currentTimeMillis();
            sendText();
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void updateNextExecText(long j) {
        String str;
        if (j > 0) {
            try {
                str = "下次执行 " + TimeUtil.getTimeStr(j);
            } catch (Exception e) {
                Log.printStackTrace(e);
                return;
            }
        } else {
            str = "";
        }
        titleText = str;
        sendText();
    }

    public static void updateLastExecText(String str) {
        try {
            contentText = "上次执行  " + TimeUtil.getTimeStr(System.currentTimeMillis()) + " " + str;
            lastNoticeTime = System.currentTimeMillis();
            sendText();
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void setStatusTextExec() {
        updateStatusText("执行中");
    }

    private static void sendText() {
        try {
            builder.setContentTitle(titleText);
            if (!StringUtil.isEmpty(contentText)) {
                builder.setContentText(contentText);
            }
            mNotifyManager.notify(NOTIFICATION_ID, builder.build());
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }
}
