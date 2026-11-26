.class public final synthetic Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$0:I

    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$0:I

    iget v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->lambda$doFarmDrawTask$2(IILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
