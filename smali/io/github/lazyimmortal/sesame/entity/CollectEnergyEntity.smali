.class public Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;
.super Ljava/lang/Object;
.source "CollectEnergyEntity.java"


# instance fields
.field private collectCount:Ljava/lang/Integer;

.field private needDouble:Ljava/lang/Boolean;

.field private needRetry:Ljava/lang/Boolean;

.field private rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

.field private tryCount:Ljava/lang/Integer;

.field private userHome:Lorg/json/JSONObject;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    .line 23
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    .line 26
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    .line 29
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    .line 23
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    .line 26
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    .line 33
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userHome:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    .line 23
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    .line 26
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    .line 38
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userHome:Lorg/json/JSONObject;

    .line 40
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    return-void
.end method


# virtual methods
.method public addTryCount()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCollectCount()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNeedDouble()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNeedRetry()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRpcEntity()Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    return-object v0
.end method

.method public getTryCount()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserHome()Lorg/json/JSONObject;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userHome:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public resetTryCount()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->tryCount:Ljava/lang/Integer;

    return-void
.end method

.method public setNeedDouble()V
    .locals 2

    .line 53
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->collectCount:Ljava/lang/Integer;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    return-void
.end method

.method public setNeedDouble(Ljava/lang/Boolean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    return-void
.end method

.method public setNeedRetry()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    return-void
.end method

.method public setNeedRetry(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    return-void
.end method

.method public setRpcEntity(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    return-void
.end method

.method public setUserHome(Lorg/json/JSONObject;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->userHome:Lorg/json/JSONObject;

    return-void
.end method

.method public unsetNeedDouble()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needDouble:Ljava/lang/Boolean;

    return-void
.end method

.method public unsetNeedRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;->needRetry:Ljava/lang/Boolean;

    return-void
.end method
