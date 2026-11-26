.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$4;
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

    .line 428
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$4;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 431
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Service;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.alipay.dexaop.power.RuntimePowerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    const-string p1, "\u652f\u4ed8\u5b9d\u524d\u53f0\u670d\u52a1\u88ab\u9500\u6bc1"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 437
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1600(Ljava/lang/Boolean;)V

    .line 438
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->unload()V

    .line 439
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics;->unload()V

    .line 440
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->restartByBroadcast()V

    return-void
.end method
