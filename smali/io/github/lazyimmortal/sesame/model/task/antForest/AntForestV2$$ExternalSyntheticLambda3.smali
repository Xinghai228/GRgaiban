.class public final synthetic Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

.field public final synthetic f$1:Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$1:Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;

    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$1:Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->lambda$collectEnergy$2$io-github-lazyimmortal-sesame-model-task-antForest-AntForestV2(Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;Ljava/lang/Runnable;)V

    return-void
.end method
