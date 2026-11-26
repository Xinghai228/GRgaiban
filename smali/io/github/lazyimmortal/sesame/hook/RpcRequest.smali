.class public Lio/github/lazyimmortal/sesame/hook/RpcRequest;
.super Ljava/lang/Object;
.source "RpcRequest.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final requestData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->methodName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->requestData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 33
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->methodName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->requestData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestData()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->requestData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestDataString(Lcom/fasterxml/jackson/databind/ObjectMapper;)Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->requestData:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 47
    :cond_0
    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RpcRequest{methodName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', requestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->requestData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
