.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lambda$getListView$7(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
