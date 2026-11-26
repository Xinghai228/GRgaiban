.class Lio/github/lazyimmortal/sesame/data/task/BaseTask$1;
.super Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/data/task/BaseTask;->newInstance()Lio/github/lazyimmortal/sesame/data/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 0

    return-void
.end method
