.class public Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStatistics"
.end annotation


# instance fields
.field collected:I

.field helped:I

.field time:I

.field watered:I

.field wateredcount:I

.field wateringcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 208
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 208
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getTime()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getTime()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getCollected()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getCollected()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getHelped()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getHelped()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWatered()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWatered()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateredcount()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateredcount()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateringcount()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateringcount()I

    move-result p1

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getCollected()I
    .locals 1

    .line 211
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    return v0
.end method

.method public getHelped()I
    .locals 1

    .line 211
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 210
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    return v0
.end method

.method public getWatered()I
    .locals 1

    .line 211
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    return v0
.end method

.method public getWateredcount()I
    .locals 1

    .line 211
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    return v0
.end method

.method public getWateringcount()I
    .locals 1

    .line 211
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 208
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getTime()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getCollected()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getHelped()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWatered()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateredcount()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateringcount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public reset(I)V
    .locals 0

    .line 221
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    .line 223
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    .line 224
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    .line 225
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    .line 226
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    return-void
.end method

.method public setCollected(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    return-void
.end method

.method public setHelped(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    return-void
.end method

.method public setWatered(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    return-void
.end method

.method public setWateredcount(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    return-void
.end method

.method public setWateringcount(I)V
    .locals 0

    .line 208
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Statistics.TimeStatistics(time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getCollected()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", helped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getHelped()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWatered()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wateredcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateredcount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wateringcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->getWateringcount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
