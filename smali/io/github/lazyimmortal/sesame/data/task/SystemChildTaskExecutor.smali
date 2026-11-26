.class public Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;
.super Ljava/lang/Object;
.source "SystemChildTaskExecutor.java"

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

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    .line 19
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getChildGroupHandler(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 118
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    return-object v0

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_2

    .line 133
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

    .line 134
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object p1, v1

    .line 136
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

    .line 35
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

    if-lez v4, :cond_0

    .line 38
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catch_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
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

    .line 46
    :try_start_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
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

    .line 51
    throw v0
.end method

.method static synthetic lambda$addChildTask$1(Ljava/util/concurrent/Future;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method static synthetic lambda$addChildTask$2(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getIsCancel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda7;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 53
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V

    return-void
.end method

.method static synthetic lambda$addChildTask$5(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V
    .locals 2

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
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

    .line 69
    :try_start_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 72
    :goto_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->removeChildTask(Ljava/lang/String;)V

    .line 74
    throw v0
.end method

.method static synthetic lambda$addChildTask$6(Ljava/util/concurrent/Future;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method static synthetic lambda$clearGroupChildTask$7(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3

    .line 92
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, p0}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getChildGroupHandler$8(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    if-nez p1, :cond_0

    .line 125
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

    .line 24
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->getChildGroupHandler(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getExecTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 27
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v1, v4

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    sub-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V

    .line 61
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda4;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 76
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p1, v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V

    :goto_0
    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public clearAllChildTask()Ljava/lang/Boolean;
    .locals 2

    .line 110
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

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

    .line 111
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownNow(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 114
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public clearGroupChildTask(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 100
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-static {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 101
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->groupChildTaskExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synthetic lambda$addChildTask$3$io-github-lazyimmortal-sesame-data-task-SystemChildTaskExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addChildTask$4$io-github-lazyimmortal-sesame-data-task-SystemChildTaskExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;
    .locals 0

    .line 83
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancel()V

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
