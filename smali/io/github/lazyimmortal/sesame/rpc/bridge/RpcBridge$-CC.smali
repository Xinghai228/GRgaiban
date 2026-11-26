.class public final synthetic Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge$-CC;
.super Ljava/lang/Object;
.source "RpcBridge.java"


# direct methods
.method public static $default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 2
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 46
    invoke-interface {p0, p1, v0, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 2
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 50
    invoke-interface {p0, p1, p2, v0, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 62
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-direct {v0, p1, p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3, p4}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 6
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v4, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 54
    invoke-interface/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestObject(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 66
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-direct {v0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p4, p5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 16
    invoke-interface {p0, p1, v0, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 20
    invoke-interface {p0, p1, p2, v0, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 32
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-direct {v0, p1, p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3, p4}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 0
    const/4 v4, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 24
    invoke-interface/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$requestString(Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 36
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-direct {v0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p4, p5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
