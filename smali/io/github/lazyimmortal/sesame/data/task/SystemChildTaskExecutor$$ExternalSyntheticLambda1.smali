.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

.field public final synthetic f$1:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->lambda$addChildTask$2(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
