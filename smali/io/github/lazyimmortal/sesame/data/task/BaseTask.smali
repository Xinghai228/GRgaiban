.class public abstract Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"


# instance fields
.field private final childTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/task/BaseTask;",
            ">;"
        }
    .end annotation
.end field

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic lambda$addChildTask$0(Lio/github/lazyimmortal/sesame/data/task/BaseTask;Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/BaseTask;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->stopTask()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask()Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$removeChildTask$1(Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/BaseTask;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 2

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->getThread()Ljava/lang/Thread;

    move-result-object p0

    const-wide/16 v0, -0x1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, p1}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndWait(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance()Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 1

    .line 122
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$1;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 1

    .line 135
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$2;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Runnable;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 1

    .line 153
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;

    invoke-direct {v0, p0, p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addChildTask(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)V
    .locals 3

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->getId()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)V

    invoke-static {v1, v0, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->stopTask()V

    .line 54
    :cond_1
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask()Ljava/lang/Boolean;

    .line 55
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract check()Ljava/lang/Boolean;
.end method

.method public declared-synchronized countChildTask()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getChildTask(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public declared-synchronized hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeChildTask(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 60
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3, v1}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndWait(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract run()V
.end method

.method public startTask()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->stopTask()V

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->check()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 95
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask()Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 103
    :try_start_3
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 105
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized stopTask()V
    .locals 5

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-static {v0, v2, v3, v1}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndWait(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, -0x1

    invoke-static {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/util/ThreadUtil;->shutdownAndWait(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->thread:Ljava/lang/Thread;

    .line 118
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
