.class public Lio/github/lazyimmortal/sesame/ui/WatermarkView;
.super Landroid/view/View;
.source "WatermarkView.java"


# static fields
.field private static final HORIZONTAL_SPACING:I = 0x190

.field private static final VERTICAL_SPACING:I = 0x190


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private watermarkAlpha:I

.field private watermarkRotation:F

.field private watermarkText:Ljava/lang/String;

.field private watermarkTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 47
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkText:Ljava/lang/String;

    .line 48
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkAlpha()I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkAlpha:I

    .line 49
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkRotation()F

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkRotation:F

    .line 50
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkTextSize()I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkTextSize:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkTextSize:I

    int-to-float v1, v1

    .line 59
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    .line 56
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->setClickable(Z)V

    .line 66
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkText:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->getWidth()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->getHeight()I

    move-result v1

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 82
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    div-double/2addr v1, v3

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    int-to-double v7, v0

    div-double/2addr v7, v3

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit16 v4, v3, 0x190

    int-to-float v4, v4

    mul-int/lit16 v5, v2, 0x190

    int-to-float v5, v5

    .line 103
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget v4, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkRotation:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 109
    iget-object v4, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkText:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_2
    return-void
.end method

.method public refreshWatermark()V
    .locals 4

    .line 123
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkText:Ljava/lang/String;

    .line 124
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkAlpha()I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkAlpha:I

    .line 125
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkRotation()F

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkRotation:F

    .line 126
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkTextSize()I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkTextSize:I

    .line 128
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->watermarkTextSize:I

    int-to-float v1, v1

    .line 132
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    .line 129
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->invalidate()V

    return-void
.end method

.method public setWatermarkVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 142
    :goto_0
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/WatermarkView;->setVisibility(I)V

    return-void
.end method
