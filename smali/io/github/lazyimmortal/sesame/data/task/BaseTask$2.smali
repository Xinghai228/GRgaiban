.class Lio/github/lazyimmortal/sesame/data/task/BaseTask$2;
.super Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/data/task/BaseTask;->newInstance(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$2;->val$id:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 0

    return-void
.end method
