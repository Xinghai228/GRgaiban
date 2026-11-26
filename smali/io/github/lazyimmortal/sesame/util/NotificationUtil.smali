.class public Lio/github/lazyimmortal/sesame/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "io.github.lazyimmortal.sesame.ANTFOREST_NOTIFY_CHANNEL"

.field private static final NOTIFICATION_ID:I = 0x63

.field private static builder:Landroid/app/Notification$Builder; = null

.field private static contentText:Ljava/lang/String; = ""

.field private static context:Landroid/content/Context; = null

.field private static volatile lastNoticeTime:J = 0x0L

.field private static mNotifyManager:Landroid/app/NotificationManager; = null

.field private static titleText:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastNoticeTime()J
    .locals 2

    .line 21
    sget-wide v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->lastNoticeTime:J

    return-wide v0
.end method

.method private static sendText()V
    .locals 3

    .line 138
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->contentText:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->contentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setStatusTextExec()V
    .locals 1

    .line 133
    const-string v0, "\u6267\u884c\u4e2d"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 5

    .line 28
    const-string v0, "io.github.lazyimmortal.sesame.ANTFOREST_NOTIFY_CHANNEL"

    :try_start_0
    sput-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->context:Landroid/content/Context;

    .line 29
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->stop()V

    .line 30
    const-string v1, "\u542f\u52a8\u4e2d"

    sput-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->titleText:Ljava/lang/String;

    .line 31
    const-string v1, "\u6682\u65e0\u6d88\u606f"

    sput-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->contentText:Ljava/lang/String;

    .line 32
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v2, "alipays://platformapi/startapp?appId="

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    .line 35
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 38
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m()V

    const-string v2, "\u829d\u9ebb\u7c92\u80fd\u91cf\u63d0\u9192"

    const/4 v4, 0x2

    invoke-static {v0, v2, v4}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 40
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 41
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 42
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    .line 43
    sget-object v4, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 44
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m$1()V

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    .line 48
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 49
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    const-string v2, "navigation"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 51
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    const v2, 0x1080093

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "\u829d\u9ebb\u7c92"

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 57
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getEnableOnGoing()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 60
    :cond_2
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 61
    instance-of v1, p0, Landroid/app/Service;

    const/16 v2, 0x63

    if-eqz v1, :cond_4

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_3

    .line 63
    sget-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 65
    :cond_3
    check-cast p0, Landroid/app/Service;

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    .line 68
    :cond_4
    sget-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 71
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static stop()V
    .locals 3

    .line 77
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_1

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 79
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Service;I)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v1, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v2, 0x63

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 87
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 93
    sput-object v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->mNotifyManager:Landroid/app/NotificationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static updateLastExecText(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u4e0a\u6b21\u6267\u884c  "

    .line 124
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTimeStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->contentText:Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->lastNoticeTime:J

    .line 126
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->sendText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static updateNextExecText(J)V
    .locals 4

    const-string v0, "\u4e0b\u6b21\u6267\u884c "

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    .line 115
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sput-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->titleText:Ljava/lang/String;

    .line 116
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->sendText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 118
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static updateStatusText(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\u89e6\u53d1\u5f02\u5e38\uff0c\u7b49\u5f85\u81f3"

    .line 101
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getInstance()Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->ForestPauseTime:Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getLong(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    :cond_0
    sput-object p0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->titleText:Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->lastNoticeTime:J

    .line 107
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->sendText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
