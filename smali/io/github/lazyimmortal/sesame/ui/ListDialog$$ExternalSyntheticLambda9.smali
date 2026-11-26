.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lambda$getListView$4(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
