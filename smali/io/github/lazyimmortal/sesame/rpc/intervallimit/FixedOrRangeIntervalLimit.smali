.class public Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;
.super Ljava/lang/Object;
.source "FixedOrRangeIntervalLimit.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;


# instance fields
.field private final fixedInt:Ljava/lang/Integer;

.field private final fixedOrRange:Ljava/lang/Boolean;

.field private final rangeMax:Ljava/lang/Integer;

.field private final rangeMin:Ljava/lang/Integer;

.field private time:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->time:Ljava/lang/Long;

    if-le p2, p3, :cond_0

    move p3, p2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 28
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 p1, 0x0

    .line 31
    :try_start_0
    aget-object v3, v2, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :try_start_1
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-le p2, p3, :cond_1

    move p3, p2

    .line 43
    :cond_1
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedInt:Ljava/lang/Integer;

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMin:Ljava/lang/Integer;

    add-int/2addr p3, v0

    .line 45
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMax:Ljava/lang/Integer;

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedOrRange:Ljava/lang/Boolean;

    goto :goto_2

    .line 50
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move p1, p3

    .line 54
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 55
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedInt:Ljava/lang/Integer;

    .line 57
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMin:Ljava/lang/Integer;

    .line 58
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMax:Ljava/lang/Integer;

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedOrRange:Ljava/lang/Boolean;

    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedInt:Ljava/lang/Integer;

    .line 63
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMin:Ljava/lang/Integer;

    .line 64
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMax:Ljava/lang/Integer;

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedOrRange:Ljava/lang/Boolean;

    :goto_2
    return-void
.end method


# virtual methods
.method public getInterval()Ljava/lang/Integer;
    .locals 3

    .line 70
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedOrRange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->fixedInt:Ljava/lang/Integer;

    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->rangeMax:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;->time:Ljava/lang/Long;

    return-void
.end method
