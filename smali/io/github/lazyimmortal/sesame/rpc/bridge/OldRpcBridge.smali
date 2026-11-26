.class public Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;
.super Ljava/lang/Object;
.source "OldRpcBridge.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;


# static fields
.field private static final TAG:Ljava/lang/String; = "OldRpcBridge"


# instance fields
.field private curH5PageImpl:Ljava/lang/Object;

.field private getResponseMethod:Ljava/lang/reflect/Method;

.field private h5PageClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private rpcCallMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 31
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->NEW:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object v0
.end method

.method public load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    const-string v0, "rpc loadClass err:"

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->loader:Ljava/lang/ClassLoader;

    .line 37
    :try_start_0
    const-string v2, "com.alipay.mobile.h5container.api.H5Page"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->h5PageClazz:Ljava/lang/Class;

    .line 38
    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->TAG:Ljava/lang/String;

    const-string v2, "rpc loadClass successfully"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 50
    :try_start_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v2, "com.alipay.mobile.nebulaappproxy.api.rpc.H5RpcUtil"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "rpcCall"

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v4, "com.alibaba.fastjson.JSONObject"

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->h5PageClazz:Ljava/lang/Class;

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object v6, v5, v7

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v5, v8

    const/4 v8, 0x4

    aput-object v3, v5, v8

    const/4 v3, 0x5

    aput-object v6, v5, v3

    const/4 v3, 0x6

    aput-object v7, v5, v3

    const/4 v3, 0x7

    aput-object v4, v5, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x8

    aput-object v3, v5, v4

    const/16 v4, 0x9

    aput-object v6, v5, v4

    const/16 v4, 0xa

    aput-object v7, v5, v4

    const/16 v4, 0xb

    aput-object v3, v5, v4

    const/16 v3, 0xc

    aput-object v6, v5, v3

    .line 50
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    .line 54
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->loader:Ljava/lang/ClassLoader;

    const-string v2, "com.alipay.mobile.nebulaappproxy.api.rpc.H5Response"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getResponse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->getResponseMethod:Ljava/lang/reflect/Method;

    .line 55
    const-string v0, "get oldRpcCallMethod successfully"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->TAG:Ljava/lang/String;

    const-string v2, "get oldRpcCallMethod err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    throw v0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 44
    sget-object v2, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw v1

    :catch_1
    move-exception v1

    .line 40
    sget-object v2, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 0

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;->$default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 81
    const-string v4, "\u767b\u5f55\u8d85\u65f6"

    const-string v5, " | method: "

    const-string v6, "\n"

    const-string v7, "\n\u6570\u636e: "

    const-string v8, "\n\u53c2\u6570: "

    const-string v9, "Old RPC\n\u65b9\u6cd5: "

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return-object v10

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 85
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    .line 86
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestData()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    :goto_0
    const/4 v15, 0x1

    add-int/lit8 v10, v0, 0x1

    .line 93
    :try_start_0
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->enterIntervalLimit(Ljava/lang/String;)V

    .line 94
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v17, 0xb

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x2

    const/16 v27, -0x1

    const-string v14, ""

    const/16 v15, 0xc

    if-ne v0, v15, :cond_1

    .line 95
    :try_start_1
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    const/16 v29, 0x1

    .line 96
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    iget-object v15, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->curH5PageImpl:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v34, v10

    const/16 v10, 0xc

    :try_start_2
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v12, v10, v28

    const/16 v29, 0x1

    aput-object v13, v10, v29

    aput-object v14, v10, v26

    aput-object v30, v10, v25

    const/16 v16, 0x0

    aput-object v16, v10, v24

    aput-object v16, v10, v23

    aput-object v31, v10, v22

    aput-object v15, v10, v21

    aput-object v32, v10, v20

    aput-object v14, v10, v19

    aput-object v33, v10, v18

    aput-object v27, v10, v17

    const/4 v15, 0x0

    .line 95
    invoke-virtual {v0, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v34, v10

    .line 98
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x1

    .line 99
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->curH5PageImpl:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v10, 0xd

    new-array v10, v10, [Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v32, 0x0

    :try_start_3
    aput-object v12, v10, v32

    const/16 v29, 0x1

    aput-object v13, v10, v29

    aput-object v14, v10, v26

    aput-object v15, v10, v25

    const/4 v15, 0x0

    aput-object v15, v10, v24

    aput-object v15, v10, v23

    aput-object v28, v10, v22

    aput-object v3, v10, v21

    aput-object v30, v10, v20

    aput-object v14, v10, v19

    aput-object v31, v10, v18

    aput-object v27, v10, v17

    const/16 v3, 0xc

    aput-object v14, v10, v3

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :goto_1
    :try_start_4
    iget-object v4, v1, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->getResponseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v3, v0}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setResponseObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    const-string v0, "memo"

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 172
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setOffline(Z)V

    .line 173
    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u53ef\u80fd\u9700\u8981\u6ed1\u52a8\u9a8c\u8bc1"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    .line 174
    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u53ef\u80fd\u9700\u8981\u6ed1\u52a8\u9a8c\u8bc1"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    .line 177
    :cond_2
    :try_start_5
    const-string v0, "success"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "isSuccess"

    .line 178
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old rpc response | id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " args: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | data:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    .line 184
    :catchall_0
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old rpc response | id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " get err:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move/from16 v34, v10

    :goto_2
    const/16 v32, 0x0

    .line 102
    :goto_3
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "old rpc request | id: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " err:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 105
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_b

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isOffline()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v3, 0x1

    .line 112
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setOffline(Z)V

    .line 113
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getTimeoutRestart()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    const-string v0, "\u5c1d\u8bd5\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginByBroadcast()V

    goto/16 :goto_5

    .line 119
    :cond_4
    const-string v3, "[1004]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "alipay.antmember.forest.h5.collectEnergy"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getWaitWhenException()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getWaitWhenException()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v3, v10

    .line 122
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getInstance()Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    move-result-object v0

    sget-object v5, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->ForestPauseTime:Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->put(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;Ljava/lang/Object;)V

    .line 123
    const-string v0, "\u5f02\u5e38"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateStatusText(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e6\u53d1\u5f02\u5e38,\u7b49\u5f85\u81f3"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    move/from16 v3, p3

    if-gez v3, :cond_6

    .line 128
    :try_start_8
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 130
    :try_start_9
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_5

    :cond_6
    if-lez v3, :cond_b

    int-to-long v3, v3

    .line 134
    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 136
    :try_start_b
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_7
    move/from16 v3, p3

    .line 139
    const-string v10, "MMTPException"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v0, :cond_b

    .line 141
    :try_start_c
    const-string v0, "{\"resultCode\":\"FAIL\",\"memo\":\"MMTPException\",\"resultDesc\":\"MMTPException\"}"

    .line 142
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v0}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setResponseObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    :catch_2
    move-exception v0

    .line 145
    :try_start_d
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-gez v3, :cond_8

    .line 149
    :try_start_e
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_4

    :catch_3
    move-exception v0

    .line 151
    :try_start_f
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_4

    :cond_8
    if-lez v3, :cond_9

    int-to-long v14, v3

    .line 155
    :try_start_10
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v10, v0

    .line 157
    :try_start_11
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_9
    :goto_4
    move/from16 v10, p2

    move/from16 v14, v34

    if-lt v14, v10, :cond_a

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_a
    move v0, v14

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 191
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

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
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

    .line 65
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->getResponseMethod:Ljava/lang/reflect/Method;

    .line 66
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->rpcCallMethod:Ljava/lang/reflect/Method;

    .line 67
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->h5PageClazz:Ljava/lang/Class;

    .line 68
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;->loader:Ljava/lang/ClassLoader;

    return-void
.end method
