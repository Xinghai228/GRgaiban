.class Lio/github/lazyimmortal/sesame/ui/ListDialog$4;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/ListDialog;->getListView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic val$curIdAndName:Lio/github/lazyimmortal/sesame/entity/IdAndName;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/entity/IdAndName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->val$curIdAndName:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$io-github-lazyimmortal-sesame-ui-ListDialog$4(Lio/github/lazyimmortal/sesame/entity/IdAndName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    .line 658
    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    if-eqz p2, :cond_0

    .line 659
    iget-object p2, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_0
    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    .line 664
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->access$000()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    move-result-object p2

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->remove(Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->exitFind()V

    .line 667
    :cond_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "\u5220\u9664 "

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    :try_start_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->val$curIdAndName:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->val$curIdAndName:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$4$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/ui/ListDialog$4;Lio/github/lazyimmortal/sesame/entity/IdAndName;)V

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    .line 668
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 652
    :cond_1
    const-string v1, "alipays://platformapi/startapp?appId=20000166&actionType=profile&userId="

    goto :goto_0

    .line 648
    :cond_2
    const-string v1, "alipays://platformapi/startapp?saId=10000007&qrcode=https%3A%2F%2F66666674.h5app.alipay.com%2Fwww%2Findex.htm%3Fuid%3D"

    goto :goto_0

    .line 644
    :cond_3
    const-string v1, "alipays://platformapi/startapp?saId=10000007&qrcode=https%3A%2F%2F60000002.h5app.alipay.com%2Fwww%2Fhome.html%3FuserId%3D"

    :goto_0
    if-eqz v1, :cond_4

    .line 674
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->val$curIdAndName:Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 675
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public setContext(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 634
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->c:Landroid/content/Context;

    return-object p0
.end method
