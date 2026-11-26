.class public final synthetic Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$0:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$0:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->lambda$reportExact$1$io-github-lazyimmortal-sesame-model-task-antGame-GameTask(Ljava/lang/String;I)V

    return-void
.end method
