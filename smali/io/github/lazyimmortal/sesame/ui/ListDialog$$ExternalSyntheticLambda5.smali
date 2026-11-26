.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lambda$showListDialog$1(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method
