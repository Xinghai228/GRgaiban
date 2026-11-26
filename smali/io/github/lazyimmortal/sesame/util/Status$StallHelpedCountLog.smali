.class Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StallHelpedCountLog"
.end annotation


# instance fields
.field beHelpedCount:I

.field helpedCount:I

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 881
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->helpedCount:I

    .line 882
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->beHelpedCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 881
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->helpedCount:I

    .line 882
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->beHelpedCount:I

    .line 888
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 878
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 878
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getHelpedCount()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getHelpedCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getBeHelpedCount()I

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getBeHelpedCount()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public getBeHelpedCount()I
    .locals 1

    .line 882
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->beHelpedCount:I

    return v0
.end method

.method public getHelpedCount()I
    .locals 1

    .line 881
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->helpedCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 878
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getHelpedCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getBeHelpedCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getUserId()Ljava/lang/String;

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

.method public setBeHelpedCount(I)V
    .locals 0

    .line 878
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->beHelpedCount:I

    return-void
.end method

.method public setHelpedCount(I)V
    .locals 0

    .line 878
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->helpedCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status.StallHelpedCountLog(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", helpedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getHelpedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beHelpedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallHelpedCountLog;->getBeHelpedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
