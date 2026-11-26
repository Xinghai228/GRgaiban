.class public final synthetic Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda5;->f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda5;->f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->$r8$lambda$mxGQmSuOf0N64xUFsoWaqJR-a6Y(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
