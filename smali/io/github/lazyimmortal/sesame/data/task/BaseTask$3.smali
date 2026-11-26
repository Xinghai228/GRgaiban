.class Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;
.super Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/data/task/BaseTask;->newInstance(Ljava/lang/String;Ljava/lang/Runnable;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 166
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;->val$id:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
