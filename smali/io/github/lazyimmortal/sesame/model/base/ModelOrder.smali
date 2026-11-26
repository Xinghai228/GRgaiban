.class public Lio/github/lazyimmortal/sesame/model/base/ModelOrder;
.super Ljava/lang/Object;
.source "ModelOrder.java"


# static fields
.field private static final clazzList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/ModelOrder;->clazzList:Ljava/util/List;

    .line 28
    const-class v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/friendDelete/FriendDeleteModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-class v1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "ModelOrder"

    const-string v2, "addExtensionsClass"

    invoke-static {v1, v2, v0}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->handleAlphaRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClazzList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;>;"
        }
    .end annotation

    .line 24
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/ModelOrder;->clazzList:Ljava/util/List;

    return-object v0
.end method
