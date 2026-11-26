.class public Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;
.super Ljava/lang/Object;
.source "GameIntervalCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicInterval"
.end annotation


# instance fields
.field private final baseInterval:J

.field private final randomRange:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->baseInterval:J

    .line 27
    iput-wide p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->randomRange:J

    return-void
.end method


# virtual methods
.method public getBaseInterval()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->baseInterval:J

    return-wide v0
.end method

.method public getRandomRange()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/GameIntervalCalculator$DynamicInterval;->randomRange:J

    return-wide v0
.end method
