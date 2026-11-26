.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->lambda$addChildTask$4$io-github-lazyimmortal-sesame-data-task-SystemChildTaskExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
