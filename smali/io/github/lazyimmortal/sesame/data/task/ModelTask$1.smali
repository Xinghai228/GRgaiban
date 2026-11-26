.class Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;
.super Ljava/lang/Object;
.source "ModelTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

.field final synthetic this$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/data/task/ModelTask;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->this$0:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 48
    :try_start_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 50
    :goto_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->access$000()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$1;->task:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    throw v0
.end method
