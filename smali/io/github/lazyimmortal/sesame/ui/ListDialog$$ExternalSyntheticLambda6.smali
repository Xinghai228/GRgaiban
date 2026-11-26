.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lio/github/lazyimmortal/sesame/entity/IdAndName;

.field public final synthetic f$2:Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$1:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iput-object p3, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$2:Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    iput-object p4, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$1:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$2:Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;->f$3:Landroid/content/Context;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lambda$getListView$10(Landroid/widget/EditText;Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
