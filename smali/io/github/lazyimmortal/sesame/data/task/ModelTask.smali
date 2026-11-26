.class public abstract Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.super Lio/github/lazyimmortal/sesame/data/Model;
.source "ModelTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;,
        Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;
    }
.end annotation


# static fields
.field private static final MAIN_TASK_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/github/lazyimmortal/sesame/data/task/ModelTask;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

.field private final childTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mainRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_TASK_MAP:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelArray()[Lio/github/lazyimmortal/sesame/data/Model;

    move-result-object v1

    array-length v2, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/Model;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    .line 34
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->mainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 24
    sget-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_TASK_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private newTimedTaskExecutor()Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;
    .locals 2

    .line 229
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getTimedTaskModel()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/SystemChildTaskExecutor;-><init>()V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 233
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/ProgramChildTaskExecutor;-><init>()V

    :goto_0
    return-object v0

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not found childTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startAllTask()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->startAllTask(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static startAllTask(Ljava/lang/Boolean;)V
    .locals 6

    .line 192
    const-string v0, "Config::backup"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->backupConfigV2WithRolling(Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->taskRpcRequest()V

    .line 198
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelArray()[Lio/github/lazyimmortal/sesame/data/Model;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 200
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/Model;->getType()Lio/github/lazyimmortal/sesame/data/ModelType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 201
    check-cast v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-virtual {v3, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x2ee

    .line 203
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 205
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static stopAllTask()V
    .locals 6

    .line 214
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelArray()[Lio/github/lazyimmortal/sesame/data/Model;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 217
    :try_start_0
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/Model;->getType()Lio/github/lazyimmortal/sesame/data/ModelType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 218
    check-cast v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->stopTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 221
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;
    .locals 5

    .line 93
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->getId()Ljava/lang/String;

    move-result-object v0

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    .line 95
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask;Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)V

    invoke-static {v1, v0, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancel()V

    .line 111
    :cond_2
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->access$102(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Lio/github/lazyimmortal/sesame/data/task/ModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    .line 112
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    invoke-interface {v2, p1}, Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 116
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract check()Ljava/lang/Boolean;
.end method

.method public countChildTask()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChildTask(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    return-object p1
.end method

.method public abstract getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->mainRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 1

    .line 69
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    return-object v0
.end method

.method public hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isSync()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addChildTask$0$io-github-lazyimmortal-sesame-data-task-ModelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
    .locals 0

    .line 0
    if-eqz p3, :cond_0

    .line 97
    invoke-virtual {p3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancel()V

    .line 99
    :cond_0
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->access$102(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Lio/github/lazyimmortal/sesame/data/task/ModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    .line 100
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    invoke-interface {p2, p1}, Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$removeChildTask$1$io-github-lazyimmortal-sesame-data-task-ModelTask(Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 125
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    invoke-interface {p1, p2}, Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;->removeChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final prepare()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->newTimedTaskExecutor()Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    return-void
.end method

.method public removeChildTask(Ljava/lang/String;)V
    .locals 3

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask;)V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    invoke-interface {v2, v1}, Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;->removeChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 135
    :cond_1
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract run()V
.end method

.method public startTask()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_TASK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 153
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->stopTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->check()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->isSync()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->mainRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 160
    :cond_2
    sget-object p1, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->mainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    .line 162
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    :try_start_3
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 167
    :cond_3
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
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

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

    check-cast v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 175
    :try_start_2
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskExecutor:Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/data/task/ChildTaskExecutor;->clearAllChildTask()Ljava/lang/Boolean;

    .line 181
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->childTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    sget-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_THREAD_POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->mainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 183
    sget-object v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->MAIN_TASK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
