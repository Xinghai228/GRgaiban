.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "BooleanModelField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "BOOLEAN"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 24
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x96

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setMinHeight(I)V

    const/16 p1, 0xb4

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setMaxHeight(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 30
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 31
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-BooleanModelField(Landroid/view/View;)V
    .locals 0

    .line 31
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->setObjectValue(Ljava/lang/Object;)V

    return-void
.end method
