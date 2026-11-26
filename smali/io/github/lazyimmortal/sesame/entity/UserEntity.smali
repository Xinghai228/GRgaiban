.class public Lio/github/lazyimmortal/sesame/entity/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;
    }
.end annotation


# instance fields
.field private final account:Ljava/lang/String;

.field private final firstAlphaChar:Ljava/lang/String;

.field private final friendStatus:Ljava/lang/Integer;

.field private final friendTime:Ljava/lang/Long;

.field private final fullName:Ljava/lang/String;

.field private final headImageUrl:Ljava/lang/String;

.field private final isDelete:Ljava/lang/Boolean;

.field private final maskName:Ljava/lang/String;

.field private final nickName:Ljava/lang/String;

.field private final realName:Ljava/lang/String;

.field private final registerTime:Ljava/lang/Long;

.field private final remarkName:Ljava/lang/String;

.field private final showName:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 39
    invoke-direct/range {v0 .. v11}, Lio/github/lazyimmortal/sesame/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->userId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->account:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->friendStatus:Ljava/lang/Integer;

    .line 47
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->realName:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->nickName:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->remarkName:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->headImageUrl:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->firstAlphaChar:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->friendTime:Ljava/lang/Long;

    .line 53
    iput-object p10, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->registerTime:Ljava/lang/Long;

    .line 54
    iput-object p11, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->isDelete:Ljava/lang/Boolean;

    .line 56
    invoke-static {p6}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    if-eqz p4, :cond_1

    .line 62
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p6, "*"

    invoke-direct {p1, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p4

    .line 81
    :goto_1
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->showName:Ljava/lang/String;

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "|"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->maskName:Ljava/lang/String;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->fullName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstAlphaChar()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->firstAlphaChar:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendStatus()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->friendStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFriendTime()Ljava/lang/Long;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->friendTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImageUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->headImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDelete()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->isDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaskName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->maskName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTime()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->registerTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getRemarkName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->remarkName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;->userId:Ljava/lang/String;

    return-object v0
.end method
