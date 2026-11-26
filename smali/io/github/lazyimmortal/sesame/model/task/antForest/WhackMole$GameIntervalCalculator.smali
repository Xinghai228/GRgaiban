.class Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameIntervalCalculator;
.super Ljava/lang/Object;
.source "WhackMole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameIntervalCalculator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDynamicInterval(JI)J
    .locals 2

    mul-int/lit8 p2, p2, 0x2

    int-to-long v0, p2

    .line 85
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static calculateNextDelay(JIIJ)J
    .locals 2

    .line 89
    rem-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long p0, p0, v0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    int-to-long p2, p3

    .line 90
    div-long/2addr p4, p2

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x64

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method
