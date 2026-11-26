.class public Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator;
.super Ljava/lang/Object;
.source "GameIntervalCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDynamicInterval(JI)Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;
    .locals 4

    const-wide/16 v0, 0x7d0

    sub-long/2addr p0, v0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 53
    new-instance p0, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;-><init>(JJ)V

    return-object p0

    :cond_0
    sub-int/2addr p2, v0

    int-to-long v0, p2

    .line 56
    div-long/2addr p0, v0

    long-to-double p0, p0

    const-wide v0, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, p0

    double-to-long v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double p0, p0, v2

    double-to-long p0, p0

    const-wide/16 v2, 0x320

    .line 65
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    .line 66
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 68
    new-instance p2, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;

    invoke-direct {p2, v0, v1, p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;-><init>(JJ)V

    return-object p2
.end method

.method public static calculateNextDelay(Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;IIJ)J
    .locals 6

    sub-int/2addr p2, p1

    if-gtz p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-long p1, p2

    .line 91
    div-long/2addr p3, p1

    const-wide/16 p1, 0x1f4

    sub-long/2addr p3, p1

    .line 94
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->getRandomRange()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->getRandomRange()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextLong(JJ)J

    move-result-wide v0

    .line 95
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->getBaseInterval()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 98
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 99
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method
