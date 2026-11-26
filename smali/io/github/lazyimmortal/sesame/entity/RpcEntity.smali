.class public Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.super Ljava/lang/Object;
.source "RpcEntity.java"


# instance fields
.field private volatile hasError:Ljava/lang/Boolean;

.field private volatile hasResult:Ljava/lang/Boolean;

.field private final requestData:Ljava/lang/String;

.field private final requestMethod:Ljava/lang/String;

.field private final requestRelation:Ljava/lang/String;

.field private final requestThread:Ljava/lang/Thread;

.field private volatile responseObject:Ljava/lang/Object;

.field private volatile responseString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasResult:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasError:Ljava/lang/Boolean;

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestThread:Ljava/lang/Thread;

    .line 40
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestMethod:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestData:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestRelation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHasError()Ljava/lang/Boolean;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasError:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHasResult()Ljava/lang/Boolean;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequestData()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRelation()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestRelation:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestThread()Ljava/lang/Thread;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->requestThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getResponseObject()Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->responseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->responseString:Ljava/lang/String;

    return-object v0
.end method

.method public setError()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasError:Ljava/lang/Boolean;

    return-void
.end method

.method public setResponseObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->hasResult:Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->responseObject:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->responseString:Ljava/lang/String;

    return-void
.end method
