.class public Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;
.super Ljava/lang/Object;
.source "AuthCodeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Oauth2AuthCodeHelper"

.field private static classLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Utility class cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAuthCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "https://"

    const/4 v1, 0x0

    .line 35
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->classLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    .line 36
    const-string p0, "Oauth2AuthCodeHelper \u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528 init \u65b9\u6cd5"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    return-object v1

    .line 40
    :cond_0
    const-string v3, "com.alibaba.ariver.rpc.biz.proxy.Oauth2AuthCodeServiceImpl"

    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 44
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    const-string v4, "com.alibaba.ariver.permission.openauth.model.request.AuthSkipRequestModel"

    sget-object v5, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 51
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    const-string v5, "setAppId"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p0, v7, v3

    invoke-static {v4, v5, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v5, "setCurrentPageUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".hybrid.alipay-eco.com/index.html"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v4, v5, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "setFromSystem"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "mobilegw_android"

    aput-object v7, v5, v3

    invoke-static {v4, v0, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "setScopeNicks"

    const-string v5, "auth_base"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v4, v0, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "setState"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "QnJpbmcgc21hbGwgYW5kIGJlYXV0aWZ1bCBjaGFuZ2VzIHRvIHRoZSB3b3JsZA=="

    aput-object v7, v5, v3

    invoke-static {v4, v0, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "setIsvAppId"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v5, v3

    invoke-static {v4, v0, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "setExtInfo"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v4, v0, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v5, "channel"

    const-string v7, "tinyapp"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "clientAppId"

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p0, "setAppExtInfo"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v4, p0, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string p0, "getAuthSkipResult"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "AP"

    aput-object v5, v0, v3

    aput-object v1, v0, v6

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v2, p0, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 90
    const-string v0, "getAuthExecuteResult"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 93
    const-string v0, "getAuthCode"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 95
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    :catchall_0
    :cond_1
    return-object v1
.end method

.method public static init(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 21
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->classLoader:Ljava/lang/ClassLoader;

    .line 23
    const-string p0, "Oauth2AuthCodeHelper \u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method
