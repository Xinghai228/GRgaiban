.class public final Lio/github/lazyimmortal/sesame/data/ViewAppInfo;
.super Ljava/lang/Object;
.source "ViewAppInfo.java"


# static fields
.field private static appTitle:Ljava/lang/String; = ""

.field private static appVersion:Ljava/lang/String; = ""

.field private static context:Landroid/content/Context;

.field private static runType:Lio/github/lazyimmortal/sesame/data/RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRunType()Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 6

    .line 45
    const-string v0, "active"

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    if-eqz v1, :cond_0

    return-object v1

    .line 49
    :cond_0
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 50
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 53
    const-string v2, "content://me.weishu.exposed.CP/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 56
    :try_start_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 60
    :catch_0
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "me.weishu.exp.ACTION_ACTIVE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 61
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    sget-object v5, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    .line 68
    :try_start_3
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    .line 72
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0

    :cond_3
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0

    .line 77
    :cond_4
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0

    .line 64
    :catchall_0
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    .line 80
    :catchall_1
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0
.end method

.method public static getAppTitle()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getRunType()Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 1

    .line 27
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 31
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 32
    sput-object p0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    .line 33
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appTitle:Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 36
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appVersion:Ljava/lang/String;

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->appTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static isApkInDebug()Z
    .locals 2

    const/4 v0, 0x0

    .line 96
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 97
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static setRunType(Lio/github/lazyimmortal/sesame/data/RunType;)V
    .locals 0

    .line 26
    sput-object p0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-void
.end method

.method public static setRunTypeByCode(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/data/RunType;->getByCode(Ljava/lang/Integer;)Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    .line 88
    :cond_0
    sput-object p0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->runType:Lio/github/lazyimmortal/sesame/data/RunType;

    return-void
.end method
