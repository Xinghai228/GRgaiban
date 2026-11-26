.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "EmptyModelField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final clickRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;->clickRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;->clickRunner:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$getView$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$getView$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 63
    const-string p1, "\u65e0\u914d\u7f6e\u9879"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "EMPTY"

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;->getName()Ljava/lang/String;

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

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x800013

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    const/16 v1, 0x96

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    const/16 v1, 0xb4

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxHeight(I)V

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 54
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;->clickRunner:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-EmptyModelField(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;->clickRunner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method synthetic lambda$getView$2$io-github-lazyimmortal-sesame-data-modelFieldExt-EmptyModelField(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 55
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u8b66\u544a"

    .line 56
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u786e\u8ba4\u6267\u884c\u8be5\u64cd\u4f5c\uff1f"

    .line 57
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField;)V

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/EmptyModelField$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
