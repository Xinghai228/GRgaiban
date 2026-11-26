.class public interface abstract Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;
.super Ljava/lang/Object;
.source "RpcBridge.java"


# virtual methods
.method public abstract getVersion()Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestObject(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end method

.method public abstract requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Ljava/lang/String;
.end method

.method public abstract requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;
.end method

.method public abstract requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract unload()V
.end method
