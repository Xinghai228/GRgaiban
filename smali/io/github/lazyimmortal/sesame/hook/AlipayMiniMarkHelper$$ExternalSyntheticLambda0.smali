.class public final synthetic Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->lambda$startDexScan$0(Ljava/lang/ClassLoader;)V

    return-void
.end method
