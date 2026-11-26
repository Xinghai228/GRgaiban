.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "TextModelField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;,
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$ReadOnlyTextModelField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConfigValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "TEXT"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 44
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    sget v1, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 48
    sget v1, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x800013

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    const/16 p1, 0x96

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    const/16 p1, 0xb4

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxHeight(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 54
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-TextModelField(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->showReadDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;->value:Ljava/lang/Object;

    return-void
.end method
