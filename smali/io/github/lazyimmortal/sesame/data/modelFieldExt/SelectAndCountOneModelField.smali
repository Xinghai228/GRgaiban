.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "SelectAndCountOneModelField.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Lio/github/lazyimmortal/sesame/entity/KVNode<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;",
        "Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;"
    }
.end annotation


# instance fields
.field private expandValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation
.end field

.field private selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/github/lazyimmortal/sesame/entity/KVNode;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/entity/KVNode<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/github/lazyimmortal/sesame/entity/KVNode;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/entity/KVNode<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->expandValue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 78
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    invoke-direct {v0, p1, p2}, Lio/github/lazyimmortal/sesame/entity/KVNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->value:Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->value:Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getExpandValue()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getExpandValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpandValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->expandValue:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$SelectListFunc;->getList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "SELECT_AND_COUNT_ONE"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 49
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    sget v1, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    sget v1, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x800013

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    const/16 p1, 0x96

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    const/16 p1, 0x28

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 58
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectAndCountOneModelField(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->RADIO:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {v0, p1, p0, v1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->defaultValue:Ljava/lang/Object;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method
