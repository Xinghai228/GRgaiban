.class Lio/github/lazyimmortal/sesame/ui/ListDialog$3;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/ListDialog;->getListView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 394
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->searchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filter(Ljava/lang/String;)V

    return-void
.end method
