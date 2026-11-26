.class Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;
.super Ljava/lang/Object;
.source "SlideCoordinates.java"


# instance fields
.field private final endX:F

.field private final endY:F

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->startX:F

    .line 14
    iput p2, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->startY:F

    .line 15
    iput p3, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->endX:F

    .line 16
    iput p4, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->endY:F

    return-void
.end method


# virtual methods
.method public getEndX()F
    .locals 1

    .line 9
    iget v0, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->endX:F

    return v0
.end method

.method public getEndY()F
    .locals 1

    .line 10
    iget v0, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->endY:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    .line 7
    iget v0, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->startX:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    .line 8
    iget v0, p0, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->startY:F

    return v0
.end method
