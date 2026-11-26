.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "ApplicationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 295
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Service;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alipay.dexaop.power.RuntimePowerService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 302
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$902(Landroid/app/Service;)Landroid/app/Service;

    .line 306
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1000(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Landroid/content/Context;)V

    .line 308
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 310
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/LibraryUtil;->getLibSesamePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 311
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$902(Landroid/app/Service;)Landroid/app/Service;

    .line 312
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1102(Landroid/os/Handler;)Landroid/os/Handler;

    .line 313
    new-instance p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;)V

    const-string v0, "MAIN_TASK"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->newInstance(Ljava/lang/String;Ljava/lang/Runnable;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1202(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    .line 414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1502(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 415
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics;->load()Lio/github/lazyimmortal/sesame/util/Statistics;

    .line 416
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->load()Ljava/lang/Boolean;

    .line 417
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$502(Z)Z

    :cond_1
    return-void
.end method
