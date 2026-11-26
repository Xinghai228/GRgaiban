.class public final synthetic Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AlertDialog;

    iput p4, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AlertDialog;

    iget v3, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->lambda$selectFriendWatchUid$9$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V

    return-void
.end method
