.class public Lio/github/lazyimmortal/sesame/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/widget/Toast;)V

    return-void
.end method

.method private static show(Landroid/widget/Toast;)V
    .locals 3

    .line 20
    invoke-virtual {p0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getToastOffsetY()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
