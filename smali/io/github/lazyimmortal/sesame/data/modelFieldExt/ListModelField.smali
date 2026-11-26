.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "ListModelField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final typeReference:Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$1;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;->typeReference:Lcom/fasterxml/jackson/core/type/TypeReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "LIST"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 36
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    sget v1, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 40
    sget v1, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x800013

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    const/16 p1, 0x96

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    const/16 p1, 0xb4

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMaxHeight(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 46
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-ListModelField(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->showEditDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-void
.end method
