.class Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StallShareIdLog"
.end annotation


# instance fields
.field shareId:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->userId:Ljava/lang/String;

    .line 874
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->shareId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 864
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 864
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getUserId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getShareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getShareId()Ljava/lang/String;

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

.method public getShareId()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 864
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getUserId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getShareId()Ljava/lang/String;

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

.method public setShareId(Ljava/lang/String;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->shareId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status.StallShareIdLog(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Status$StallShareIdLog;->getShareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
