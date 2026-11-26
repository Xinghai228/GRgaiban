.class public Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
.super Ljava/lang/Object;
.source "SimpleViewImage.java"


# static fields
.field public static final CONTENT_DESCRIPTION:Ljava/lang/String; = "contentDescription"

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private children:[Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

.field private indexOfParent:I

.field private final originView:Landroid/view/View;

.field private parent:Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->indexOfParent:I

    .line 22
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public X()I
    .locals 2

    .line 51
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->locationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public Y()I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->locationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public attribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "contentDescription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public childAt(I)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 2

    .line 75
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->childCount()I

    move-result v0

    if-ltz v0, :cond_2

    .line 78
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->children:[Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->childCount()I

    move-result v0

    new-array v0, v0, [Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->children:[Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    .line 81
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->children:[Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    new-instance v1, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;-><init>(Landroid/view/View;)V

    .line 87
    iput-object p0, v1, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->parent:Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    .line 88
    iput p1, v1, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->indexOfParent:I

    .line 89
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->children:[Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    aput-object v1, v0, p1

    return-object v1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can not parse child node for none ViewGroup object!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public childCount()I
    .locals 2

    .line 65
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->childCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 121
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->childAt(I)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getIndexOfParent()I
    .locals 1

    .line 165
    iget v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->indexOfParent:I

    return v0
.end method

.method public getOriginView()Landroid/view/View;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    return-object v0
.end method

.method public getParentNode()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->parent:Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    return-object v0
.end method

.method public getParentNode(I)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getParentNode()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getParentNode()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object v1

    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    .line 108
    invoke-virtual {v1, p1}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getParentNode(I)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 29
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public locationOnScreen()[I
    .locals 2

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [I

    .line 43
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->originView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method public setIndexOfParent(I)V
    .locals 0

    .line 173
    iput p1, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->indexOfParent:I

    return-void
.end method

.method public setParent(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->parent:Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    return-void
.end method

.method public xpath2One(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 2

    .line 130
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->evaluate(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    return-object p1

    .line 134
    :cond_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->tryGetTopView(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object p1

    return-object p1
.end method
