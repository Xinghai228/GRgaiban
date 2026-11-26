.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;
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

    .line 206
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 210
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$102(Lio/github/lazyimmortal/sesame/entity/AlipayVersion;)Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    .line 213
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$200()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->init(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$200()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->init(Ljava/lang/ClassLoader;)V

    .line 219
    const-string v0, "2021005114632037"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->getAuthCode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 221
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 228
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$300(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 238
    :goto_2
    invoke-super {p0, p1}, Lde/robv/android/xposed/XC_MethodHook;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method
