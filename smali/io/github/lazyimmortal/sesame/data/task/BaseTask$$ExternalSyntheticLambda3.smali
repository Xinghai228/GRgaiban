.class public final synthetic Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/data/task/BaseTask;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/task/BaseTask$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    invoke-static {v0, p1, p2}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->lambda$addChildTask$0(Lio/github/lazyimmortal/sesame/data/task/BaseTask;Ljava/lang/String;Lio/github/lazyimmortal/sesame/data/task/BaseTask;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    move-result-object p1

    return-object p1
.end method
