.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

.field public final synthetic f$1:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask;Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;->f$1:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;->f$1:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    invoke-virtual {v0, v1, p1, p2}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->lambda$addChildTask$0$io-github-lazyimmortal-sesame-data-task-ModelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    move-result-object p1

    return-object p1
.end method
