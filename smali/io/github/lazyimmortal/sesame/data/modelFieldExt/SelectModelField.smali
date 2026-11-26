.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;
.super Lio/github/lazyimmortal/sesame/data/ModelField;
.source "SelectModelField.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
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

.field private selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3, p5}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->expandValue:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p5}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->expandValue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getExpandValue()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getExpandValue()Ljava/util/List;

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

    .line 60
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->selectListFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->expandValue:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;->getList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "SELECT"

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget v2, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x96

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/16 v2, 0x28

    .line 70
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    const/16 v2, 0x10

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget v3, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v5, 0x2

    .line 76
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    sget v4, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 81
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5df2\u8bbe\u7f6e\u6570\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v5, 0x1

    invoke-static {v5, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 84
    invoke-virtual {v3, p1, v1, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectModelField(Landroid/widget/TextView;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u8bbe\u7f6e\u6570\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$getView$1$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectModelField(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 6

    .line 89
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;Landroid/widget/TextView;)V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->setOnDismissCallback(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "deleteFriendList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getExpandValue()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
