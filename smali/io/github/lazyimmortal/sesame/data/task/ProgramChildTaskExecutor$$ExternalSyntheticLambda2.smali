.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda2;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda2;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->lambda$addChildTask$1(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    return-void
.end method
