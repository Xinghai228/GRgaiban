.class public Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;
.super Ljava/lang/Object;
.source "NewRpcBridge.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewRpcBridge"


# instance fields
.field private bridgeCallbackClazzArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private newRpcCallMethod:Ljava/lang/reflect/Method;

.field private newRpcInstance:Ljava/lang/Object;

.field private parseObjectMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->isSilencedRpcError(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSilencedRpcError(Ljava/lang/String;)Z
    .locals 1

    .line 117
    const-string v0, "com.alipay.adexchange.ad.facade.xlightPlugin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getVersion()Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 38
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->NEW:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object v0
.end method

.method public load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const-string v0, "com.alibaba.fastjson.JSONObject"

    const-string v1, "com.alibaba.ariver.commonability.network.rpc.RpcBridgeExtension"

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    .line 45
    :try_start_0
    const-string v3, "com.alipay.mobile.nebulacore.Nebula"

    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    const-string v3, "getExtensionManager"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "createExtensionInstance"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 51
    const-string v3, "getNodeExtensionMap"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 54
    check-cast v2, Ljava/util/Map;

    .line 55
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 57
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 66
    :cond_3
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->TAG:Ljava/lang/String;

    const-string v1, "get newRpcInstance null"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get newRpcInstance is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_4
    :goto_1
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v2, "com.alibaba.fastjson.JSON"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "parseObject"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->parseObjectMethod:Ljava/lang/reflect/Method;

    .line 71
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v2, "com.alibaba.ariver.engine.api.bridge.extension.BridgeCallback"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    new-array v2, v6, [Ljava/lang/Class;

    aput-object v1, v2, v4

    iput-object v2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->bridgeCallbackClazzArray:[Ljava/lang/Class;

    .line 73
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "rpc"

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    .line 80
    invoke-virtual {v7, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v8, "com.alibaba.ariver.app.api.App"

    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v9, "com.alibaba.ariver.app.api.Page"

    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v10, "com.alibaba.ariver.engine.api.bridge.model.ApiContext"

    .line 88
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v10, 0x10

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v10, v6

    const/4 v6, 0x2

    aput-object v4, v10, v6

    const/4 v6, 0x3

    aput-object v11, v10, v6

    const/4 v6, 0x4

    aput-object v5, v10, v6

    const/4 v5, 0x5

    aput-object v11, v10, v5

    const/4 v5, 0x6

    aput-object v0, v10, v5

    const/4 v0, 0x7

    aput-object v4, v10, v0

    const/16 v0, 0x8

    aput-object v4, v10, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x9

    aput-object v0, v10, v5

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v11, v10, v0

    const/16 v0, 0xc

    aput-object v7, v10, v0

    const/16 v0, 0xd

    aput-object v8, v10, v0

    const/16 v0, 0xe

    aput-object v9, v10, v0

    const/16 v0, 0xf

    aput-object v1, v10, v0

    .line 73
    invoke-virtual {v2, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcCallMethod:Ljava/lang/reflect/Method;

    .line 91
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->TAG:Ljava/lang/String;

    const-string v1, "get newRpcCallMethod successfully"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->TAG:Ljava/lang/String;

    const-string v2, "get newRpcCallMethod err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    throw v0
.end method

.method public newAsyncRequest(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 223
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    .line 226
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 227
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestData()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v9, 0x1

    add-int/lit8 v10, v0, 0x1

    .line 234
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 235
    :try_start_1
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcCallMethod:Ljava/lang/reflect/Method;

    iget-object v11, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    .line 236
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->parseObjectMethod:Ljava/lang/reflect/Method;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"__apiCallStartTime\":"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",\"apiCallLink\":\"XRiverNotFound\",\"execEngine\":\"XRiver\",\"operationType\":\""

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\",\"requestData\":"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v4, 0x0

    :try_start_2
    aput-object v8, v15, v4

    const/4 v8, 0x0

    invoke-virtual {v14, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    iget-object v4, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move/from16 v18, v10

    :try_start_4
    iget-object v10, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->bridgeCallbackClazzArray:[Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    new-instance v3, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;

    invoke-direct {v3, v1, v2, v5, v6}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;-><init>(Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;ILjava/lang/String;)V

    invoke-static {v4, v10, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x10

    new-array v10, v4, [Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v4, 0x0

    :try_start_6
    aput-object v6, v10, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v16, 0x1

    :try_start_7
    aput-object v12, v10, v16

    const/4 v12, 0x2

    aput-object v13, v10, v12

    const-string v12, "json"

    const/4 v13, 0x3

    aput-object v12, v10, v13

    const/4 v12, 0x4

    aput-object v14, v10, v12

    const-string v12, ""

    const/4 v13, 0x5

    aput-object v12, v10, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    aput-object v14, v10, v13

    const/4 v13, 0x7

    aput-object v8, v10, v13

    const/16 v8, 0x8

    aput-object v9, v10, v8

    const/16 v8, 0x9

    aput-object v15, v10, v8

    const/16 v8, 0xa

    aput-object v17, v10, v8

    const/16 v8, 0xb

    aput-object v12, v10, v8

    const/16 v8, 0xc

    const/4 v9, 0x0

    aput-object v9, v10, v8

    const/16 v8, 0xd

    aput-object v9, v10, v8

    const/16 v8, 0xe

    aput-object v9, v10, v8

    const/16 v8, 0xf

    aput-object v3, v10, v8

    .line 235
    invoke-virtual {v0, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x7530

    .line 274
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 275
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 276
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getHasResult()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u53c2\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6570\u636e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    .line 279
    :cond_1
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getHasError()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v0, :cond_2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u53c2\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6570\u636e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    .line 283
    :cond_2
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getString"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "error"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v4, 0x0

    :try_start_b
    aput-object v8, v9, v4

    invoke-static {v0, v3, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    const-string v3, "2000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 286
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setOffline(Z)V

    .line 287
    const-string v0, "\u767b\u5f55\u8d85\u65f6"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getTimeoutRestart()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    const-string v0, "\u5c1d\u8bd5\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginByBroadcast()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u53c2\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6570\u636e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u53c2\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6570\u636e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    :goto_1
    move/from16 v3, p3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 297
    :goto_2
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new rpc response | id: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | method: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " get err:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 298
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move/from16 v3, p3

    if-gez v3, :cond_5

    .line 302
    :try_start_d
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto/16 :goto_7

    :catch_2
    move-exception v0

    .line 304
    :try_start_e
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/16 :goto_7

    :cond_5
    if-lez v3, :cond_7

    int-to-long v8, v3

    .line 308
    :try_start_f
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v8, v0

    .line 310
    :try_start_10
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v3, p3

    goto :goto_5

    :catchall_3
    move-exception v0

    move/from16 v3, p3

    goto :goto_4

    :catchall_4
    move-exception v0

    move/from16 v3, p3

    goto :goto_3

    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move/from16 v18, v10

    goto :goto_4

    :catchall_7
    move-exception v0

    move/from16 v18, v10

    :goto_3
    const/4 v4, 0x0

    .line 275
    :goto_4
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_6

    :catchall_9
    move-exception v0

    goto :goto_4

    :catchall_a
    move-exception v0

    move/from16 v18, v10

    :goto_5
    const/4 v4, 0x0

    .line 314
    :goto_6
    :try_start_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new rpc request | id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " | method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-gez v3, :cond_6

    .line 318
    :try_start_14
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_7

    :catch_4
    move-exception v0

    .line 320
    :try_start_15
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_7

    :cond_6
    if-lez v3, :cond_7

    int-to-long v8, v3

    .line 324
    :try_start_16
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v8, v0

    .line 326
    :try_start_17
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :cond_7
    :goto_7
    move/from16 v8, p2

    move/from16 v9, v18

    if-lt v9, v8, :cond_8

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u53c2\u6570: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6570\u636e: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v10, 0x0

    return-object v10

    :cond_8
    move v0, v9

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New RPC\n\u65b9\u6cd5: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u53c2\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\u6570\u636e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 334
    throw v0
.end method

.method public synthetic requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 122
    const-string v4, " | method: "

    const-string v5, "\n"

    const-string v6, "\n\u6570\u636e: "

    const-string v7, "\n\u53c2\u6570: "

    const-string v8, "New RPC\n\u65b9\u6cd5: "

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 126
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object v11

    .line 127
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestData()Ljava/lang/String;

    move-result-object v12

    .line 128
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestRelation()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v15, 0x1

    add-int/lit8 v9, v0, 0x1

    .line 134
    :try_start_0
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->enterIntervalLimit(Ljava/lang/String;)V

    .line 135
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcCallMethod:Ljava/lang/reflect/Method;

    iget-object v15, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    .line 136
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-object v14, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->parseObjectMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move/from16 v19, v9

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    :try_start_2
    const-string v3, "{\"__apiCallStartTime\":"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v20, v4

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",\"apiCallLink\":\"XRiverNotFound\",\"execEngine\":\"XRiver\",\"operationType\":\""

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"requestData\":"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    const-string v3, ""

    if-nez v13, :cond_1

    move-object v4, v3

    move-object/from16 v21, v5

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v21, v5

    :try_start_5
    const-string v5, ",\"relationLocal\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v9, v18

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move-object/from16 v23, v13

    :try_start_6
    iget-object v13, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object/from16 v24, v6

    :try_start_7
    iget-object v6, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->bridgeCallbackClazzArray:[Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 v25, v12

    :try_start_8
    new-instance v12, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;

    invoke-direct {v12, v1, v2, v10, v11}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;-><init>(Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;ILjava/lang/String;)V

    invoke-static {v13, v6, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    const/16 v12, 0x10

    new-array v12, v12, [Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    const/4 v13, 0x0

    :try_start_9
    aput-object v11, v12, v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v13, 0x1

    :try_start_a
    aput-object v16, v12, v13

    const/4 v13, 0x2

    aput-object v17, v12, v13

    const-string v13, "json"

    const/16 v16, 0x3

    aput-object v13, v12, v16

    const/4 v13, 0x4

    aput-object v9, v12, v13

    const/4 v9, 0x5

    aput-object v3, v12, v9

    const/4 v9, 0x6

    const/4 v13, 0x0

    aput-object v13, v12, v9

    const/4 v9, 0x7

    aput-object v4, v12, v9

    const/16 v4, 0x8

    aput-object v5, v12, v4

    const/16 v4, 0x9

    aput-object v14, v12, v4

    const/16 v4, 0xa

    aput-object v22, v12, v4

    const/16 v4, 0xb

    aput-object v3, v12, v4

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput-object v4, v12, v3

    const/16 v3, 0xd

    aput-object v4, v12, v3

    const/16 v3, 0xe

    aput-object v4, v12, v3

    const/16 v3, 0xf

    aput-object v6, v12, v3

    .line 135
    invoke-virtual {v0, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getHasResult()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_2
    move-object/from16 v5, v21

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    .line 164
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getHasError()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v0, :cond_3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    .line 168
    :cond_3
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "getString"

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const-string v9, "error"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v13, 0x0

    :try_start_d
    aput-object v9, v12, v13

    invoke-static {v0, v6, v12}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    const-string v6, "2000"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setOffline(Z)V

    .line 172
    const-string v0, "\u767b\u5f55\u8d85\u65f6"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getTimeoutRestart()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    const-string v0, "\u5c1d\u8bd5\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginByBroadcast()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 218
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v6, p3

    move-object/from16 v9, v20

    goto/16 :goto_9

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    .line 182
    :goto_3
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new rpc response | id: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v9, v20

    :try_start_f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " get err:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move/from16 v6, p3

    if-gez v6, :cond_6

    .line 187
    :try_start_10
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    .line 189
    :try_start_11
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_a

    :cond_6
    if-lez v6, :cond_8

    int-to-long v14, v6

    .line 193
    :try_start_12
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v12, v0

    .line 195
    :try_start_13
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move/from16 v6, p3

    move-object/from16 v9, v20

    goto :goto_4

    :catchall_5
    move-exception v0

    move/from16 v6, p3

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move/from16 v6, p3

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    goto :goto_4

    :catchall_7
    move-exception v0

    move/from16 v6, p3

    move-object v3, v12

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v24

    :goto_4
    const/4 v13, 0x0

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v4, v6

    move-object v3, v12

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object v4, v6

    move-object v3, v12

    move-object/from16 v23, v13

    :goto_5
    move-object/from16 v9, v20

    move-object/from16 v5, v21

    goto :goto_6

    :catchall_a
    move-exception v0

    move-object v4, v6

    move-object v3, v12

    move-object/from16 v23, v13

    move-object/from16 v9, v20

    goto :goto_6

    :catchall_b
    move-exception v0

    move-object v9, v4

    move-object v4, v6

    move-object v3, v12

    move-object/from16 v23, v13

    :goto_6
    const/4 v13, 0x0

    :goto_7
    move/from16 v6, p3

    goto :goto_9

    :catchall_c
    move-exception v0

    move-object v9, v4

    move-object v4, v6

    move-object/from16 v23, v13

    const/4 v13, 0x0

    goto :goto_8

    :catchall_d
    move-exception v0

    move/from16 v19, v9

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object v9, v4

    move-object v4, v6

    :goto_8
    move v6, v3

    move-object v3, v12

    .line 199
    :goto_9
    :try_start_14
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new rpc request | id: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " err:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-gez v6, :cond_7

    .line 203
    :try_start_15
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_a

    :catch_4
    move-exception v0

    .line 205
    :try_start_16
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    goto :goto_a

    :cond_7
    if-lez v6, :cond_8

    int-to-long v14, v6

    .line 209
    :try_start_17
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v12, v0

    .line 211
    :try_start_18
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :cond_8
    :goto_a
    move/from16 v12, p2

    move/from16 v14, v19

    if-lt v14, v12, :cond_9

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v15, 0x0

    return-object v15

    :cond_9
    move-object v12, v3

    move v3, v6

    move v0, v14

    move-object/from16 v13, v23

    const/4 v14, 0x0

    move-object v6, v4

    move-object v4, v9

    const/4 v9, 0x0

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 219
    throw v0
.end method

.method public synthetic requestObject(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unload()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcCallMethod:Ljava/lang/reflect/Method;

    .line 101
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->bridgeCallbackClazzArray:[Ljava/lang/Class;

    .line 102
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->parseObjectMethod:Ljava/lang/reflect/Method;

    .line 103
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newRpcInstance:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->loader:Ljava/lang/ClassLoader;

    return-void
.end method
