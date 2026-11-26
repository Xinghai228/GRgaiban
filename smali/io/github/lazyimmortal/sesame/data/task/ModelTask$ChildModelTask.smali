.class public Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
.super Ljava/lang/Object;
.source "ModelTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildModelTask"
.end annotation


# instance fields
.field private cancelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;

.field private final execTime:Ljava/lang/Long;

.field private final group:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private isCancel:Ljava/lang/Boolean;

.field private modelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 262
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v1, 0x0

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, v2, v2, v0, v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 267
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x0

    .line 268
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, p1, v2, v0, v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, v0, v0, p2}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 272
    new-instance v0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v1, 0x0

    .line 273
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 272
    invoke-direct {p0, p1, p2, v0, v1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 289
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 259
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->isCancel:Ljava/lang/Boolean;

    .line 293
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 296
    :cond_0
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string p2, "DEFAULT"

    :cond_1
    if-nez p3, :cond_2

    .line 300
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->setRunnable()Ljava/lang/Runnable;

    move-result-object p3

    .line 302
    :cond_2
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->id:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->group:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->runnable:Ljava/lang/Runnable;

    .line 305
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->execTime:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$102(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;Lio/github/lazyimmortal/sesame/data/task/ModelTask;)Lio/github/lazyimmortal/sesame/data/task/ModelTask;
    .locals 0

    .line 240
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->modelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    return-object p1
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$1()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$2()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 321
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;->cancel()V

    const/4 v0, 0x1

    .line 324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->isCancel:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getExecTime()Ljava/lang/Long;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->execTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCancel()Ljava/lang/Boolean;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->isCancel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModelTask()Lio/github/lazyimmortal/sesame/data/task/ModelTask;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->modelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    return-object v0
.end method

.method public final run()V
    .locals 1

    .line 313
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected setCancelTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;->cancelTask:Lio/github/lazyimmortal/sesame/data/task/ModelTask$CancelTask;

    return-void
.end method

.method public setRunnable()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
