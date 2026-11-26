.class public Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;
.super Ljava/lang/Object;
.source "MtopCaller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopCaller"

.field private static volatile jsonClsCache:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile methodEnumClsCache:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile parseObjectMethodCache:Ljava/lang/reflect/Method;

.field private static volatile putCache:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    .line 33
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x3a98

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 44
    const-string v3, ""

    const-string v4, "MtopCaller"

    .line 0
    const-string v5, "call \u8fd4\u56de null\uff0capi="

    const-string v6, "call \u5931\u8d25\uff1aJSONObject.put \u4e0d\u53ef\u7528\uff0capi="

    const-string v7, "call \u5931\u8d25\uff1afastjson JSONObject \u4e0d\u53ef\u7528\uff0capi="

    const-string v8, "call \u5931\u8d25\uff1aMtopService \u4e3a null\uff0capi="

    .line 44
    invoke-static/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->enterIntervalLimit(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 47
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopHook;->resolveInstance(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 53
    :cond_0
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->ensureJsonCls(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 58
    :cond_1
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->ensurePut(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-nez v7, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_2
    const/4 v6, 0x0

    .line 64
    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    .line 65
    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "apiName"

    aput-object v14, v13, v6

    const/4 v14, 0x1

    aput-object v1, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "apiVersion"

    aput-object v15, v13, v6

    const-string v15, "1.0"

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "dataText"

    aput-object v15, v13, v6

    aput-object p2, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, p4

    .line 68
    invoke-static {v0, v13}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->resolveMethodEnum(Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v13

    new-array v15, v12, [Ljava/lang/Object;

    const-string v16, "usePost"

    aput-object v16, v15, v6

    aput-object v13, v15, v14

    invoke-virtual {v7, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "type"

    aput-object v15, v13, v6

    const-string v15, "originaljson"

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p6, :cond_3

    move/from16 v13, p6

    goto :goto_0

    :cond_3
    const/16 v13, 0x3a98

    .line 70
    :goto_0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v15, v12, [Ljava/lang/Object;

    const-string v16, "timeout"

    aput-object v16, v15, v6

    aput-object v13, v15, v14

    invoke-virtual {v7, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "needHttps"

    aput-object v15, v13, v6

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "needSpdy"

    aput-object v15, v13, v6

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_4

    .line 73
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    new-array v15, v12, [Ljava/lang/Object;

    const-string v16, "needWua"

    aput-object v16, v15, v6

    aput-object v13, v15, v14

    invoke-virtual {v7, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "needEcodeSign"

    aput-object v15, v13, v6

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "shouldSkipAutoLogin"

    aput-object v15, v13, v6

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "ignore_aliauth_autologin"

    aput-object v15, v13, v6

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "isvOpenAppkey"

    aput-object v15, v13, v6

    const-string v15, "DEFAULT_AUTH"

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "isvAccessToken"

    aput-object v15, v13, v6

    aput-object v3, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "customHost"

    aput-object v15, v13, v6

    aput-object v3, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "ttid"

    aput-object v15, v13, v6

    aput-object v3, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "tb_eagleeyex_scm_project"

    aput-object v15, v13, v6

    aput-object v3, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 85
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->parseJson(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 87
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 90
    :cond_5
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :cond_6
    :goto_2
    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "headers"

    aput-object v3, v2, v6

    aput-object v0, v2, v14

    invoke-virtual {v7, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "syncRequestFastJson"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v11, v2, v6

    invoke-static {v10, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v9

    .line 101
    :cond_7
    :try_start_1
    const-string v2, "second"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_8
    const-string v2, "first"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 104
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 107
    :catchall_0
    :cond_9
    :try_start_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call \u5f02\u5e38\uff0capi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9
.end method

.method public static call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    .line 38
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ensureJsonCls(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 116
    sget-object v0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->jsonClsCache:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->jsonClsCache:Ljava/lang/Class;

    return-object p0

    .line 118
    :cond_0
    :try_start_0
    const-string v0, "com.alibaba.fastjson.JSONObject"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 119
    sput-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->jsonClsCache:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ensurePut(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 127
    sget-object v0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->putCache:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->putCache:Ljava/lang/reflect/Method;

    return-object p0

    .line 129
    :cond_0
    :try_start_0
    const-string v0, "put"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 130
    sput-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->putCache:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseJson(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    .line 152
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->parseObjectMethodCache:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "com.alibaba.fastjson.JSON"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 155
    const-string v1, "parseObject"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->parseObjectMethodCache:Ljava/lang/reflect/Method;

    .line 157
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->parseObjectMethodCache:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parseJson \u5931\u8d25: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MtopCaller"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static resolveMethodEnum(Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 1

    .line 139
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->methodEnumClsCache:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "mtopsdk.mtop.domain.MethodEnum"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->methodEnumClsCache:Ljava/lang/Class;

    .line 143
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->methodEnumClsCache:Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 144
    const-string p1, "POST"

    goto :goto_0

    :cond_1
    const-string p1, "GET"

    .line 143
    :goto_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
