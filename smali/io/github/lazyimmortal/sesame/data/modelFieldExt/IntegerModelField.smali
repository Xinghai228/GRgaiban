.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "IntegerModelField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected final maxLimit:Ljava/lang/Integer;

.field protected final minLimit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->minLimit:Ljava/lang/Integer;

    .line 29
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->maxLimit:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->minLimit:Ljava/lang/Integer;

    .line 35
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->maxLimit:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getConfigValue()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLimit()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->maxLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinLimit()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->minLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "INTEGER"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 72
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    sget v1, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    sget v1, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x800013

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    const/16 p1, 0x96

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    const/16 p1, 0xb4

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxHeight(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 82
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-IntegerModelField(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->showEditDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->defaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 58
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->defaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 61
    :goto_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->minLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 64
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->maxLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 67
    :cond_2
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->value:Ljava/lang/Object;

    return-void
.end method
