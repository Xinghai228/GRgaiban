.class public Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;
.super Ljava/lang/Object;
.source "ProgramChildTaskExecutor.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;


# instance fields
.field private final groupChildTaskExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    return-void
.end method

.method private getChildGroupThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 100
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    return-object v0

    .line 104
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_2

    .line 115
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 116
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p1, v1

    .line 118
    monitor-exit v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$addChildTask$0(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V
    .locals 5

    .line 21
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getIsCancel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getExecTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 30
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catch_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 38
    :try_start_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    .line 43
    throw v0
.end method

.method static synthetic lambda$addChildTask$1(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V
    .locals 2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 54
    :goto_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method static synthetic lambda$addChildTask$2(Ljava/util/concurrent/Future;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method static synthetic lambda$clearGroupChildTask$3(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3

    .line 74
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, p0}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getChildGroupThreadPool$4(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;
    .locals 6

    .line 16
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->getChildGroupThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getExecTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 20
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 59
    :goto_0
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p1, v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V

    const/4 p1, 0x1

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public clearAllChildTask()Ljava/lang/Boolean;
    .locals 2

    .line 92
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownNow(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public clearGroupChildTask(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 82
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-static {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 83
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;
    .locals 0

    .line 65
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancel()V

    const/4 p1, 0x1

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
