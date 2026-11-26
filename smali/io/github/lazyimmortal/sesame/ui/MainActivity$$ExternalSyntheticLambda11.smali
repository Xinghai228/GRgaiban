.class public final synthetic Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->lambda$selectFriendWatchUid$8(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method
