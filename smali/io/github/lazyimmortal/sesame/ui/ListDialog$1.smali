.class Lio/github/lazyimmortal/sesame/ui/ListDialog$1;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 218
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lio/github/lazyimmortal/sesame/R$id;->btn_find_last:I

    if-ne v1, v2, :cond_1

    .line 225
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->searchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findLast(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lio/github/lazyimmortal/sesame/R$id;->btn_find_next:I

    if-ne v1, v2, :cond_2

    .line 229
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->searchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findNext(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u672a\u641c\u5230"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 235
    :cond_3
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lv_list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void
.end method
