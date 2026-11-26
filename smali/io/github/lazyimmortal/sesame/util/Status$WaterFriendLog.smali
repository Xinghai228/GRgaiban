.class Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaterFriendLog"
.end annotation


# instance fields
.field userId:Ljava/lang/String;

.field waterCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 802
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->waterCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 802
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->waterCount:I

    .line 808
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 799
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 799
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getWaterCount()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getWaterCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 801
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWaterCount()I
    .locals 1

    .line 802
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->waterCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 799
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getWaterCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getUserId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->userId:Ljava/lang/String;

    return-void
.end method

.method public setWaterCount(I)V
    .locals 0

    .line 799
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->waterCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status.WaterFriendLog(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$WaterFriendLog;->getWaterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
