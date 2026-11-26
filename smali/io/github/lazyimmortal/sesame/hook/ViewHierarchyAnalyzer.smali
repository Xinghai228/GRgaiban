.class public Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;
.super Ljava/lang/Object;
.source "ViewHierarchyAnalyzer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewHierarchyAnalyzer"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findActualSliderView(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Landroid/view/View;
    .locals 8

    .line 70
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getOriginView()Landroid/view/View;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 76
    const-string v0, "========= \u5206\u6790\u6ed1\u5757\u7236\u89c6\u56fe\u5c42\u6b21\u7ed3\u6784 ========="

    const-string v1, "ViewHierarchyAnalyzer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;->logViewHierarchy(Landroid/view/View;I)V

    .line 78
    const-string v2, "========= \u89c6\u56fe\u5c42\u6b21\u7ed3\u6784\u5206\u6790\u7ed3\u675f ========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;->findSliderInGroup(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x2

    .line 83
    new-array v3, v2, [I

    .line 84
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v5, v7, v6

    aput-object v3, v7, v2

    .line 85
    const-string v0, "\u627e\u5230\u53ef\u62d6\u52a8\u6ed1\u5757\u89c6\u56fe: %s \u4f4d\u7f6e=[%d,%d]"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "\u65e0\u6cd5\u627e\u5230\u5b9e\u9645\u7684\u6ed1\u5757\u89c6\u56fe\u3002\u8bf7\u68c0\u67e5\u4e0a\u9762\u7684\u5c42\u6b21\u7ed3\u6784\u65e5\u5fd7\u3002"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private static findSliderInGroup(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 104
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    const-string p0, "ViewHierarchyAnalyzer"

    const-string v0, "\u627e\u5230\u6ed1\u5757\u56fe\u6807 (ImageView)\u3002\u8fd4\u56de\u5176\u7236\u89c6\u56fe\u4f5c\u4e3a\u53ef\u62d6\u52a8\u89c6\u56fe\u3002"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/View;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    return-object v2

    .line 113
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 114
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;->findSliderInGroup(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static logViewHierarchy(Landroid/view/View;I)V
    .locals 13

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 27
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 34
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    const-string v3, "ID: (\u65e0)"

    :goto_1
    const/4 v4, 0x2

    .line 39
    new-array v5, v4, [I

    .line 40
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 41
    aget v6, v5, v1

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v6, v12, v1

    aput-object v5, v12, v7

    aput-object v8, v12, v4

    const/4 v5, 0x3

    aput-object v9, v12, v5

    const/4 v6, 0x4

    aput-object v10, v12, v6

    const/4 v8, 0x5

    aput-object v11, v12, v8

    .line 41
    const-string v9, "loc=[%d,%d] size=[%dx%d] visible=%b enabled=%b"

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    instance-of v11, p0, Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 47
    move-object v11, p0

    check-cast v11, Landroid/widget/TextView;

    .line 48
    const-string v12, "text=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v12, "\' desc=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v11}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v1

    aput-object v2, v8, v7

    aput-object v3, v8, v4

    aput-object v9, v8, v5

    aput-object v10, v8, v6

    const-string v0, "%s- %s, %s, %s %s"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewHierarchyAnalyzer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    .line 58
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;->logViewHierarchy(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
