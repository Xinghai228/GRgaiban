.class public Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;
.super Ljava/lang/Object;
.source "DefaultIntervalLimit.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;


# instance fields
.field private final interval:Ljava/lang/Integer;

.field private time:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->time:Ljava/lang/Long;

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->interval:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getInterval()Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getTime()Ljava/lang/Long;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getInterval()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->interval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getInterval()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getTime()Ljava/lang/Long;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->time:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultIntervalLimit(interval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;->getTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
