.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;
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

.field final synthetic val$remoteClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;->val$remoteClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    const-string v0, "[Sesame] "

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5c0f\u7a0b\u5e8f\u5b50\u8fdb\u7a0battach["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    :try_start_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 488
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;->val$remoteClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$202(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 489
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1700(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 496
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method
