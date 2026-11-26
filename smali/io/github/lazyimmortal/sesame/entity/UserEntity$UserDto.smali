.class public Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;
.super Ljava/lang/Object;
.source "UserEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/entity/UserEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDto"
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private firstAlphaChar:Ljava/lang/String;

.field private friendStatus:Ljava/lang/Integer;

.field private friendTime:Ljava/lang/Long;

.field private headImageUrl:Ljava/lang/String;

.field private isDelete:Ljava/lang/Boolean;

.field private nickName:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private registerTime:Ljava/lang/Long;

.field private remarkName:Ljava/lang/String;

.field private showName:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 86
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendStatus()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendTime()Ljava/lang/Long;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRegisterTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRegisterTime()Ljava/lang/Long;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getIsDelete()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getIsDelete()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getAccount()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRealName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getNickName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRemarkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRemarkName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getShowName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_17

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_a
    return v2

    :cond_18
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFirstAlphaChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFirstAlphaChar()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_19

    if-eqz p1, :cond_1a

    goto :goto_b

    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    :goto_b
    return v2

    :cond_1a
    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstAlphaChar()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->firstAlphaChar:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendStatus()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFriendTime()Ljava/lang/Long;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeadImageUrl()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->headImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDelete()Ljava/lang/Boolean;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->isDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTime()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->registerTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getRemarkName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->remarkName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 86
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendStatus()Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendTime()Ljava/lang/Long;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRegisterTime()Ljava/lang/Long;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getIsDelete()Ljava/lang/Boolean;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    const/16 v3, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getAccount()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_5

    const/16 v3, 0x2b

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRealName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_6

    const/16 v3, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getNickName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_7

    const/16 v3, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRemarkName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_8

    const/16 v3, 0x2b

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getShowName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_9

    const/16 v3, 0x2b

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_a

    const/16 v3, 0x2b

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFirstAlphaChar()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->account:Ljava/lang/String;

    return-void
.end method

.method public setFirstAlphaChar(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->firstAlphaChar:Ljava/lang/String;

    return-void
.end method

.method public setFriendStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setFriendTime(Ljava/lang/Long;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendTime:Ljava/lang/Long;

    return-void
.end method

.method public setHeadImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->headImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsDelete(Ljava/lang/Boolean;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->isDelete:Ljava/lang/Boolean;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->realName:Ljava/lang/String;

    return-void
.end method

.method public setRegisterTime(Ljava/lang/Long;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->registerTime:Ljava/lang/Long;

    return-void
.end method

.method public setRemarkName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->remarkName:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->showName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->userId:Ljava/lang/String;

    return-void
.end method

.method public toEntity()Lio/github/lazyimmortal/sesame/entity/UserEntity;
    .locals 13

    .line 114
    new-instance v12, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->userId:Ljava/lang/String;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->account:Ljava/lang/String;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendStatus:Ljava/lang/Integer;

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->realName:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->nickName:Ljava/lang/String;

    iget-object v6, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->remarkName:Ljava/lang/String;

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->headImageUrl:Ljava/lang/String;

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->firstAlphaChar:Ljava/lang/String;

    iget-object v9, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->friendTime:Ljava/lang/Long;

    iget-object v10, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->registerTime:Ljava/lang/Long;

    iget-object v11, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->isDelete:Ljava/lang/Boolean;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/github/lazyimmortal/sesame/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserEntity.UserDto(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", friendStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", realName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remarkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRemarkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstAlphaChar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFirstAlphaChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", friendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getFriendTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getRegisterTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getIsDelete()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
