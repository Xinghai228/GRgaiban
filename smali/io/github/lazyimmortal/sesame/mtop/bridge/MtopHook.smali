.class public Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;
.super Ljava/lang/Object;
.source "MtopHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopHook"

.field private static volatile instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveInstance(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    const-string v0, "resolveInstance \u5931\u8d25: "

    .line 16
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;->instance:Ljava/lang/Object;

    if-eqz v1, :cond_0

    return-object v1

    .line 18
    :cond_0
    const-class v1, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;->instance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;->instance:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object p0

    .line 21
    :cond_1
    :try_start_1
    const-string v2, "com.alipay.mobile.framework.LauncherApplicationAgent"

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 23
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    const-string v2, "getMicroApplicationContext"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    const-string v2, "findServiceByInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "com.alipay.android.phone.mobilesdk.mtop.MtopService"

    aput-object v5, v4, v3

    invoke-static {p0, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 28
    sput-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_2
    const-string v2, "MtopHook"

    const-string v3, "MtopService \u4e3a null\uff08findServiceByInterface \u672a\u8fd4\u56de\uff09"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 34
    const-string v2, "MtopHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "MtopHook"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
