.class public Lio/github/lazyimmortal/sesame/entity/CustomOption;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "CustomOption.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 9
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/CustomOption;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/CustomOption;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAntDodoBookMedalOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "generateBookMedal"

    const-string v3, "\u81ea\u52a8\u5408\u6210\u56fe\u9274\u52cb\u7ae0"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "collectHistoryAnimal"

    const-string v3, "\u81ea\u52a8\u6536\u96c6\u5386\u53f2\u7269\u79cd"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAntDodoPropList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "COLLECT_TIMES_7_DAYS"

    const-string v3, "\u62bd\u5361\u9053\u5177"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "COLLECT_HISTORY_ANIMAL_7_DAYS"

    const-string v3, "\u5386\u53f2\u56fe\u9274\u968f\u673a\u5361\u9053\u5177"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "COLLECT_TO_FRIEND_TIMES_7_DAYS"

    const-string v3, "\u62bd\u597d\u53cb\u5361\u9053\u5177"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "UNIVERSAL_CARD_7_DAYS"

    const-string v3, "\u4e07\u80fd\u5361\u9053\u5177"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAntFarmFamilyOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "familySign"

    const-string v3, "\u6bcf\u65e5\u7b7e\u5230"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "familyFeed"

    const-string v3, "\u5e2e\u5582\u6210\u5458"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "familyEatTogether"

    const-string v3, "\u7f8e\u98df\u8bf7\u5ba2"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "familyClaimReward"

    const-string v3, "\u9886\u53d6\u5956\u52b1"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "deliverMsgSend"

    const-string v3, "\u9053\u65e9\u5b89"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "assignRights"

    const-string v3, "\u9876\u6881\u67f1"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "shareToFriends"

    const-string v3, "\u5206\u4eab\u7ed9\u597d\u53cb"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAntInsuranceOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "beanSignIn"

    const-string v3, "\u5b89\u5fc3\u8c46\u7b7e\u5230"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "beanExchangeGoldenTicket"

    const-string v3, "\u5b89\u5fc3\u8c46\u5151\u6362\u9ec4\u91d1\u7968"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "beanExchangeBubbleBoost"

    const-string v3, "\u5b89\u5fc3\u8c46\u5151\u6362\u65f6\u5149\u52a0\u901f\u5668"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "gainSumInsured"

    const-string v3, "\u4fdd\u969c\u91d1\u9886\u53d6"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getContinuousUseCardOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "doubleClick"

    const-string v3, "\u4f7f\u7528\u9650\u65f6\u53cc\u51fb\u5361\u548c\u5151\u6362\u4f7f\u752831\u5929\u53cc\u51fb\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "robExpandCard"

    const-string v3, "\u5148\u73b0\u500d\u7387\u65e0\u751f\u6548\u5219\u7528\u6700\u9ad8\u500d\u6536\u80fd\u91cf\u500d\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "shield"

    const-string v3, "\u5151\u6362\u548c\u4f7f\u7528\u9650\u65f6\u4fdd\u62a4\u7f69\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "stealthCard"

    const-string v3, "\u5151\u6362\u548c\u4f7f\u7528\u9650\u5236\u9690\u8eab\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getEcoLifeOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "tick"

    const-string v3, "\u7eff\u8272\u884c\u52a8\u6253\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "dish"

    const-string v3, "\u5149\u76d8\u884c\u52a8\u6253\u5361"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getUseAccelerateToolOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "useAccelerateToolContinue"

    const-string v3, "\u8fde\u7eed\u4f7f\u7528"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    const-string v2, "useAccelerateToolWhenMaxEmotion"

    const-string v3, "\u4ec5\u5728\u6ee1\u72b6\u6001\u65f6\u4f7f\u7528"

    invoke-direct {v1, v2, v3}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
