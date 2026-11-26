.class public Lio/github/lazyimmortal/sesame/ui/ChoiceDialog;
.super Ljava/lang/Object;
.source "ChoiceDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->setObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;)V
    .locals 3

    .line 11
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getExpandKey()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ChoiceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lio/github/lazyimmortal/sesame/ui/ChoiceDialog$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    .line 15
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
