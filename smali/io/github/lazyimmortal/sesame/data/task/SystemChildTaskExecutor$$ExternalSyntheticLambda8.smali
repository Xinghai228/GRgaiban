.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Future;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda8;->f$0:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda8;->f$0:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->lambda$addChildTask$1(Ljava/util/concurrent/Future;)V

    return-void
.end method
