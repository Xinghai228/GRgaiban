.class public final synthetic Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;

.field public final synthetic f$1:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->lambda$onReceive$0$io-github-lazyimmortal-sesame-hook-ApplicationHook$AlipayBroadcastReceiver(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
