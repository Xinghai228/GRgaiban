.class public Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RecallAnimalType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$HireAnimalType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalWay;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$NotifyFriendType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$DonationType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ChickenChefCookStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AntFarm"

.field private static donationCompetitionDisabledUid:Ljava/lang/String;


# instance fields
.field private AntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AutoAntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoAntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoAntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private IPexchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private acceptGift:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

.field private autoChickenChefCook:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private benevolenceScore:D

.field private chickenChef:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private chickenChefCookStrategy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private chickenDiary:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private competition:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private competitionDailyLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private competitionLeadEggs:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private competitionStarNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private competitionStealMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private donationType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private drawMachine:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private enableSleep:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private family:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private farmGameTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

.field private farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

.field private feedAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private feedFriendAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private feedFriendAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private finalScore:D

.field private foodInTrough:I

.field private foodStock:I

.field private foodStockLimit:I

.field private gameCenterBuyMallItem:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private gameCenterBuyMallItemList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private getFeedList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private giftAiKitchenIngredientFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private harvestBenevolenceScore:D

.field private harvestProduce:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private hireAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private hireAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private kitchen:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private notInviteList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private notifyFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private notifyFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private ornamentsDressUp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private ornamentsDressUpDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private ornamentsDressUpList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

.field private ownerFarmId:Ljava/lang/String;

.field private ownerGroupId:Ljava/lang/String;

.field private ownerUserId:Ljava/lang/String;

.field private recallAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private receiveFarmTaskAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private receiveFarmToolReward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private recordFarmGame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private rewardFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

.field private rewardProductNum:Ljava/lang/String;

.field private sendBackAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private sendBackAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private sendBackAnimalWay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field skuInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private sleepMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private sleepTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

.field private stealRankMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private useAccelerateTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useAccelerateToolOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private useBigEaterTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useNewEggTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useSpecialFood:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useSpecialFoodCountLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private visitFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;


# direct methods
.method public static synthetic $r8$lambda$301r_jhZKN8E3cZcmzK2GLqgrAc(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUpNow()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DX-BJLJpbdSEyLaZ5uzXB8g0UB4(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoHireAnimal()V

    return-void
.end method

.method public static synthetic $r8$lambda$FRkXZOHw6xQ1ZyyhxSsTTBMXXlM(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoFeedAnimal()V

    return-void
.end method

.method public static synthetic $r8$lambda$RRGLsbWEuNGMWiNtbBWBWpwQwbU(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalSleepNow()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_1bCF9i9ad6gxFrSJc32yYvNEU4(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    .line 48
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->finalScore:D

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodInTrough:I

    .line 3061
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->skuInfo:Ljava/util/Map;

    return-void
.end method

.method private BuyMallItem(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 3163
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->skuInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3164
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getAllSkuInfo()V

    .line 3166
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->skuInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3168
    const-string p1, "\u5c0f\u9e21\u4e50\u56ed\ud83c\udf90\u627e\u4e0d\u5230\u8981\u5151\u5956\u7684\u6743\u76ca\uff01"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 3169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3172
    :cond_1
    :try_start_0
    const-string v2, "skuName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3173
    const-string v3, "itemStatusList"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 3174
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 3175
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3176
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_USER_HOLD_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3177
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e50\u5e01\u5151\u5956\ud83c\udf90["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u505c\u6b62:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->nickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 3178
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "farm::buyLimit::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 3181
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3184
    :cond_5
    const-string v3, "spuId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3185
    invoke-static {v0, p1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->BuyMallItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 3186
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3188
    :cond_6
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getSkuInfoBySpuId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 3190
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "BuyMallItem err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3193
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static BuyMallItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 3216
    const-string v0, "errorMessage"

    .line 0
    const-string v1, "farm::buyLimit::"

    .line 3216
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->buyMallItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3218
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3220
    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 3224
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3226
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "BuyMallItem err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 3229
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static BuyMallItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "\u4e50\u5e01\u5151\u5956\ud83c\udf90["

    const/4 v1, 0x0

    .line 3198
    :try_start_0
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->BuyMallItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3199
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->gameCenterBuyMallItemToday(Ljava/lang/String;)V

    .line 3200
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->getGameCenterBuyMallItemCountToday(Ljava/lang/String;)I

    move-result p0

    .line 3201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]#\u7b2c"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u6b21"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3202
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3204
    :cond_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->gameCenterBuyMallItemToday(Ljava/lang/String;)V

    .line 3205
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3208
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p2, "BuyMallItem err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3211
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private acceptGift()V
    .locals 3

    const-string v0, "\u6536\u53d6\u9ea6\u5b50\ud83c\udf3e["

    .line 2896
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->acceptGift()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2897
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2898
    const-string v2, "receiveFoodNum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2902
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "acceptGift err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private add2FoodStock(I)V
    .locals 1

    .line 2802
    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2803
    iget p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    if-le v0, p1, :cond_0

    .line 2804
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2806
    :cond_0
    iget p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2807
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    :cond_1
    return-void
.end method

.method private animalSleep()Ljava/lang/Boolean;
    .locals 3

    .line 1125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->sleep()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1126
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    const-string v0, "\u5c0f\u9e21\u7761\u89c9\ud83d\udecc"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1131
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "animalSleep err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private animalSleepAndWake()V
    .locals 10

    .line 923
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enableSleep:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string v0, "\u5c0f\u9e21\u7761\u89c9\u5f00\u5173\u5df2\u5173\u95ed\uff0c\u8df3\u8fc7\u7761\u89c9\u903b\u8f91"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sleepTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 931
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUpNow()Ljava/lang/Boolean;

    .line 932
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTodayCalendarByTimeStr(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 936
    :cond_2
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sleepMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 937
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 938
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 939
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 940
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 942
    const-string v0, "\u5c0f\u9e21\u7761\u89c9\u8bbe\u7f6e\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 945
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getNow()Ljava/util/Calendar;

    move-result-object v1

    .line 946
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 947
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v9

    if-lez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    .line 950
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasSleepToday()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 953
    :cond_6
    const-string v0, "\u5df2\u9519\u8fc7\u5c0f\u9e21\u4eca\u65e5\u7761\u89c9\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v0, :cond_9

    .line 958
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasSleepToday()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 959
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalSleepNow()Ljava/lang/Boolean;

    .line 961
    :cond_8
    invoke-direct {p0, v5, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUpTime(J)V

    return-void

    :cond_9
    const/16 v0, 0xb

    const/16 v7, -0x18

    .line 965
    invoke-virtual {v2, v0, v7}, Ljava/util/Calendar;->add(II)V

    .line 966
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_a

    .line 967
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUpTime(J)V

    .line 969
    :cond_a
    invoke-direct {p0, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalSleepTime(J)V

    .line 970
    invoke-direct {p0, v5, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUpTime(J)V

    return-void
.end method

.method private animalSleepNow()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 1077
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1078
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1081
    :cond_0
    const-string v2, "sleepNotifyInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1082
    const-string v2, "canSleep"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    const-string v1, "\u5c0f\u9e21\u65e0\u9700\u7761\u89c9\ud83d\udecc"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1084
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_1
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->family:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1087
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familySleep(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalSleep()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1091
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "animalSleepNow err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1094
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private animalSleepTime(J)V
    .locals 5

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AS|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda6;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AS"

    invoke-direct {v1, v0, v4, v2, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u5b9a\u65f6\u7761\u89c9\ud83d\udecc["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentMaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u5728["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u6267\u884c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private animalWakeUp()Ljava/lang/Boolean;
    .locals 3

    .line 1139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->wakeUp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1140
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    const-string v0, "\u5c0f\u9e21\u8d77\u5e8a\ud83d\udd06"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1145
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "animalWakeUp err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private animalWakeUpNow()Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 1099
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1100
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1103
    :cond_0
    const-string v2, "ownAnimal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1104
    const-string v3, "sleepInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1105
    const-string v3, "countDown"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_1
    const-string v3, "sleepBeginTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sleepMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    .line 1109
    const-string v2, "spaceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1110
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyWakeUp()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1112
    :cond_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalWakeUp()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1114
    :cond_3
    const-string v1, "\u5c0f\u9e21\u65e0\u9700\u8d77\u5e8a\ud83d\udd06"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1117
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "animalWakeUpNow err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1120
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private animalWakeUpTime(J)V
    .locals 5

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AW|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda10;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AW"

    invoke-direct {v1, v0, v4, v2, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u5b9a\u65f6\u8d77\u5e8a\ud83d\udd06["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentMaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u5728["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u6267\u884c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private assignFamilyMember(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe1[\u4f7f\u7528\u9876\u6881\u67f1\u7279\u6743] "

    .line 4201
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4202
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4205
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4206
    const-string v1, "assignConfigList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4207
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 4208
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "assignAction"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->assignFamilyMember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4209
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "assignDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4213
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "assignFamilyMember err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private autoFeedAnimal()V
    .locals 14

    .line 1024
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1030
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1031
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0x3e8

    if-ge v8, v3, :cond_1

    aget-object v11, v2, v8

    .line 1032
    iget-object v12, v11, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->startEatTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v0, v12

    div-long/2addr v12, v9

    long-to-double v9, v12

    iget-object v12, v11, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->consumeSpeed:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double v9, v9, v12

    add-double/2addr v4, v9

    .line 1033
    iget-object v9, v11, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->consumeSpeed:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodInTrough:I

    int-to-double v2, v2

    sub-double/2addr v2, v4

    div-double/2addr v2, v6

    double-to-long v2, v2

    mul-long v2, v2, v9

    add-long/2addr v0, v2

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FA|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->removeChildTask(Ljava/lang/String;)V

    .line 1040
    :cond_2
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda7;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "FA"

    invoke-direct {v3, v2, v6, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6dfb\u52a0\u8e72\u70b9\u6295\u5582\ud83e\udd63["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentMaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u5728["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u6267\u884c"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void
.end method

.method private autoHireAnimal()V
    .locals 8

    .line 3675
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 3676
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3677
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3680
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HIRE|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3681
    invoke-virtual {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3682
    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->beHiredEndTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 3683
    new-instance v5, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    const-string v6, "HIRE"

    new-instance v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda4;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-direct {v5, v4, v6, v7, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 3684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u8e72\u70b9\u96c7\u4f63\ud83d\udc77\u5728["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u6267\u884c"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3688
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "autoHireAnimal err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private canDonationToday()Ljava/lang/Boolean;
    .locals 8

    .line 2088
    const-string v0, "farm::donation"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    .line 2089
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    return-object v3

    .line 2092
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getCharityAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2093
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 2096
    :cond_1
    const-string v4, "charityRecords"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2097
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 2098
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2100
    :cond_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2101
    const-string v2, "charityTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isLessThanNowOfDays(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2103
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2105
    :cond_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2107
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "canDonationToday err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v3
.end method

.method private competition()V
    .locals 30

    move-object/from16 v1, p0

    .line 1497
    const-string v0, "seasonDonationProgress"

    const-string v2, "rewardStarNum"

    const-string v3, "userDonationRankList"

    const-string v4, "isParticipateCompetition"

    const-string v5, "exitDonationCompetition"

    const-string v6, "donationRankHomeInfo"

    .line 0
    const-string v7, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f00\u542f(S2\u7231\u5fc3\u96c6\u7ed3\u53f7)\uff1a"

    const-string v8, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f00\u542f(S1\u6350\u86cb\u6392\u4f4d\u8d5b)\uff1a"

    .line 1497
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_28

    .line 1498
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_13

    .line 1502
    :cond_0
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v12, "memo"

    if-eqz v11, :cond_1

    .line 1503
    :try_start_1
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1506
    new-instance v5, Lorg/json/JSONObject;

    const-string v11, "OPEN"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->setDonationCompetitionConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1507
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1508
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1509
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1517
    :cond_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1518
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1521
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->participateCompetition()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1522
    invoke-static {v10, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1523
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1531
    :cond_2
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveReward()V

    .line 1535
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveCompetitionTask()V

    const/16 v4, 0x14

    .line 1541
    new-array v5, v4, [I

    .line 1542
    new-array v7, v4, [I

    .line 1543
    new-array v8, v4, [Ljava/lang/String;

    .line 1547
    iget-object v11, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionStarNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1548
    iget-object v12, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDailyLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1552
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v13

    .line 1555
    new-instance v14, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryAllMemberRankInfo()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1556
    invoke-static {v10, v14}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    move-object v9, v14

    .line 1560
    :goto_0
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v14, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u672a\u67e5\u8be2\u5230\u6350\u8d60\u6392\u884c\u4fe1\u606f"

    if-nez v10, :cond_4

    .line 1561
    :try_start_2
    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1564
    :cond_4
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1565
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1566
    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1569
    :cond_5
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1570
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_12

    :cond_6
    if-nez v11, :cond_7

    .line 1575
    const-string v2, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u76ee\u6807\u661f\u7ea7\u4e3a0\u8df3\u8fc7\u4fdd\u5e95\u6350\u86cb\u903b\u8f91"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    move-object/from16 v22, v0

    move-object v13, v1

    move-object/from16 v27, v6

    move-object/from16 v25, v14

    goto/16 :goto_d

    :cond_7
    const/16 v16, 0x0

    move-object/from16 v22, v0

    move-object/from16 v9, v16

    move-object v15, v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 1577
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ge v10, v4, :cond_d

    .line 1578
    :try_start_3
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v24, v3

    .line 1579
    const-string v3, "userId"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v14

    .line 1580
    const-string v14, "nickName"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1582
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v26, :cond_8

    :try_start_4
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v27, v6

    move/from16 v29, v26

    move-object/from16 v26, v2

    move/from16 v2, v29

    goto :goto_2

    :cond_8
    move-object/from16 v26, v2

    :try_start_5
    const-string v2, "rewardContributionNum"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v27, v6

    .line 1583
    :goto_2
    const-string v6, "donationNum"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1584
    const-string v1, "rankOrder"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1585
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v3

    const-string v3, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f53\u524d\u6392\u540d"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u6350\u86cb"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u9884\u8ba1\u661f\u661f\u6216\u7231\u5fc3\u503c"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v20, v6

    goto :goto_3

    :cond_9
    move-object/from16 v28, v3

    :goto_3
    if-nez v10, :cond_a

    move/from16 v19, v1

    move v3, v2

    move/from16 v18, v6

    move-object v9, v14

    move-object/from16 v15, v28

    goto :goto_4

    :cond_a
    move/from16 v3, v17

    :goto_4
    if-le v2, v11, :cond_b

    move/from16 v19, v1

    move/from16 v17, v2

    move/from16 v18, v6

    move-object v9, v14

    move-object/from16 v15, v28

    goto :goto_5

    :cond_b
    if-gt v2, v3, :cond_c

    const/16 v1, 0x14

    if-ge v0, v1, :cond_c

    .line 1607
    aput v6, v5, v0

    .line 1608
    aput-object v14, v8, v0

    .line 1609
    aput v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_c
    move/from16 v17, v3

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v24

    move-object/from16 v14, v25

    move-object/from16 v2, v26

    move-object/from16 v6, v27

    goto/16 :goto_1

    :cond_d
    move-object/from16 v27, v6

    move-object/from16 v25, v14

    .line 1613
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u4fdd\u5e95\u6a21\u5f0f\u76ee\u6807\u661f\u661f\u6216\u7231\u5fc3\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v17

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5df2\u6350\u86cb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move/from16 v15, v17

    move/from16 v2, v18

    .line 1618
    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, 0xb

    .line 1619
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    .line 1620
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v3, 0x14

    if-gt v4, v3, :cond_26

    if-ne v4, v3, :cond_f

    const/4 v3, 0x1

    if-lt v1, v3, :cond_10

    goto/16 :goto_11

    :cond_f
    const/4 v3, 0x1

    .line 1628
    :cond_10
    const-string v1, "\u517b\u8001\u4fdd\u5e95\u6a21\u5f0f"

    const-string v4, "\u5f53\u524d\u6350\u86cb"

    const-string v6, "\u6350\u86cb"

    const-string v9, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u76ee\u6807\u661f\u661f\u6216\u7231\u5fc3\u503c"

    move/from16 v10, v19

    move/from16 v11, v21

    if-le v11, v10, :cond_1b

    if-lez v2, :cond_1b

    move/from16 v10, v20

    sub-int v18, v2, v10

    add-int/lit8 v11, v18, 0x1

    .line 1630
    const-string v3, "\u5c1d\u8bd5\u518d\u6350\u86cb"

    if-ge v2, v12, :cond_13

    if-lez v11, :cond_11

    .line 1632
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v13, p0

    .line 1633
    :try_start_7
    invoke-direct {v13, v1, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    goto :goto_7

    :cond_11
    move-object/from16 v13, p0

    :cond_12
    :goto_7
    move v5, v2

    move-object v3, v6

    move-object v2, v9

    goto/16 :goto_c

    :cond_13
    move-object/from16 v13, p0

    if-nez v12, :cond_14

    if-lez v11, :cond_12

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(\u65e0\u6350\u86cb\u4e0a\u9650)\u5c1d\u8bd5\u518d\u6350\u86cb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1639
    invoke-direct {v13, v1, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    goto :goto_7

    :cond_14
    if-le v12, v10, :cond_1a

    .line 1643
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\u5f53\u524d\u6350\u86cb\u9650\u5236"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\u5c1d\u8bd5\u51cf\u5c11\u76ee\u6807\u661f\u661f\u6216\u7231\u5fc3\u503c\u6350\u86cb"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v11, 0x0

    .line 1645
    :goto_8
    const-string v14, "]\u6350\u4e86"

    if-ge v11, v0, :cond_18

    move/from16 v17, v2

    .line 1646
    :try_start_8
    aget v2, v5, v11

    if-lez v2, :cond_17

    if-ge v2, v12, :cond_17

    move-object/from16 v18, v6

    aget v6, v7, v11

    move-object/from16 v19, v9

    move/from16 v9, v23

    if-le v6, v9, :cond_16

    sub-int/2addr v2, v10

    const/4 v6, 0x1

    add-int/2addr v2, v6

    if-ge v2, v6, :cond_15

    goto :goto_9

    .line 1651
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v9

    const-string v9, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a[\u5728\u6350\u86cb\u4e0a\u9650"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u8303\u56f4\u5185]\u6bd4\u76ee\u6807\u661f\u661f\u6216\u7231\u5fc3\u503c"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5c11"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v11

    sub-int v9, v15, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u7684["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v8, v11

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v11

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1652
    invoke-direct {v13, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    goto :goto_b

    :cond_16
    :goto_9
    move/from16 v20, v9

    goto :goto_a

    :cond_17
    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move/from16 v20, v23

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move/from16 v23, v20

    goto :goto_8

    :cond_18
    move/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move/from16 v20, v23

    .line 1656
    :goto_b
    aget v2, v5, v0

    if-lez v2, :cond_19

    if-le v2, v12, :cond_19

    aget v2, v7, v0

    move/from16 v3, v20

    if-le v2, v3, :cond_19

    sub-int v2, v12, v10

    const/4 v3, 0x1

    if-le v2, v3, :cond_19

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u964d\u4f4e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u6863\u8fd8\u662f\u65e0\u6cd5[\u5728\u6350\u86cb\u4e0a\u9650"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u8303\u56f4\u5185]\u8d85\u8fc7\u76ee\u6807\u661f\u661f\u6216\u7231\u5fc3\u503c\u4e3a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v7, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u4e2a\u7684["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v8, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5c1d\u8bd5\u8fbe\u5230\u4e0a\u9650\u518d\u6350\u86cb"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1660
    invoke-direct {v13, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    :cond_19
    move/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_c

    :cond_1a
    move/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u60a8\u7684\u8d26\u53f7\u5df2\u6350\u86cb"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u6350\u86cb\u9650\u5236"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "(\u505c\u6b62\u6350\u86cb)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    move-object/from16 v13, p0

    move v5, v2

    move-object v3, v6

    move-object v2, v9

    move/from16 v10, v20

    :goto_c
    if-nez v10, :cond_1c

    if-nez v5, :cond_1c

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5c1d\u8bd5\u9996\u6b21\u6350\u86cb1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1672
    invoke-direct {v13, v1, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    .line 1675
    :cond_1c
    :goto_d
    iget-object v0, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionStealMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1677
    invoke-direct {v13, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isStealRankTime(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1678
    const-string v1, "\u9738\u699c"

    invoke-direct {v13, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->stealRank(ILjava/lang/String;)V

    .line 1682
    :cond_1d
    iget-object v0, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->stealRankMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1685
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x14

    .line 1686
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 1687
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1688
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1689
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1692
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    .line 1693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1e

    const/4 v2, 0x5

    const/4 v4, 0x1

    .line 1697
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1698
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v4, v1, v6

    .line 1702
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stealRank_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-virtual {v13, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1704
    new-instance v2, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    const-string v6, "STEALRANK"

    new-instance v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda9;

    invoke-direct {v7, v13, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda9;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;I)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v1, v6, v7, v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {v13, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5df2\u8bbe\u7f6e\u5077\u699c[\u5b9a\u65f6\u4efb\u52a1]\u5c06\u5728 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u6267\u884c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    .line 1717
    :cond_20
    :goto_e
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1718
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_10

    :cond_21
    move-object/from16 v1, v27

    .line 1721
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1722
    invoke-static/range {v25 .. v25}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1725
    :cond_22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1726
    const-string v2, "selfDonationRank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1727
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u672a\u67e5\u8be2\u5230\u5f53\u524d\u7528\u6237\u6350\u8d60\u6392\u884c\u4fe1\u606f"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_23
    move-object/from16 v1, v22

    .line 1733
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1734
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1735
    const-string v1, "nodes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v15, 0x0

    .line 1738
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v15, v1, :cond_29

    .line 1739
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1740
    const-string v2, "UNRECEIVED"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1747
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveDonationCompetitionProgressAward()V

    goto :goto_15

    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_25
    :goto_10
    return-void

    :cond_26
    :goto_11
    move-object/from16 v13, p0

    .line 1622
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u6bcf\u65e520:01\u540e\u4e0d\u6267\u884c\u6350\u86cb\u64cd\u4f5c"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_14

    :cond_27
    :goto_12
    move-object v13, v1

    .line 1571
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5956\u52b1\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_14

    :cond_28
    :goto_13
    move-object v13, v1

    return-void

    :catchall_2
    move-exception v0

    move-object v13, v1

    .line 1752
    :goto_14
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "competition err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    :goto_15
    return-void
.end method

.method private competitionDonation(Ljava/lang/String;I)V
    .locals 10

    .line 1890
    const-string v0, "activityInfos"

    const-string v1, "donationCompetitionActivityConf"

    .line 0
    const-string v2, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u6ee1\u8db3"

    const-string v3, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a"

    .line 1890
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1891
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 1896
    :cond_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1897
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1898
    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_8

    .line 1902
    iget-wide v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    double-to-int v4, v6

    if-gtz v4, :cond_2

    .line 1904
    const-string p1, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f53\u524d\u65e0\u86cb\u53ef\u6350"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    int-to-double v8, p2

    cmpl-double v4, v8, v6

    if-lez v4, :cond_3

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u9700\u6350\u86cb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5f53\u524d\u53ef\u6350"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\u653e\u5f03\u6350\u86cb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1909
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5f00\u59cb\u6350\u86cb"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u679a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 1911
    const-string p1, "S2\u8d5b\u5b63"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1912
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listActivityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1913
    invoke-static {v5, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 1916
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 1919
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 1920
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1921
    const-string v0, "donationLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "donationTotal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_8

    .line 1922
    const-string v0, "activityId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1923
    const-string v1, "projectName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1924
    invoke-direct {p0, v0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    goto :goto_2

    .line 1928
    :cond_6
    invoke-direct {p0, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 1934
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "receiveReward err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private deliverMsgSend(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4337
    const-string v0, "antFarm::deliverMsgSend"

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0xb

    .line 4339
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    const/4 v5, 0x0

    .line 4340
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 4341
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 4342
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 4344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0xa

    .line 4345
    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 4346
    invoke-virtual {v8, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 4347
    invoke-virtual {v8, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 4348
    invoke-virtual {v8, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 4350
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 4355
    :cond_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4356
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#\u672a\u68c0\u6d4b\u5230\u5bb6\u5ead groupId\uff0c\u53ef\u80fd\u5c1a\u672a\u52a0\u5165\u5bb6\u5ead\uff0c\u8df3\u8fc7"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4361
    :cond_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    return-void

    .line 4368
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familyTaskTips(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4369
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4370
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#familyTaskTips \u8c03\u7528\u5931\u8d25\uff0c\u8df3\u8fc7"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4374
    :cond_3
    const-string p1, "familyTaskTips"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 4375
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 4383
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_c

    .line 4384
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 4385
    const-string v2, "bizKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4386
    const-string v3, "taskStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4387
    const-string v3, "GREETING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "TODO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_b

    .line 4404
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4405
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4406
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4407
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#\u5bb6\u5ead\u6210\u5458\u4ec5\u81ea\u5df1\u4e00\u4eba\uff0c\u8df3\u8fc7"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4411
    :cond_5
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 4412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4413
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 4417
    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->OpenAIPrivatePolicy()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4418
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v10, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 4419
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#OpenAIPrivatePolicy \u8c03\u7528\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4424
    :cond_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->deliverSubjectRecommend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4425
    invoke-static {v10, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4426
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#deliverSubjectRecommend \u8c03\u7528\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4430
    :cond_8
    const-string v1, "ariverRpcTraceId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4431
    const-string v2, "eventId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4432
    const-string v3, "eventName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4433
    const-string v4, "memo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4434
    const-string v5, "resultCode"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4435
    const-string v6, "sceneId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4436
    const-string v7, "sceneName"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4437
    const-string v8, "success"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4440
    new-instance p1, Lorg/json/JSONObject;

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->deliverContentExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4441
    invoke-static {v10, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4442
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#DeliverContentExpand \u8c03\u7528\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4446
    :cond_9
    const-string v1, "deliverId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4450
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->QueryExpandContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4451
    invoke-static {v10, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4452
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#QueryExpandContent \u8c03\u7528\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4456
    :cond_a
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4459
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-static {v3, p2, v1, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->deliverMsgSend(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4460
    invoke-static {v10, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udf08[\u9053\u65e9\u5b89]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 4462
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4394
    :cond_c
    :try_start_3
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#GREETING \u4efb\u52a1\u975e TODO \u72b6\u6001\uff0c\u8df3\u8fc7"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 4395
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return-void

    .line 4376
    :cond_d
    :goto_2
    const-string p1, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u9053\u65e9\u5b89#\u8fdc\u7aef\u65e0 GREETING \u4efb\u52a1\uff0c\u53ef\u80fd\u4eca\u65e5\u5df2\u5b8c\u6210\uff0c\u8df3\u8fc7"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 4378
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4399
    :try_start_4
    const-string p2, "familyTaskTips \u89e3\u6790\u5931\u8d25\uff0c\u51fa\u4e8e\u5b89\u5168\u8003\u8651\u8df3\u8fc7\u9053\u65e9\u5b89\uff1a"

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_e
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 4465
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "deliverMsgSend err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_4
    return-void
.end method

.method private doAnswerTask()Ljava/lang/Boolean;
    .locals 10

    .line 2298
    const-string v0, "operationConfigList"

    const-string v1, "100"

    .line 0
    const-string v2, "\u5e84\u56ed\u7b54\u9898\ud83d\udcdd\u56de\u7b54"

    const/4 v3, 0x0

    .line 2298
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->dadaDailyHome(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2299
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2300
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2302
    :cond_0
    const-string v6, "question"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2303
    const-string v6, "questionId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2304
    const-string v8, "label"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2305
    const-string v9, "title"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    invoke-static {v4, v9}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->getAnswer(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2306
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2307
    :cond_1
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2309
    :cond_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->dadaDailySubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2310
    invoke-static {v5, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2311
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2313
    :cond_3
    const-string v1, "extInfo"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2314
    const-string v4, "correct"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2315
    const-string v5, "award"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    const-string v2, "\u6b63\u786e"

    goto :goto_0

    :cond_4
    const-string v2, "\u9519\u8bef"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#\u83b7\u5f97["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "g\u9972\u6599]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2318
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2319
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->savePreviewQuestion(Lorg/json/JSONArray;)V

    const/4 v0, 0x1

    .line 2320
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2323
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "doAnswerTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2326
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private doFarmDrawTask(Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3302
    const-string v8, "\u73a9"

    const-string v9, ""

    const-string v10, "title"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmDrawTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3303
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 3306
    :cond_0
    const-string v3, "farmTaskList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v13, 0x0

    .line 3307
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_c

    .line 3308
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 3309
    const-string v2, "taskStatus"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3310
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3311
    const-string v3, "rightsTimesLimit"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 3312
    const-string v3, "rightsTimes"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 3313
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v22, v8

    move-object/from16 v16, v9

    move-object/from16 v20, v11

    move/from16 v21, v13

    goto/16 :goto_7

    .line 3317
    :cond_2
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "awardType"

    const-string v15, "taskId"

    if-eqz v6, :cond_3

    .line 3318
    :try_start_1
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3319
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3320
    invoke-direct {v1, v6, v7, v12, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmDrawTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_1

    if-gt v4, v3, :cond_3

    goto :goto_1

    .line 3327
    :cond_3
    iget-object v6, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "bizKey"

    move-object/from16 v20, v11

    const-string v11, "SHANGYEHUA"

    move/from16 v21, v13

    const-string v13, "desc"

    if-eqz v6, :cond_5

    .line 3329
    :try_start_2
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3331
    new-instance v6, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v11, "AntFarmDrawMachineTaskList"

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v13, "targetUrl"

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v14, v6

    move-object v13, v15

    move-object v15, v11

    move-object/from16 v16, v7

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    .line 3333
    invoke-virtual {v2, v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const-string v6, "taskRequire"

    const/4 v15, 0x0

    .line 3334
    invoke-virtual {v5, v6, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v11, "taskProgress"

    invoke-virtual {v5, v11, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    sub-int/2addr v6, v11

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    .line 3335
    invoke-virtual {v2, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const-string v6, "ANTFARM"

    const-string v11, "H5"

    .line 3336
    invoke-virtual {v2, v6, v11}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v11

    new-instance v12, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;

    move-object v2, v12

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda8;-><init>(IILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v11, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->beforeGameLink(Ljava/lang/Runnable;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    .line 3351
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    :cond_4
    move-object/from16 v22, v8

    move-object/from16 v16, v9

    goto/16 :goto_7

    :cond_5
    move-object v6, v15

    const/4 v15, 0x0

    .line 3356
    sget-object v16, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual/range {v16 .. v16}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3357
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "]"

    const-string v15, "\u88c5\u626e\u62bd\u5956\ud83e\uddfe\u5b8c\u6210["

    move-object/from16 v16, v9

    const-string v9, "AntFarmDrawMachineTaskList"

    const-wide/16 v17, 0x3e8

    if-eqz v2, :cond_7

    .line 3358
    :try_start_3
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v2

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_6

    .line 3359
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3361
    invoke-static {v9, v7, v13}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3362
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    invoke-static {v3, v4, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3362
    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3365
    :cond_6
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :goto_3
    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 3370
    :cond_7
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "s"

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3371
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_8

    .line 3372
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3374
    invoke-static {v9, v7, v13}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3375
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    invoke-static {v3, v4, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3375
    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 3378
    :cond_8
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_3

    .line 3383
    :cond_9
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v2

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v2, :cond_a

    move/from16 v19, v2

    .line 3384
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v22, v8

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->doFarmTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3386
    invoke-static {v9, v7, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-static {v3, v4, v13}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3387
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    move-object/from16 v8, v22

    goto :goto_5

    :cond_a
    move-object/from16 v22, v8

    .line 3390
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_6

    :cond_b
    move-object/from16 v22, v8

    move-object/from16 v16, v9

    :goto_6
    const-wide/16 v2, 0x7d0

    .line 3392
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 3393
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3394
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3395
    invoke-direct {v1, v2, v7, v3, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmDrawTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    add-int/lit8 v13, v21, 0x1

    move-object/from16 v9, v16

    move-object/from16 v11, v20

    move-object/from16 v8, v22

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 3398
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "doFarmDrawActivityTimeTask err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method private doFarmTask(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u9972\u6599\u4efb\u52a1\ud83e\uddfe\u5b8c\u6210["

    const/4 v1, 0x0

    .line 2354
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2355
    const-string v3, "bizKey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2357
    const-string v3, "HEART_DONAT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "BAIDUJS_202512"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "BABAFARM_TB"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "monthlyCard"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2360
    :cond_0
    const-string v3, "\u5e84\u56ed\u5c0f\u89c6\u9891"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2361
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->doVideoTask()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 2362
    :cond_1
    const-string v3, "\u5e84\u56ed\u5c0f\u8bfe\u5802"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2363
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->doAnswerTask()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 2372
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->doFarmTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2374
    const-string p1, "AntFarmDoFarmTaskList"

    invoke-static {p1, v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2375
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 2381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_2

    .line 2358
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2386
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "doFarmTask err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2389
    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private doVideoTask()Ljava/lang/Boolean;
    .locals 9

    .line 2269
    const-string v0, "success"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryTabVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2270
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2271
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2273
    :cond_0
    const-string v3, "videoUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2274
    const-string v3, "&contentId="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const-string v5, "&refer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2275
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->videoDeliverModule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "resultMsg"

    if-eqz v5, :cond_2

    const-wide/16 v7, 0x3afc

    .line 2277
    :try_start_1
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2278
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->videoTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2280
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2282
    :cond_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 2286
    :cond_2
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2290
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "doVideoTask err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2293
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private donation(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "\u516c\u76ca\u6350\u8d60\u2764\ufe0f[\u6350\u7231\u5fc3\u86cb:"

    .line 1452
    iget-wide v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    int-to-double v3, p3

    const/4 v5, 0x0

    .line 1453
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    cmpg-double v6, v1, v3

    if-gez v6, :cond_0

    return-object v5

    .line 1456
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->donation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1458
    const-string p1, "memo"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1459
    const-string v2, "SUCCESS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u6210\u529f"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u6ca1\u6709\u6307\u5b9a\u6807\u7684\u7269"

    .line 1460
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v5

    .line 1463
    :cond_1
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v5

    .line 1466
    :cond_2
    const-string p1, "donation"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1467
    const-string v1, "harvestBenevolenceScore"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    .line 1468
    const-string v1, "donationTimesStat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u6350\u8d60"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u9897\u7231\u5fc3\u86cb#\u7d2f\u8ba1\u6350\u8d60"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b21"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1470
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1472
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "donation err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private donation(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 1442
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 1446
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 1448
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private donation()V
    .locals 8

    .line 1335
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->canDonationToday()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listActivityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1340
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1343
    :cond_1
    const-string v1, "activityInfos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1344
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1345
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1346
    const-string v3, "donationTotal"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1347
    const-string v4, "donationLimit"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1349
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1353
    :cond_2
    const-string v4, "activityId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1354
    const-string v5, "projectName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1355
    const-string v6, "projectId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1356
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getProjectDonationNum(Ljava/lang/String;)I

    move-result v2

    .line 1357
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/2addr v2, v7

    sub-int/2addr v6, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1359
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v2, v3, :cond_3

    .line 1360
    invoke-direct {p0, v4, v5, v2, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    .line 1362
    :cond_3
    invoke-direct {p0, v4, v5, v6, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    .line 1364
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    return-void

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1369
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "donation err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private donation(I)V
    .locals 10

    .line 1376
    const-string v0, "activityInfos"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listActivityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1377
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1380
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1384
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1388
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "donationTotal"

    const-string v6, "donationLimit"

    if-ge v3, v4, :cond_4

    .line 1389
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1391
    const-string v7, "SOLDBY"

    const-string v8, "projectType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 1394
    :cond_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v6, v5

    if-lez v6, :cond_3

    .line 1396
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1400
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 1406
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, p1

    :goto_2
    if-ge v2, v0, :cond_9

    if-lez v3, :cond_9

    .line 1408
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1409
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v0, -0x1

    if-ne v2, v8, :cond_6

    move v8, v3

    goto :goto_3

    .line 1416
    :cond_6
    div-int v8, p1, v0

    .line 1417
    rem-int v9, p1, v0

    if-ge v2, v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    .line 1423
    :cond_7
    :goto_3
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1424
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lez v7, :cond_8

    .line 1427
    const-string v8, "activityId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1428
    const-string v9, "projectName"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1429
    invoke-direct {p0, v8, v4, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1434
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "donation err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method private drawGameCenterAward()V
    .locals 13

    .line 3724
    const-string v0, "quotaCanUse"

    const-string v1, "gameCenterDrawRights"

    const-string v2, "success"

    .line 0
    const-string v3, "\u5f53\u524d\u6709 "

    const-string v4, "queryGameList falsed result: "

    .line 3724
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryGameList()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3727
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    if-eqz v4, :cond_5

    .line 3730
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 3732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u4e2a\u5b9d\u7bb1\u5f85\u5f00\u542f..."

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_0
    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 3736
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->drawGameCenterAward(I)Ljava/lang/String;

    move-result-object v3

    .line 3737
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3741
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3742
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    move v7, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 3745
    :goto_1
    const-string v3, "gameCenterDrawAwardList"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3746
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    const/4 v9, 0x0

    .line 3748
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 3749
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 3750
    const-string v11, "awardName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3751
    const-string v12, "awardCount"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 3752
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "*"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3755
    :cond_1
    const-string v3, ","

    invoke-static {v3, v8}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 3756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5c0f\u9e21\u4e50\u56ed\ud83c\udf81\u5f00\u5b9d\u7bb1\u5f97["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]#["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 3757
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto/16 :goto_0

    .line 3759
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0f\u9e21\u4e50\u56ed\u5f00\u542f\u5b9d\u7bb1\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "desc"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 3766
    :cond_3
    const-string v0, "quotaLimit"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 3767
    const-string v1, "usedQuota"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_4

    if-nez v7, :cond_4

    .line 3771
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Farm_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const-string v2, "\u5e84\u56ed"

    invoke-virtual {v0, v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->report(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    if-gtz v1, :cond_5

    .line 3773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u65e5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u91d1\u86cb\u4efb\u52a1\u5df2\u5168\u90e8\u6ee1\u989d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 3778
    :cond_5
    :goto_3
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_4

    .line 3811
    :cond_6
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 3815
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "drawGameCenterAward err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private drawLotteryPlus(Lorg/json/JSONObject;)V
    .locals 5

    .line 2812
    const-string v0, "itemId"

    const-string v1, "userSevenDaysGiftsItem"

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2815
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2816
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2817
    const-string v1, "userEverydayGiftItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 2818
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2819
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2820
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2821
    const-string p1, "received"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2822
    const-string p1, "singleDesc"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2823
    const-string v0, "awardCount"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2824
    const-string v1, "\u9972\u6599"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    add-int/2addr v1, v0

    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    if-le v1, v2, :cond_1

    .line 2825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6682\u505c\u9886\u53d6["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]\u514b\u9972\u6599\uff0c\u4e0a\u9650\u4e3a["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]\u514b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 2828
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->drawLotteryPlus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2830
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60ca\u559c\u793c\u5305\ud83c\udf81["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_1

    .line 2834
    :cond_2
    const-string p1, "\u5f53\u65e5\u5956\u52b1\u5df2\u9886\u53d6"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 2840
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "drawLotteryPlus err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private drawMachine(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 3418
    const-string v0, "title"

    .line 0
    const-string v1, "\u88c5\u626e\u62bd\u5956\ud83c\udf81\u62bd\u4e2d["

    .line 3418
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->drawMachine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3419
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3420
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3421
    const-string p1, "drawMachinePrize"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3423
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3425
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3428
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "drawMachine err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    .line 3431
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private drawMachine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3284
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->doFarmDrawTask(Ljava/lang/String;)V

    .line 3286
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryDrawMachineActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3287
    const-string p3, "drawTimes"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 3289
    invoke-direct {p0, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    .line 3292
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3295
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "drawMachine err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private drawMachineGroups()V
    .locals 6

    .line 3234
    const-string v0, "otherDrawMachineActivityIds"

    const-string v1, "ipDrawMachine"

    const-string v2, "dailyDrawMachine"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3235
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3236
    const-string v3, "ANTFARM_DAILY_DRAW_TASK"

    invoke-direct {p0, v3, v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryDrawMachineActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3239
    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3240
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 3243
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 3244
    const-string v0, "ANTFARM_IP_DRAW_TASK"

    invoke-direct {p0, v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 3248
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryDrawMachineActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3249
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3252
    :cond_1
    const-string v1, "drawMachineActivity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 3256
    :cond_2
    const-string v1, "activityId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3257
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3260
    const-string v1, "DRESS"

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3261
    const-string v1, "REISSUE_CARD"

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3262
    const-string v1, "DELICIOUS_FOOD"

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3263
    const-string v1, "ANTFARM_IP_DRAW_MALL"

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3269
    :try_start_2
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "drawMachine err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 3278
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "queryLoveCabin err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static enterDonationCompetitionRank()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1482
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationCompetitionDisabledUid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1483
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1486
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterDonationCompetitionRank()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1487
    const-string v2, "memo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u529f\u80fd\u672a\u5f00\u542f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1488
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationCompetitionDisabledUid:Ljava/lang/String;

    .line 1489
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u529f\u80fd\u672a\u5f00\u542f\uff0c\u672c\u6b21\u8fd0\u884c\u8df3\u8fc7\u76f8\u5173\u67e5\u8be2"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private enterFamily()Lorg/json/JSONObject;
    .locals 3

    .line 4572
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4573
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4577
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "enterFamily err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private enterFarm()Lorg/json/JSONObject;
    .locals 11

    .line 975
    const-string v0, "springGifts"

    const-string v1, "lotteryPlusInfo"

    const-string v2, "activityData"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, ""

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 976
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v3

    .line 979
    :cond_0
    const-string v5, "dynamicGlobalConfig"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "rewardProductNum"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardProductNum:Ljava/lang/String;

    .line 980
    const-string v5, "farmVO"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 981
    const-string v6, "foodStock"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 982
    const-string v6, "foodStockLimit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    .line 983
    const-string v6, "harvestBenevolenceScore"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    .line 984
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->parseSyncAnimalStatusResponse(Ljava/lang/String;)V

    .line 985
    const-string v6, "masterUserInfoVO"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "userId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    .line 986
    invoke-direct {p0, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getFamilyGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    .line 988
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 989
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 990
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 991
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 993
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 994
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 995
    const-string v7, "foodType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 996
    const-string v8, "giftIndex"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 997
    const-string v9, "foodSubType"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 998
    const-string v10, "foodCount"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 999
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->clickForGiftV2(Ljava/lang/String;I)Ljava/lang/String;

    .line 1000
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u60ca\u559c\u793c\u5305\ud83c\udf81["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1009
    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1010
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawLotteryPlus(Lorg/json/JSONObject;)V

    .line 1012
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->acceptGift:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "subFarmVO"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "giftRecord"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    iget v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 1013
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->acceptGift()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v4

    :catchall_0
    move-exception v0

    .line 1017
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "enterFarm err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private family()V
    .locals 30

    move-object/from16 v1, p0

    .line 3976
    const-string v0, ""

    const-string v2, "assignRights"

    const-string v3, ";"

    iget-object v4, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0["

    if-eqz v4, :cond_0

    .line 3977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u672a\u83b7\u53d6\u5230\u5bb6\u5eadID, \u672a\u52a0\u5165\u4eb2\u5bc6\u5bb6\u5ead\u6216\u5e84\u56ed\u9996\u9875\u65e0\u5bb6\u5ead\u6570\u636e;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 3982
    :try_start_0
    const-string v6, "io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3983
    const-string v6, "antFarm"

    const-string v7, "doFamilyTask"

    invoke-static {v6, v7, v4}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->handleAlphaRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3985
    :catch_0
    const-string v6, "ExtensionsHandle \u7c7b\u672a\u627e\u5230\uff0c\u8df3\u8fc7\u6269\u5c55\u5904\u7406"

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 3988
    :goto_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterFamily()Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u8fdb\u5165\u5bb6\u5ead\u5931\u8d25;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void

    .line 3994
    :cond_1
    const-string v7, "groupId"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3995
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3996
    iput-object v7, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    .line 3998
    :cond_2
    const-string v7, "familyAwardNum"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 3999
    const-string v9, "familySignTips"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 4000
    const-string v10, "assignFamilyMemberInfo"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 4001
    const-string v11, "feedFriendLimit"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 4002
    const-string v12, "animals"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v12, :cond_3

    .line 4004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5bb6\u5ead\u52a8\u7269\u5217\u8868\u4e3a\u7a7a;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void

    .line 4007
    :cond_3
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 4009
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    const/4 v15, 0x0

    .line 4010
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v8, "userId"

    if-ge v15, v4, :cond_5

    .line 4011
    :try_start_2
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 4012
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4013
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v17, v0

    .line 4014
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4015
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v17, v0

    .line 4022
    const-string v0, "familyActivityIntimateNumber"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 4023
    const-string v4, "activityInfo"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    .line 4024
    :cond_6
    const-string v15, "familyActivityIntimateRankList"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 4025
    :goto_2
    const-string v15, "\u4eb2\u5bc6\u503c"

    if-eqz v4, :cond_8

    .line 4026
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v16, v0

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v16, v0

    .line 4027
    const-string v0, "lastActivityInfoVO"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4029
    const-string v4, "lastActivityFamilyIntimateRankList"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 4030
    const-string v15, "lastActivityFamilyIntimate"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 4031
    const-string v15, "\u4e0a\u671f\u4eb2\u5bc6\u503c"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v0, v16

    :goto_5
    move-object/from16 v16, v14

    .line 4036
    const-string v14, "]"

    if-eqz v4, :cond_f

    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_f

    move-object/from16 v18, v13

    .line 4040
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v19, -0x1

    move-object/from16 v23, v2

    move-object/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v24, v10

    move-wide/from16 v6, v19

    const/4 v2, 0x0

    .line 4041
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_d

    .line 4042
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_a

    move/from16 v25, v9

    move/from16 v26, v11

    move-object/from16 v27, v12

    goto :goto_7

    :cond_a
    move/from16 v25, v9

    .line 4046
    const-string v9, "familyActivityRankIntimateGear"

    move/from16 v26, v11

    move-object/from16 v27, v12

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 4047
    const-string v9, "familyActivityRankIntimateGearScore"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 4048
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_b

    .line 4049
    const-string v1, ","

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    :cond_b
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u4e07(\u4eb2\u5bc6\u503c"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v28, v11

    int-to-long v11, v0

    cmp-long v1, v11, v9

    if-ltz v1, :cond_c

    cmp-long v1, v9, v19

    if-lez v1, :cond_c

    move-wide/from16 v19, v9

    move-wide/from16 v6, v28

    :cond_c
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p0

    move/from16 v9, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    goto :goto_6

    :cond_d
    move/from16 v25, v9

    move/from16 v26, v11

    move-object/from16 v27, v12

    .line 4057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6392\u540d\u5171"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4058
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6863["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]\u5df2\u8fbe\u6863\u4f4d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-ltz v0, :cond_e

    .line 4059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u524d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u4e07\u540d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    const-string v0, "\u65e0"

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_13

    :cond_f
    move-object/from16 v23, v2

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v25, v9

    move-object/from16 v24, v10

    move/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v18, v13

    move-object/from16 v1, v17

    .line 4064
    :goto_9
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryFamilyInfo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4065
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4066
    const-string v4, "familyMemberInfoList"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4067
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 4068
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v4

    .line 4069
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5bb6\u5ead\u6210\u5458"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 4070
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_15

    .line 4071
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_10

    goto :goto_d

    .line 4075
    :cond_10
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4076
    const-string v11, "userName"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4077
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 4078
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4080
    :cond_11
    const-string v12, "todayIntimateNum"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 4081
    const-string v13, "totalIntimateNum"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 4082
    const-string v15, "userDonateCount"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 4083
    const-string v2, "currentUser"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v2, 0x1

    .line 4084
    :goto_c
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_14

    .line 4086
    const-string v2, "(\u5f53\u524d\u8d26\u6237)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    :cond_14
    const-string v2, "\u6350\u86cb"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u7d2f\u8ba1\u4eb2\u5bc6"

    .line 4089
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4eca\u65e5\u4eb2\u5bc6"

    .line 4090
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 4093
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 4096
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 4098
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 4102
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    .line 4106
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 4107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    .line 4109
    :cond_19
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "queryFamilyInfo parse err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4114
    :cond_1a
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4115
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 4116
    :goto_f
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    move-object/from16 v3, v27

    .line 4117
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 4118
    const-string v5, "animalId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4119
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4120
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4121
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v6, p0

    .line 4122
    :try_start_6
    iget-object v7, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v7, v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_10

    .line 4125
    :cond_1b
    const-string v5, "farmId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4126
    const-string v7, "animalStatusVO"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4127
    const-string v7, "animalFeedStatus"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4128
    const-string v9, "animalInteractStatus"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4129
    sget-object v9, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4131
    iget-object v4, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v7, "familyFeed"

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v26, :cond_1c

    const-string v4, "farm::feedFriendAnimalLimit"

    .line 4132
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4133
    invoke-direct {v6, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimal(Ljava/lang/String;)V

    :cond_1c
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v27, v3

    goto :goto_f

    :cond_1d
    move-object/from16 v6, p0

    move-object/from16 v3, v27

    if-eqz v25, :cond_1e

    .line 4139
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "familySign"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4140
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familySign()V

    goto :goto_11

    :catchall_2
    move-exception v0

    goto/16 :goto_13

    :cond_1e
    :goto_11
    if-eqz v24, :cond_1f

    .line 4143
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v2, v23

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "USED"

    move-object/from16 v4, v24

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4144
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "assignRightsOwner"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4145
    invoke-direct {v6, v4, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->assignFamilyMember(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 4155
    :cond_1f
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "familyClaimReward"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    if-lez v22, :cond_20

    .line 4156
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyAwardList()V

    .line 4160
    :cond_20
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "feedFamilyAnimal"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    if-nez v26, :cond_21

    .line 4161
    invoke-direct {v6, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyFeedFriendAnimal(Lorg/json/JSONArray;)V

    .line 4164
    :cond_21
    const-string v1, "familyInteractActions"

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 4165
    const-string v3, "eatTogetherConfig"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v1, :cond_23

    const/4 v3, 0x0

    const/16 v17, 0x1

    .line 4169
    :goto_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 4170
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 4171
    const-string v5, "EatTogether"

    const-string v7, "familyInteractType"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v17, 0x0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    const/16 v17, 0x1

    :cond_24
    if-eqz v17, :cond_25

    .line 4177
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v3, "familyEatTogether"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "periodItemList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4178
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    move-object/from16 v2, v18

    invoke-direct {v6, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyEatTogether(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 4182
    :cond_25
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "deliverMsgSend"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v1, v16

    .line 4183
    invoke-direct {v6, v1, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->deliverMsgSend(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 4187
    :cond_26
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "shareToFriends"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4188
    iget-object v1, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    iget-object v2, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notInviteList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-direct {v6, v1, v0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyShareToFriends(Ljava/lang/String;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object v6, v1

    .line 4191
    :goto_13
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "family err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_14
    return-void
.end method

.method private familyAwardList()V
    .locals 8

    .line 4614
    const-string v0, "operability"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familyAwardList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4615
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4618
    :cond_0
    const-string v2, "familyAwardRecordList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 4619
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4620
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 4621
    const-string v4, "expired"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "received"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "linkUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 4624
    :cond_1
    const-string v4, "rightId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4625
    const-string v6, "awardName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4626
    const-string v7, "count"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 4627
    invoke-direct {p0, v4, v6, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFamilyAward(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4630
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "familyAwardList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private familyEatTogether(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0"

    .line 4271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4273
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "0600"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "1100"

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4274
    const-string v1, "\u65e9\u9910"

    goto :goto_0

    .line 4275
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "1600"

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4276
    const-string v1, "\u5348\u9910"

    goto :goto_0

    .line 4277
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "2000"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4278
    const-string v1, "\u665a\u9910"

    .line 4283
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->queryRecentFarmFood(I)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 4287
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1, v2, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familyEatTogether(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4288
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u8bf7\u5ba2#\u6d88\u8017\u7f8e\u98df"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u4efd#["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 4290
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncFamilyStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4293
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "familyEatTogether err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private familyFeedFriendAnimal(Lorg/json/JSONArray;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4223
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4224
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4225
    const-string v3, "animalStatusVO"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 4226
    const-string v4, "animalInteractStatus"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4227
    const-string v5, "animalFeedStatus"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4229
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 4233
    :cond_0
    const-string v3, "groupId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4234
    const-string v4, "farmId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4235
    const-string v5, "userId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4237
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getUserIdSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0d\u662f\u4f60\u7684\u597d\u53cb\uff01 \u8df3\u8fc7\u5bb6\u5ead\u5582\u98df"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4242
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "farm::feedFriendLimit::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4243
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "["

    if-eqz v6, :cond_2

    .line 4244
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u4eca\u65e5\u5582\u9e21\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650\uff08\u5df2\u8bb0\u5f55\uff09\ud83e\udd63\uff0c\u8df3\u8fc7"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4248
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->feedFriendAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4249
    const-string v3, "success"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4250
    const-string v3, "resultCode"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4251
    const-string v4, "391"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4252
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 4253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u4eca\u65e5\u5e2e\u5582\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650\ud83e\udd63\uff0c\u5df2\u8bb0\u5f55\u4e3a\u5f53\u65e5\u9650\u5236"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 4255
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5582\u98df\u5931\u8d25 user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "memo"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 4260
    :cond_4
    const-string v3, "foodStock"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 4261
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u5e2e\u5582\u597d\u53cb\ud83e\udd63["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u7684\u5c0f\u9e21180g #\u5269\u4f59"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "g"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 4265
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "familyFeedFriendAnimal err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private familyReceiveFarmTaskAward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0\u63d0\u4ea4\u4efb\u52a1["

    .line 4649
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familyReceiveFarmTaskAward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4651
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4655
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "familyReceiveFarmTaskAward err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4656
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private familyShareToFriends(Ljava/lang/String;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;",
            ")V"
        }
    .end annotation

    .line 4475
    const-string v0, "antFarm::familyShareToFriends"

    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4479
    :cond_0
    invoke-virtual {p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 4480
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getList()Ljava/util/List;

    move-result-object v1

    .line 4481
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4482
    const-string p1, "allUser is empty"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4487
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4488
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 4489
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4490
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    .line 4491
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 4492
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4493
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 4499
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_4

    .line 4500
    const-string p1, "\u6ca1\u6709\u7b26\u5408\u5206\u4eab\u6761\u4ef6\u7684\u597d\u53cb"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 4503
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5bb6\u5ead\u5206\u4eab\ud83c\udfe0\u9080\u8bf7:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 4506
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 4507
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 4508
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1, p3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->batchInviteP2P(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4509
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bb6\u5ead\u4efb\u52a1\ud83c\udfe0\u5206\u4eab\u7ed9\u597d\u53cb["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4513
    :cond_6
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4515
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "familyShareToFriends err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private familySign()V
    .locals 2

    .line 4710
    const-string v0, "FAMILY_SIGN_TASK"

    const-string v1, "\u6bcf\u65e5\u7b7e\u5230"

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyReceiveFarmTaskAward(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private familySleep(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 4585
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familySleep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4586
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4587
    const-string v0, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0\u5c0f\u9e21\u7761\u89c9"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 4588
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncFamilyStatus(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4589
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4592
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "familySleep err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 4595
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private familyWakeUp()Ljava/lang/Boolean;
    .locals 3

    .line 4600
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->familyWakeUp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4601
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4602
    const-string v0, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0\u5c0f\u9e21\u8d77\u5e8a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4603
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4606
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "familyWakeUp err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4607
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 4609
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private farmExtraInfo()Ljava/lang/String;
    .locals 21

    .line 464
    const-string v0, "manurePotLimit"

    const-string v1, "manurePotNum"

    const-string v2, ";"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 470
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryAnimalShowInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 471
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 472
    const-string v7, "ownAnimalShowInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 474
    const-string v8, "status"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :cond_0
    move-object v7, v3

    .line 476
    :goto_0
    :try_start_1
    const-string v8, "farmShowStatus"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 477
    :try_start_2
    const-string v9, "manurePotList"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 478
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 479
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 481
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 482
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    .line 484
    :goto_1
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 485
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v0, v5

    move-object v5, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object v7, v3

    move-object v8, v7

    :cond_4
    move-object v0, v5

    :goto_2
    move-object v1, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_3
    move-object v1, v5

    .line 491
    :goto_4
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v9, "farmExtraInfo queryAnimalShowInfo err:"

    invoke-static {v6, v9}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v6, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v20, v5

    move-object v5, v1

    move-object/from16 v1, v20

    .line 495
    :goto_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->rankingList(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 496
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 497
    const-string v6, "rankingList"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 499
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v6

    .line 500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x3

    .line 502
    new-array v11, v10, [Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object v13, v3

    const/4 v12, 0x0

    .line 503
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const-string v15, "["

    const-string v4, "userId"

    const-string v10, "beneScore"

    if-ge v12, v14, :cond_e

    .line 504
    :try_start_6
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_6

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    :cond_5
    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_6
    move-object/from16 v16, v0

    .line 508
    const-string v0, "rank"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    invoke-virtual {v14, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v18, v6

    const-string v6, "gloryScore"

    if-eqz v17, :cond_7

    move-object/from16 v17, v1

    .line 511
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v19, v8

    :try_start_8
    const-string v8, "\u6211\u7684\u6392\u540d"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u8363\u8000\u5206"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u7231\u5fc3\u5206"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_d

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v19, v8

    .line 513
    :goto_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v8, 0x64

    if-ge v1, v8, :cond_8

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 514
    const-string v1, "\u7b2c"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u8363\u8000"

    .line 515
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_8
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 518
    aget-object v4, v11, v1

    const/4 v1, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_d

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_9

    goto :goto_a

    .line 522
    :cond_9
    aget-object v4, v11, v6

    if-eqz v4, :cond_c

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_a

    goto :goto_9

    .line 525
    :cond_a
    aget-object v4, v11, v1

    if-eqz v4, :cond_b

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_5

    .line 526
    :cond_b
    aput-object v14, v11, v1

    goto/16 :goto_7

    .line 523
    :cond_c
    :goto_9
    aget-object v0, v11, v6

    aput-object v0, v11, v1

    .line 524
    aput-object v14, v11, v6

    goto/16 :goto_7

    .line 519
    :cond_d
    :goto_a
    aget-object v0, v11, v6

    aput-object v0, v11, v1

    const/4 v1, 0x0

    .line 520
    aget-object v0, v11, v1

    aput-object v0, v11, v6

    .line 521
    aput-object v14, v11, v1

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    const/4 v4, 0x0

    const/4 v10, 0x3

    goto/16 :goto_6

    :cond_e
    move-object/from16 v17, v1

    move-object/from16 v19, v8

    const/4 v1, 0x0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    :goto_c
    if-ge v1, v6, :cond_10

    .line 531
    aget-object v8, v11, v1

    if-eqz v8, :cond_f

    .line 532
    const-string v8, "\u6350\u86cb\u7b2c"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v11, v1

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]\u7231\u5fc3"

    .line 533
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v11, v1

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 536
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v17, v1

    :goto_d
    move-object/from16 v19, v8

    :goto_e
    move-object v3, v13

    goto :goto_f

    :cond_11
    move-object/from16 v17, v1

    move-object/from16 v19, v8

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v19, v8

    .line 540
    :goto_f
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v4, "farmExtraInfo rankingList err:"

    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    if-nez v5, :cond_12

    .line 543
    const-string v0, " "

    goto :goto_11

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u5c0f\u9e21\u821e\u53f0["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]\u80a5\u6599\u76c6"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private farmInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 39

    move-object/from16 v0, p1

    .line 552
    const-string v1, "foodHaveStolen"

    const-string v2, "rankOrder"

    const-string v3, "totalStarNum"

    const-string v4, "foodHaveEatten"

    const-string v5, "foodInTroughLimit"

    const-string v6, "todayDonationNum"

    const-string v7, "foodInTrough"

    const-string v8, "achievementNum"

    const-string v9, "donationEggAmount"

    const-string v10, "gloryScore"

    const-string v11, "happyPoint"

    const-string v12, "foodStockLimit"

    const-string v13, "finalScore"

    const-string v14, "foodStock"

    .line 0
    const-string v15, "\u4e0a\u671f\u7b2c"

    move-object/from16 v16, v3

    const-string v3, "\u6211\u7684\u6392\u4f4d\u7b49\u7ea7["

    move-object/from16 v17, v3

    const-string v3, "["

    move-object/from16 v18, v15

    const/16 v19, 0x0

    .line 569
    const-string v15, ""

    if-eqz v0, :cond_14

    move-object/from16 v21, v3

    .line 570
    :try_start_0
    const-string v3, "farmVO"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 572
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 573
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    goto :goto_0

    :cond_0
    move-object/from16 v14, v19

    .line 575
    :goto_0
    :try_start_1
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 576
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object/from16 v22, v12

    goto :goto_1

    :cond_1
    move-object/from16 v22, v19

    .line 578
    :goto_1
    :try_start_2
    const-string v12, "charityAccountVO"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 580
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 581
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    goto :goto_2

    :cond_2
    move-object/from16 v10, v19

    .line 583
    :goto_2
    :try_start_3
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 584
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    move-object/from16 v8, v19

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_11

    :cond_4
    move-object/from16 v8, v19

    move-object v10, v8

    .line 587
    :goto_3
    :try_start_4
    const-string v12, "subFarmVO"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 589
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 590
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    goto :goto_4

    :cond_5
    move-object/from16 v9, v19

    .line 592
    :goto_4
    :try_start_5
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 593
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_5

    :cond_6
    move-object/from16 v7, v19

    .line 595
    :goto_5
    :try_start_6
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 596
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_6

    :cond_7
    move-object/from16 v5, v19

    .line 598
    :goto_6
    :try_start_7
    const-string v12, "animals"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 599
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-lez v23, :cond_8

    move-object/from16 v23, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v11, v4

    :goto_7
    move-object/from16 v24, v11

    :goto_8
    move-object/from16 v12, v22

    move-object/from16 v5, v23

    goto/16 :goto_10

    :cond_8
    move-object/from16 v23, v5

    move-object/from16 v12, v19

    :goto_9
    if-eqz v12, :cond_c

    .line 601
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 602
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a

    :cond_9
    move-object/from16 v4, v19

    .line 604
    :goto_a
    :try_start_9
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 605
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :cond_a
    move-object/from16 v1, v19

    .line 607
    :goto_b
    :try_start_a
    const-string v5, "animalStatusVO"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 609
    const-string v12, "animalFeedStatus"

    invoke-virtual {v5, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v24, v1

    .line 610
    :try_start_b
    const-string v1, "animalInteractStatus"

    invoke-virtual {v5, v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v11, v3

    move-object/from16 v5, v23

    move-object/from16 v23, v15

    goto/16 :goto_f

    :cond_b
    move-object/from16 v24, v1

    move-object v1, v15

    move-object v12, v1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v11, v3

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v11, v3

    goto :goto_7

    :cond_c
    move-object v1, v15

    move-object v12, v1

    move-object/from16 v4, v19

    move-object/from16 v24, v4

    .line 613
    :goto_c
    :try_start_c
    const-string v5, "manureVO"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 614
    const-string v5, "manurePotList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_d

    :cond_d
    move-object/from16 v3, v19

    :goto_d
    if-eqz v3, :cond_e

    .line 615
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x0

    .line 616
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 617
    const-string v5, "manurePotNum"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 618
    const-string v5, "manurePotNum"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_e

    :cond_e
    move-object/from16 v3, v19

    :goto_e
    move-object/from16 v5, v23

    move-object/from16 v23, v1

    move-object/from16 v38, v14

    move-object v14, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v38

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v3, v19

    move-object v11, v3

    move-object/from16 v5, v23

    move-object/from16 v23, v1

    move-object v1, v11

    :goto_f
    move-object/from16 v38, v14

    move-object v14, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v38

    goto/16 :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v11, v4

    move-object/from16 v24, v11

    move-object/from16 v12, v22

    :goto_10
    move-object/from16 v22, v14

    move-object v14, v15

    move-object/from16 v23, v14

    goto/16 :goto_16

    :catchall_7
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v11, v5

    goto :goto_12

    :catchall_8
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v11, v7

    goto :goto_12

    :cond_f
    move-object/from16 v23, v15

    move-object/from16 v3, v19

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v9, v7

    move-object/from16 v24, v9

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    goto/16 :goto_13

    :catchall_9
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v9, v7

    :goto_11
    move-object v11, v9

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object/from16 v23, v15

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_12
    move-object/from16 v24, v11

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    goto/16 :goto_16

    :catchall_b
    move-exception v0

    move-object/from16 v22, v14

    move-object v14, v15

    move-object/from16 v23, v14

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v24, v12

    goto/16 :goto_16

    :cond_10
    move-object v14, v15

    move-object/from16 v23, v14

    move-object/from16 v3, v19

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object/from16 v22, v12

    move-object/from16 v24, v22

    .line 623
    :goto_13
    :try_start_d
    const-string v1, "emotionInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 624
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 625
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    goto :goto_14

    :cond_11
    move-object/from16 v1, v19

    .line 627
    :goto_14
    :try_start_e
    const-string v13, "orchardInfo"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 629
    const-string v13, "accountInfo"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_12

    .line 630
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 631
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    goto :goto_15

    :cond_12
    move-object/from16 v11, v19

    .line 633
    :goto_15
    :try_start_f
    const-string v13, "treeStage"

    invoke-virtual {v0, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    goto/16 :goto_17

    :catchall_c
    move-exception v0

    goto :goto_16

    :cond_13
    move-object v0, v15

    move-object/from16 v11, v19

    goto/16 :goto_17

    :catchall_d
    move-exception v0

    move-object/from16 v11, v19

    goto :goto_16

    :catchall_e
    move-exception v0

    move-object/from16 v1, v19

    move-object v11, v1

    goto :goto_16

    :catchall_f
    move-exception v0

    move-object v14, v15

    move-object/from16 v23, v14

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v22, v12

    move-object/from16 v24, v22

    .line 637
    :goto_16
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    move-object/from16 p1, v1

    const-string v1, "farmInfo \u89e3\u6790\u5931\u8d25:"

    invoke-static {v13, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {v13, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v15

    move-object/from16 v38, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object/from16 v4, v38

    goto :goto_18

    :cond_14
    move-object/from16 v21, v3

    move-object v0, v15

    move-object v14, v0

    move-object/from16 v23, v14

    move-object/from16 v1, v19

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v22, v12

    move-object/from16 v24, v22

    :goto_17
    move-object/from16 p1, v11

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v0

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, p0

    .line 642
    :goto_18
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competition:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ";"

    const-string v25, " "

    if-eqz v0, :cond_31

    .line 647
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_25

    move-object/from16 v26, v12

    :try_start_11
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryCompetitionEntranceInfo()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    sget-object v12, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v12, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_24

    if-eqz v27, :cond_30

    move-object/from16 v27, v14

    .line 651
    :try_start_12
    const-string v14, "donationCompetitionActivityConf"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_23

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    if-eqz v14, :cond_16

    .line 653
    :try_start_13
    const-string v9, "name"

    invoke-virtual {v14, v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 654
    const-string v10, "endTime"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    const-wide/16 v7, 0x0

    :try_start_14
    invoke-virtual {v14, v10, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v14, v9, v7

    if-lez v14, :cond_15

    .line 656
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v7, v8, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    goto :goto_19

    :cond_15
    move-object v7, v15

    :goto_19
    move-object/from16 v9, v32

    goto :goto_1e

    :catchall_10
    move-exception v0

    goto :goto_1a

    :catchall_11
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    :goto_1a
    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v32, v11

    :goto_1b
    move-object/from16 v33, v13

    :goto_1c
    move-object v2, v15

    move-object v4, v2

    move-object v6, v4

    :goto_1d
    move-object/from16 v20, v6

    goto/16 :goto_3c

    :cond_16
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object v7, v15

    move-object v9, v7

    .line 659
    :goto_1e
    :try_start_15
    const-string v8, "rankRoundId"

    invoke-virtual {v0, v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    const-string v10, "animationInfo"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_22

    if-eqz v0, :cond_1f

    .line 662
    :try_start_16
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_17

    if-eqz v10, :cond_17

    :try_start_17
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    goto :goto_1f

    :cond_17
    move-object/from16 v6, v19

    .line 663
    :goto_1f
    :try_start_18
    const-string v10, "hasUnReceivedAward"

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 669
    const-string v14, "previousUserRankInfo"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    if-eqz v14, :cond_1a

    .line 671
    :try_start_19
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 672
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v32, v2

    goto :goto_20

    :cond_18
    move-object/from16 v32, v19

    .line 674
    :goto_20
    const-string v2, "rewardContributionNum"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 675
    const-string v2, "rewardContributionNum"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    move-object v14, v2

    goto :goto_21

    :cond_19
    move-object/from16 v14, v19

    :goto_21
    move-object/from16 v2, v32

    move-object/from16 v32, v11

    goto :goto_22

    :cond_1a
    move-object/from16 v32, v11

    move-object/from16 v2, v19

    move-object v14, v2

    .line 678
    :goto_22
    :try_start_1a
    const-string v11, "competitionProjectInfo"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    if-eqz v0, :cond_1d

    .line 680
    :try_start_1b
    const-string v11, "projectName"

    invoke-virtual {v0, v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v33, v11

    .line 681
    const-string v11, "roomNumber"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 682
    const-string v11, "roomNumber"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v34, v11

    goto :goto_23

    :cond_1b
    move-object/from16 v34, v19

    .line 684
    :goto_23
    const-string v11, "roomDonationProgress"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 685
    const-string v11, "roomDonationProgress"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    goto :goto_24

    :cond_1c
    move-object/from16 v0, v25

    :goto_24
    move-object/from16 v11, v33

    move-object/from16 v33, v13

    goto :goto_25

    :catchall_12
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v21, v5

    goto/16 :goto_1b

    :cond_1d
    move-object/from16 v33, v13

    move-object v11, v15

    move-object/from16 v34, v19

    move-object/from16 v0, v25

    .line 688
    :goto_25
    :try_start_1c
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    move-object/from16 v35, v4

    move-object/from16 v4, v21

    :try_start_1d
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u4eca\u65e5\u6350\u86cb"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";\u9879\u76ee["

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u7b2c"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static/range {v34 .. v34}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u95f4\u8fdb\u5ea6"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%;\u8f6e\u6b21"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u622a\u6b62"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1e

    .line 691
    const-string v0, "\u6709\u5f85\u9886\u5956"

    goto :goto_26

    :cond_1e
    move-object v0, v15

    :goto_26
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    .line 692
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u540d\u8d21\u732e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    move-object v2, v0

    goto :goto_29

    :catchall_13
    move-exception v0

    move-object/from16 v21, v5

    move-object v2, v15

    move-object v6, v2

    goto/16 :goto_1d

    :catchall_14
    move-exception v0

    goto :goto_28

    :catchall_15
    move-exception v0

    move-object/from16 v35, v4

    goto :goto_28

    :catchall_16
    move-exception v0

    move-object/from16 v35, v4

    goto :goto_27

    :catchall_17
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v32, v11

    :goto_27
    move-object/from16 v33, v13

    :goto_28
    move-object/from16 v21, v5

    goto/16 :goto_1c

    :cond_1f
    move-object/from16 v35, v4

    move-object/from16 v32, v11

    move-object/from16 v33, v13

    move-object v2, v15

    move-object v4, v2

    .line 695
    :goto_29
    :try_start_1f
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 696
    invoke-static {v12, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 697
    const-string v6, "donationRankHomeInfo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_20

    move-object/from16 v6, v19

    goto :goto_2a

    .line 698
    :cond_20
    const-string v7, "selfDonationRank"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    :goto_2a
    if-eqz v6, :cond_2f

    move-object/from16 v7, v16

    .line 700
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_21

    if-eqz v8, :cond_21

    :try_start_20
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    goto :goto_2c

    :catchall_18
    move-exception v0

    move-object/from16 v21, v5

    move-object v6, v15

    goto/16 :goto_1d

    .line 701
    :cond_21
    :try_start_21
    const-string v7, "totalContributionNum"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    if-eqz v7, :cond_22

    :try_start_22
    const-string v7, "totalContributionNum"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    goto :goto_2b

    :cond_22
    move-object/from16 v7, v19

    :goto_2b
    :try_start_23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 700
    :goto_2c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 702
    const-string v9, "donationTotal"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_21

    if-eqz v9, :cond_23

    :try_start_24
    const-string v9, "donationTotal"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    goto :goto_2e

    .line 703
    :cond_23
    :try_start_25
    const-string v9, "donationNum"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_21

    if-eqz v9, :cond_24

    :try_start_26
    const-string v9, "donationNum"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    goto :goto_2d

    :cond_24
    move-object/from16 v9, v19

    :goto_2d
    :try_start_27
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 702
    :goto_2e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 704
    const-string v10, "levelName"

    invoke-virtual {v6, v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\u661f\u661f\u6216\u7231\u5fc3\u503c"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u7d2f\u8ba1\u6350\u86cb"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_21

    .line 707
    :try_start_28
    const-string v9, "globalRankAwardInfo"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_25

    :goto_2f
    move-object/from16 v0, v19

    goto :goto_30

    .line 708
    :cond_25
    const-string v9, "contributionRankInfoList"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    goto :goto_2f

    :goto_30
    if-eqz v0, :cond_2e

    .line 709
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2e

    .line 713
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_20

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 714
    :goto_31
    :try_start_29
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1f

    if-ge v14, v4, :cond_2b

    .line 715
    :try_start_2a
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_28

    move-object/from16 v18, v0

    .line 716
    const-string v0, "awardRankOrder"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "awardContributionNum"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_33

    .line 719
    :cond_26
    const-string v0, "awardRankOrder"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1c

    move-object/from16 v19, v1

    :try_start_2b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1b

    move-object/from16 v20, v15

    .line 720
    :try_start_2c
    const-string v15, "awardContributionNum"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1a

    move-object/from16 v21, v5

    :try_start_2d
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 721
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_27

    .line 722
    const-string v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_27
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "\u4e07(\u661f\u661f\u6216\u7231\u5fc3\u503c"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-eqz v8, :cond_2a

    .line 726
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_19

    move-wide/from16 v36, v0

    int-to-long v0, v7

    cmp-long v15, v0, v4

    if-ltz v15, :cond_2a

    cmp-long v0, v4, v12

    if-lez v0, :cond_2a

    move-wide v12, v4

    move-wide/from16 v10, v36

    goto :goto_34

    :catchall_19
    move-exception v0

    goto :goto_32

    :catchall_1a
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_32

    :catchall_1b
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    :goto_32
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v1, v19

    goto/16 :goto_3c

    :cond_28
    move-object/from16 v18, v0

    :cond_29
    :goto_33
    move-object/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    :cond_2a
    :goto_34
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v15, v20

    move-object/from16 v5, v21

    goto/16 :goto_31

    :catchall_1c
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_36

    :cond_2b
    move-object/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    if-lez v2, :cond_2d

    .line 732
    :try_start_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u661f\u661f\u6216\u7231\u5fc3\u503c\u6392\u540d\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6863["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\u5df2\u8fbe\u6863\u4f4d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1e

    const-wide/16 v1, 0x0

    cmp-long v4, v10, v1

    if-ltz v4, :cond_2c

    .line 733
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u4e07\u540d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    goto :goto_35

    :cond_2c
    :try_start_30
    const-string v1, "\u65e0"

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1e

    move-object/from16 v1, v19

    :try_start_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1d

    goto :goto_38

    :catchall_1d
    move-exception v0

    goto :goto_37

    :catchall_1e
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_37

    :cond_2d
    move-object/from16 v1, v19

    goto :goto_38

    :catchall_1f
    move-exception v0

    :goto_36
    move-object/from16 v21, v5

    move-object/from16 v20, v15

    :goto_37
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_3c

    :cond_2e
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    :goto_38
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_3d

    :catchall_20
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    goto/16 :goto_3c

    :cond_2f
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v20

    goto/16 :goto_3d

    :catchall_21
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v15

    move-object/from16 v6, v20

    goto/16 :goto_3c

    :catchall_22
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v21, v5

    goto :goto_39

    :catchall_23
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    :goto_39
    move-object/from16 v32, v11

    move-object/from16 v33, v13

    goto :goto_3b

    :cond_30
    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v13

    move-object/from16 v27, v14

    move-object/from16 v20, v15

    move-object/from16 v2, v20

    move-object v4, v2

    move-object v6, v4

    goto :goto_3d

    :catchall_24
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    goto :goto_3a

    :catchall_25
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object/from16 v26, v12

    :goto_3a
    move-object/from16 v33, v13

    move-object/from16 v27, v14

    :goto_3b
    move-object/from16 v20, v15

    move-object/from16 v2, v20

    move-object v4, v2

    move-object v6, v4

    .line 740
    :goto_3c
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v7, "farmInfo \u6392\u4f4d\u8d5b\u67e5\u8be2\u5931\u8d25:"

    invoke-static {v5, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {v5, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_31
    move-object/from16 v35, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object/from16 v26, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v14

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    :goto_3e
    if-nez v3, :cond_32

    move-object/from16 v2, v25

    goto :goto_3f

    .line 747
    :cond_32
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v2

    :goto_3f
    if-nez v21, :cond_33

    move-object/from16 v3, v25

    goto :goto_40

    .line 748
    :cond_33
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v3

    :goto_40
    if-nez v24, :cond_34

    move-object/from16 v4, v25

    goto :goto_41

    .line 749
    :cond_34
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v4

    :goto_41
    if-nez v35, :cond_35

    goto :goto_42

    .line 750
    :cond_35
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->trimDouble(D)Ljava/lang/String;

    move-result-object v25

    :goto_42
    move-object/from16 v5, v25

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8682\u8681\u5e84\u56ed\ud83d\udc14["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\u9972\u6599"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u69fd\u5185"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";\u7231\u5fc3\u86cb"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";\u5149\u8363\u5206"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u6210\u5c31"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";\u5fc3\u60c5"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\u5c0f\u9e21["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v27

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5df2\u5403"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u88ab\u5077"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\u80a5\u6599"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\u82ad\u82ad\u519c\u573a["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v23

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_36

    move-object/from16 v1, v20

    goto :goto_43

    :cond_36
    move-object/from16 v1, p2

    :goto_43
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5e84\u56ed\u6392\u4f4d\ud83c\udfc6["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private feedAnimal(Ljava/lang/String;)V
    .locals 8

    .line 2427
    const-string v0, "UPDATE"

    const-string v1, "UPDATE|FA|"

    .line 0
    const-string v2, "\u6295\u5582\u5c0f\u9e21\ud83e\udd63\u6d88\u8017["

    const-wide/16 v3, 0xa

    .line 2427
    :try_start_0
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 2428
    iget v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const/16 v6, 0xb4

    if-ge v5, v6, :cond_0

    .line 2429
    const-string v2, "\u5269\u4f59\u9972\u6599\u4e0d\u8db3\u4ee5\u6295\u5582\u5c0f\u9e21"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2448
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    return-void

    .line 2432
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->feedAnimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2433
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2434
    iget v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const-string v7, "foodStock"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v6, v5

    neg-int v5, v6

    .line 2435
    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->add2FoodStock(I)V

    .line 2436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "g]#\u5269\u4f59["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "g\u9972\u6599]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2437
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v5, 0x3e8

    .line 2438
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2439
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateTool()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2448
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2443
    :try_start_2
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v6, "feedAnimal err:"

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    invoke-static {v5, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v5, v2

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2448
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    :goto_0
    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    return-void

    :catchall_1
    move-exception v2

    .line 2446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v5, v3

    .line 2447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2448
    new-instance v1, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, p1, v0, v3, v4}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 2449
    throw v2
.end method

.method private feedFriend()V
    .locals 7

    .line 2541
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2542
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2543
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2544
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2547
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Status;->canFeedFriendToday(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2550
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, ""

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2551
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 2554
    :cond_3
    const-string v2, "farmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subFarmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2555
    const-string v2, "farmId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2556
    const-string v3, "foodInTrough"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 2560
    const-string v3, "animals"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 2561
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 2562
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2563
    const-string v6, "masterFarmId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2566
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2568
    const-string v1, "littleChick"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2569
    const-string v1, "\u8df3\u8fc7\u5e2e\u5582\uff1a\u597d\u53cb\u7684\u5c0f\u9e21\u592a\u5c0f"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2573
    :cond_4
    const-string v1, "animalStatusVO"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2574
    const-string v3, "animalInteractStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2575
    const-string v4, "animalFeedStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2578
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2579
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2587
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "feedFriend err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private feedFriendAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 2622
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->feedFriendAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2623
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2624
    const-string p1, "391"

    const-string p2, "resultCode"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2625
    const-string p1, "farm::feedFriendAnimalLimit"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 2627
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2629
    :cond_1
    iget p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const-string p2, "foodStock"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    neg-int p1, p1

    .line 2631
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->add2FoodStock(I)V

    const/4 p1, 0x1

    .line 2632
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2635
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "feedFriendAnimal err:"

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2638
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private feedFriendAnimal(Ljava/lang/String;)V
    .locals 5

    const-string v0, "["

    .line 2594
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmId2UserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2595
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u7684\u5c0f\u9e21\u5728\u6328\u997f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 2597
    iget v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const/16 v4, 0xb4

    if-ge v3, v4, :cond_0

    .line 2598
    const-string p1, "\u5582\u9e21\u9972\u6599\u4e0d\u8db3"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 2602
    :cond_0
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->family:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 2603
    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getFamilyGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2604
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerGroupId:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 2608
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2609
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u5e2e\u5582\u5c0f\u9e21\ud83e\udd63\u5e2e\u5582\u597d\u53cb"

    goto :goto_1

    :cond_3
    const-string v1, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0\u5e2e\u5582\u6210\u5458"

    .line 2610
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u7684\u5c0f\u9e21#\u5269\u4f59["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g\u9972\u6599]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2611
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2612
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmId2UserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->feedFriendToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2615
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "feedFriendAnimal err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 8

    .line 4524
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4530
    const-string v2, "\u79d2"

    move-object v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xe10

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 4532
    div-long v2, v0, v2

    .line 4533
    const-string v4, "\u5206\u949f"

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x15180

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    .line 4535
    div-long v2, v0, v4

    .line 4536
    const-string v4, "\u5c0f\u65f6"

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x278d00

    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 4538
    div-long v2, v0, v2

    .line 4539
    const-string v4, "\u5929"

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x1e13380

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    .line 4541
    div-long v2, v0, v4

    .line 4542
    const-string v4, "\u4e2a\u6708"

    goto :goto_0

    .line 4544
    :cond_4
    div-long v2, v0, v2

    .line 4545
    const-string v4, "\u5e74"

    :goto_0
    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-gez v7, :cond_5

    .line 4549
    const-string p1, "\u521a\u521a"

    return-object p1

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v5, p1, v0

    if-lez v5, :cond_6

    .line 4551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u540e"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4553
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u524d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gameCenterBuyMallItem()V
    .locals 5

    .line 3065
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getAllSkuInfo()V

    .line 3066
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->gameCenterBuyMallItemList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3067
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3068
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3069
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3070
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 3073
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Status;->canGameCenterBuyMallItemToday(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->BuyMallItem(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xbb8

    .line 3074
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_1

    .line 3077
    :cond_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->queryOptionalPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 3079
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "gameCenterBuyMallItem err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private getAllSkuInfo()V
    .locals 3

    .line 3102
    :try_start_0
    const-string v0, "ANTFARM_GAME_CENTER"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getGameCenterMallItemList(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3106
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3107
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3108
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getSkuInfoByItemInfoVO(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3111
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "getAllSkuInfo err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private getFamilyGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4559
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4560
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4561
    const-string p1, "groupId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4564
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "getGroupId err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGameCenterMallItemList(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    const/4 v0, 0x0

    .line 3088
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getMallHome(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3089
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3090
    const-string p1, "mallItemSimpleList"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3093
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "getGameCenterMallItemList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getOrnamentsSets(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3877
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3878
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-lez v1, :cond_0

    .line 3880
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    :cond_0
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3885
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "getOrnamentsSets err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3888
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getProjectDonationNum(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 2075
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getProjectInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2076
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2079
    :cond_0
    const-string p1, "userProjectDonationNum"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 2081
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "getProjectDonationNum err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private getSkuInfoByItemInfoVO(Lorg/json/JSONObject;)V
    .locals 7

    .line 3135
    const-string v0, "mallSubItemDetailList"

    const-string v1, "spuId"

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3136
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getMallItemDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3137
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 3140
    :cond_0
    const-string v3, "mallItemDetail"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3141
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 3144
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 3145
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3146
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 3147
    const-string v4, "skuId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3148
    const-string v5, "skuName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3149
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3150
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3152
    :cond_2
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->skuInfo:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/idMap/GameCenterMallItemMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3155
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/GameCenterMallItemMap;->save(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3157
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "getSkuInfoByItemInfoVO err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private getSkuInfoBySpuId(Ljava/lang/String;)V
    .locals 2

    .line 3118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getMallItemDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3119
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3122
    :cond_0
    const-string p1, "spuItemInfoVo"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3125
    :cond_1
    const-string p1, "spuItemInfoVO"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3126
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getSkuInfoByItemInfoVO(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3128
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "getSkuInfoBySpuId err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getSortedCuisineList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 4661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4662
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4663
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4665
    :cond_0
    new-instance p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$2;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$2;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private harvestProduce(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\u6536\u53d6\u9e21\u86cb\ud83e\udd5a["

    .line 1320
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->harvestProduce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1321
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1324
    :cond_0
    const-string p1, "harvestBenevolenceScore"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1325
    const-string p1, "finalBenevolenceScore"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    .line 1326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u9897]#\u5269\u4f59"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestBenevolenceScore:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u9897"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1328
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "harvestProduce err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private hasSleepToday()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 1062
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1063
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1066
    :cond_0
    const-string v2, "sleepNotifyInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1067
    const-string v2, "hasSleepToday"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1069
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "hasSleepToday err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1072
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private hireAnimal()V
    .locals 16

    move-object/from16 v1, p0

    .line 3615
    const-string v2, "UPDATE"

    const-string v3, "UPDATE|HIRE|"

    .line 0
    const-string v0, "\u96c7\u4f63\u5c0f\u9e21\ud83d\udc77[\u5f53\u524d\u53ef\u96c7\u4f63\u5c0f\u9e21\u6570\u91cf:"

    const-wide/16 v4, 0xa

    .line 3615
    :try_start_0
    iget-object v6, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {v1, v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 3616
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v7, v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    :goto_0
    invoke-virtual {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    return-void

    .line 3619
    :cond_0
    :try_start_1
    iget-object v6, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    array-length v6, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    rsub-int/lit8 v6, v6, 0x3

    if-gtz v6, :cond_1

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    goto :goto_0

    .line 3623
    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u53ea]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 3624
    iget v0, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const/16 v7, 0x32

    if-ge v0, v7, :cond_2

    .line 3625
    const-string v0, "\u9972\u6599\u4e0d\u8db3\uff0c\u6682\u4e0d\u96c7\u4f63"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    goto :goto_0

    .line 3631
    :cond_2
    :try_start_3
    iget-object v0, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v8, 0x0

    .line 3633
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->rankingList(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3634
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_4

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 3637
    :cond_4
    :try_start_4
    const-string v10, "rankingList"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 3638
    const-string v11, "hasNext"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 3639
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, 0x0

    .line 3640
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_8

    if-lez v6, :cond_8

    .line 3641
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 3642
    const-string v13, "userId"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3643
    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 3644
    iget-object v15, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v15}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/4 v7, 0x1

    if-eq v15, v7, :cond_5

    xor-int/lit8 v14, v14, 0x1

    :cond_5
    if-eqz v14, :cond_7

    .line 3647
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 3650
    :cond_6
    const-string v7, "actionTypeList"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3651
    const-string v12, "can_hire_action"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3652
    invoke-direct {v1, v13}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalAction(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v6, v6, -0x1

    .line 3654
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoFeedAnimal()V

    :cond_7
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_9

    if-gtz v6, :cond_3

    :cond_9
    if-lez v6, :cond_a

    .line 3661
    const-string v0, "\u6ca1\u6709\u8db3\u591f\u7684\u5c0f\u9e21\u53ef\u4ee5\u96c7\u4f63"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3667
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 3664
    :try_start_5
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v7, "hireAnimal err:"

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    invoke-static {v6, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    new-instance v3, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    :goto_3
    invoke-virtual {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    return-void

    :catchall_1
    move-exception v0

    .line 3667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3669
    new-instance v4, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v3, v2, v5, v6}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {v1, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 3670
    throw v0
.end method

.method private hireAnimalAction(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    .line 3695
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, ""

    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3696
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3697
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3699
    :cond_0
    const-string v2, "farmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subFarmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3700
    const-string v2, "farmId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3701
    const-string v3, "animals"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3702
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 3703
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 3704
    const-string v6, "masterUserInfoVO"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "userId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3705
    const-string v6, "animalId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3706
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v2, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->hireAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3707
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3708
    const-string v1, "foodStock"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 3709
    const-string v1, "reduceFoodNum"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u96c7\u4f63\u5c0f\u9e21\ud83d\udc77\u96c7\u4f63["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]#\u6d88\u8017["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u9972\u6599]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3711
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3716
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "hireAnimalAction err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3719
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static initAntFarmTaskListMap(ZZZZZ)V
    .locals 10

    .line 771
    const-string v0, "otherDrawMachineActivityIds"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->load()V

    .line 772
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 773
    const-string v2, "\u5230\u5e97\u4ed8\u6b3e"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v2, "\u7ebf\u4e0a\u652f\u4ed8"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v2, "\u901b\u95ea\u8d2d\u5916\u53561\u5143\u8d77\u5403"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    const-string v2, "\u7528\u82b1\u5457\u5b8c\u6210\u4e00\u7b14\u652f\u4ed8"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v2, "\u5b8c\u62101\u7b14\u65e7\u8863\u56de\u6536"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 780
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 781
    invoke-static {v4, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmTask()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 785
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "title"

    const-string v6, "farmTaskList"

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 786
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 787
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 788
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 789
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 790
    invoke-static {v8, v8}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 794
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->save()Z

    .line 795
    const-string v3, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u5e84\u56ed\u9972\u6599\u4efb\u52a1\u5217\u8868"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    const-string v3, "AntFarm"

    if-eqz p0, :cond_8

    .line 800
    :try_start_2
    sget-object p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 801
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 802
    const-string v4, "AntFarmDoFarmTaskList"

    invoke-virtual {p0, v4}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez p0, :cond_2

    return-void

    .line 807
    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4

    .line 809
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 810
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 811
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 815
    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 819
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 820
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 821
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 826
    :cond_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u5e84\u56ed\u9972\u6599\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_4

    .line 829
    :cond_7
    const-string p0, "\u5e84\u56ed\u9972\u6599\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 834
    :cond_8
    :goto_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->load()V

    .line 835
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 836
    const-string v1, "\u3010\u9650\u65f6\u3011\u73a9\u6e38\u620f\u5f97\u65b0\u673a\u4f1a"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 837
    const-string v1, "\u3010\u9650\u65f6\u3011\u73a9\u6e38\u620f\u5f973\u6b21\u673a\u4f1a"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    const-string v1, "\u4f38\u51fa\u63f4\u624b\uff0c\u70b9\u4eae\u5e0c\u671b"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 839
    const-string v1, "\u4f38\u51fa\u63f4\u624b \u70b9\u4eae\u5e0c\u671b"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 840
    const-string v1, "\u9650\u65f6\u73a9\u6e38\u620f\u5f97\u65b0\u673a\u4f1a"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 841
    const-string v1, "\u3010\u9650\u65f6\u3011\u5f00\u5b9d\u7bb1\u5f972\u6b21\u673a\u4f1a"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 842
    const-string v1, "\u3010\u9650\u65f6\u3011\u5f00\u5b9d\u7bb1\u5f973\u6b21\u673a\u4f1a"

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 846
    const-string v2, "\u6d88\u8017\u9972\u6599\u6362\u673a\u4f1a"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    const-string v2, "\u770b\u770b\u91d1\u8c46\u593a\u5b9d\u653b\u7565"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 849
    invoke-static {v4, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz p2, :cond_12

    .line 853
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryLoveCabin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 854
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 855
    new-instance p2, Lorg/json/JSONObject;

    const-string v4, "ANTFARM_DAILY_DRAW_TASK"

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmDrawTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 857
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    .line 858
    :goto_6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 859
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 860
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 861
    invoke-static {v4, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 863
    :cond_a
    new-instance p2, Lorg/json/JSONObject;

    const-string v2, "ipDrawMachine"

    const-string v4, "dailyDrawMachine"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryDrawMachineActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 864
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 865
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 866
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 867
    new-instance p2, Lorg/json/JSONObject;

    const-string v0, "ANTFARM_IP_DRAW_TASK"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmDrawTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 869
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 870
    :goto_7
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 871
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 872
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-static {v2, v2}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 882
    :cond_b
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->save()Z

    .line 883
    const-string p2, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u5e84\u56ed\u88c5\u626e\u62bd\u62bd\u4e50\u4efb\u52a1\u5217\u8868"

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 888
    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 889
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 890
    const-string p2, "AntFarmDrawMachineTaskList"

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez p1, :cond_c

    return-void

    .line 894
    :cond_c
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_10

    .line 896
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 897
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 898
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8

    .line 901
    :cond_e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 902
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 903
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 908
    :cond_10
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u5e84\u56ed\u88c5\u626e\u62bd\u62bd\u4e50\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_a

    .line 911
    :cond_11
    const-string p0, "\u5e84\u56ed\u88c5\u626e\u62bd\u62bd\u4e50\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 915
    :cond_12
    :goto_a
    const-string p0, "AntFarmChickenChefTaskList"

    invoke-static {p3, p4, v3, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->initChickenChefTaskListMap(ZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception p0

    .line 917
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p2, "initAntFarmTaskListMap err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method

.method private static isFeedScoreError(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2114
    const-string v1, "success"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2117
    :cond_0
    const-string v1, "memo"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2118
    const-string v3, "resultDesc"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2119
    const-string v4, "resultMessage"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2120
    const-string v2, "\u9972\u6599\u79ef\u5206"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isNoEnoughPoint(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3598
    :cond_0
    const-string v1, "itemStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO_ENOUGH_POINT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 3601
    :cond_1
    const-string v1, "itemStatusList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 3603
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3604
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isReachedLimit(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3579
    :cond_0
    const-string v1, "itemStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REACH_LIMIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 3582
    :cond_1
    const-string v1, "itemStatusList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 3584
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 3585
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 3586
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LIMIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    return v0
.end method

.method private isStealRankTime(I)Z
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 1878
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 1879
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 1880
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v1

    const/16 v1, 0x4b0

    rsub-int p1, p1, 0x4b0

    if-lt v2, p1, :cond_1

    if-ge v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic lambda$IPexchangeBenefit$3(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 2

    .line 3497
    const-string v0, "_cent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$doFarmDrawTask$2(IILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3339
    :try_start_0
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3340
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "bizKey"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->doFarmTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3341
    const-string v3, "AntFarmDrawMachineTaskList"

    invoke-static {v3, p4, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u88c5\u626e\u62bd\u5956\ud83e\uddfe\u7533\u62a5["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    invoke-static {p0, p1, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3342
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x3e8

    .line 3345
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 3347
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p2, "doFarmDrawTaskPseudo err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private listFarmTask()V
    .locals 18

    move-object/from16 v1, p0

    .line 2176
    const-string v0, "ANTFARM"

    const-string v2, ""

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmTask()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2177
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 2180
    :cond_0
    const-string v4, "signList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2181
    invoke-direct {v1, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sign(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_1

    .line 2182
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2184
    :cond_1
    const-string v4, "farmTaskList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2185
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 2186
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2187
    const-string v9, "taskStatus"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    move-result-object v9

    .line 2188
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2189
    const-string v10, "rightsTimesLimit"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 2190
    const-string v11, "rightsTimes"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 2192
    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    if-ne v9, v11, :cond_3

    .line 2193
    invoke-direct {v1, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmTaskAward(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    if-lez v10, :cond_2

    if-gt v10, v15, :cond_3

    :cond_2
    move-wide v11, v5

    goto/16 :goto_3

    .line 2200
    :cond_3
    iget-object v11, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2201
    new-instance v14, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v12, "AntFarmDoFarmTaskList"

    const-string v11, "desc"

    invoke-virtual {v8, v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v11, "targetUrl"

    invoke-virtual {v8, v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v9

    move-object v11, v14

    move-object v5, v14

    move-object/from16 v14, v16

    move v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "bizKey"

    const-string v11, "taskId"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    invoke-virtual {v5, v6, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "taskRequire"

    invoke-virtual {v8, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "taskProgress"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "taskPlayType"

    const-string v9, "taskProdPlayType"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "taskMode"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "sceneCode"

    invoke-virtual {v8, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "H5"

    invoke-virtual {v5, v0, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto :goto_1

    :cond_4
    move v6, v15

    .line 2204
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    if-eq v9, v5, :cond_6

    if-gt v10, v6, :cond_6

    :cond_5
    :goto_1
    const-wide/16 v11, 0x3e8

    goto :goto_3

    .line 2208
    :cond_6
    invoke-static {v6, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_5

    .line 2210
    invoke-static {v6, v10, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v8, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->doFarmTask(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_1

    :cond_7
    const-wide/16 v11, 0x3e8

    .line 2213
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2215
    invoke-direct {v1, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmTaskAward(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-wide v5, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 2219
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "listFarmTask err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private listFarmTool()V
    .locals 6

    .line 2454
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmTool()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2455
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2458
    :cond_0
    const-string v1, "toolList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2459
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    const/4 v1, 0x0

    .line 2460
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2461
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2462
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V

    aput-object v4, v3, v1

    .line 2463
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    aget-object v3, v3, v1

    const-string v4, "toolId"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolId:Ljava/lang/String;

    .line 2464
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    aget-object v3, v3, v1

    const-string v4, "toolType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    move-result-object v4

    iput-object v4, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolType:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    .line 2465
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    aget-object v3, v3, v1

    const-string v4, "toolCount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolCount:I

    .line 2466
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    aget-object v3, v3, v1

    const-string v4, "toolHoldLimit"

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolHoldLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2469
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "listFarmTool err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private notifyFriend(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u901a\u77e5\u8d76\u9e21\ud83d\udce7\u63d0\u9192["

    const/4 v1, 0x0

    .line 2702
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->STEALING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "animalInteractStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "animalFeedStatus"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2703
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->notifyFriend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2704
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2705
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2707
    :cond_0
    const-string p2, "rewardCount"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p2

    double-to-int p2, p2

    .line 2708
    const-string p3, "refreshFoodStock"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2709
    const-string p3, "finalFoodStock"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int p1, v2

    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    goto :goto_0

    .line 2711
    :cond_1
    invoke-direct {p0, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->add2FoodStock(I)V

    .line 2713
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]\u88ab\u5077\u5403#\u83b7\u5f97["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "g\u9972\u6599]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2714
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2717
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "notifyFriend err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2720
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private notifyFriend()V
    .locals 14

    .line 2642
    const-string v0, "actionType"

    iget v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2651
    :cond_1
    :try_start_0
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->rankingList(I)Ljava/lang/String;

    move-result-object v3

    .line 2652
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2653
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 2656
    :cond_2
    const-string v3, "hasNext"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2657
    const-string v5, "rankingList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2658
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/2addr v2, v5

    const/4 v5, 0x0

    .line 2659
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 2660
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2661
    const-string v7, "userId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2662
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2663
    iget-object v9, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 2664
    iget-object v10, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    xor-int/lit8 v9, v9, 0x1

    :cond_3
    if-eqz v9, :cond_8

    .line 2667
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_3

    .line 2670
    :cond_4
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "starve_action"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 2671
    :goto_1
    const-string v9, "stealingAnimal"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v11, :cond_8

    .line 2672
    new-instance v6, Lorg/json/JSONObject;

    const-string v9, ""

    invoke-static {v9, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2673
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 2676
    :cond_6
    const-string v7, "farmVO"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "subFarmVO"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2677
    const-string v7, "farmId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2678
    const-string v9, "animals"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v9, 0x0

    .line 2679
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 2680
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 2681
    const-string v11, "animalId"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2682
    const-string v12, "masterFarmId"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2683
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2684
    const-string v12, "animalStatusVO"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 2685
    invoke-direct {p0, v10, v7, v11, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriend(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_1

    .line 2693
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9972\u6599\u5269\u4f59["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "g]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 2695
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "notifyFriend err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private ornamentsDressUp()V
    .locals 11

    .line 3823
    const-string v0, "takeOffTime"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listOrnaments()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3824
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3827
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3828
    const-string v3, "achievementOrnaments"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3830
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "name"

    if-ge v6, v7, :cond_4

    .line 3831
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3832
    const-string v9, "acquired"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 3835
    :cond_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3836
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3838
    :cond_2
    const-string v9, "resourceKey"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3839
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3840
    iget-object v10, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUpList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3841
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3843
    :cond_3
    invoke-static {v9, v8}, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3845
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->save(Ljava/lang/String;)Z

    .line 3846
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUpDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v6, v3, v0

    if-lez v6, :cond_5

    goto :goto_2

    .line 3850
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3851
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->saveOrnaments(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u88c5\u626e\u7115\u65b0\u2728["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 3855
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "ornamentsDressUp err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private parseSyncAnimalStatusResponse(Ljava/lang/String;)V
    .locals 10

    .line 2725
    const-string v0, "animalInteractStatus"

    const-string v1, "rewardList"

    const-string v2, "manureVO"

    const-string v3, "foodInTrough"

    const-string v4, "foodStock"

    const-string v5, "emotionInfo"

    const-string v6, "subFarmVO"

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2729
    :cond_0
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2730
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v5, "finalScore"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->finalScore:D

    .line 2732
    :cond_1
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2733
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2734
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2736
    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2737
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodInTrough:I

    .line 2739
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 2740
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "manurePotList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2741
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 2742
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2743
    const-string v6, "manurePotNum"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_4

    .line 2744
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "manurePotNO"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->collectManurePot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2745
    const-string v5, "success"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2746
    const-string v5, "collectManurePotNum"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2747
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6253\u626b\u9e21\u5c4e\ud83e\uddf9\u83b7\u5f97["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "g\u80a5\u6599]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2752
    :cond_5
    const-string v2, "farmId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    .line 2753
    const-string v2, "farmProduce"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2754
    const-string v3, "benevolenceScore"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->benevolenceScore:D

    .line 2755
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 2756
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2757
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2758
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    iput-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    const/4 v2, 0x0

    .line 2759
    :goto_1
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 2760
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2761
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    aget-object v7, v6, v2

    if-nez v7, :cond_6

    .line 2762
    new-instance v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    invoke-direct {v7, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V

    aput-object v7, v6, v2

    .line 2764
    :cond_6
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    aget-object v6, v6, v2

    const-string v7, "consistencyKey"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->consistencyKey:Ljava/lang/String;

    .line 2765
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    aget-object v6, v6, v2

    const-string v7, "friendId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->friendId:Ljava/lang/String;

    .line 2766
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    aget-object v6, v6, v2

    const-string v7, "time"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->time:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2770
    :cond_7
    const-string v1, "animals"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2771
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    .line 2772
    :goto_2
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    array-length v1, v1

    if-ge v4, v1, :cond_9

    .line 2773
    new-instance v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    invoke-direct {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V

    .line 2774
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2775
    const-string v5, "animalId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    .line 2776
    const-string v5, "currentFarmId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    .line 2777
    const-string v5, "masterFarmId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    .line 2778
    const-string v5, "animalBuff"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalBuff:Ljava/lang/String;

    .line 2779
    const-string v5, "subAnimalType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    .line 2780
    const-string v5, "currentFarmMasterUserId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmMasterUserId:Ljava/lang/String;

    .line 2781
    const-string v5, "locationType"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->locationType:Ljava/lang/String;

    .line 2782
    const-string v5, "animalStatusVO"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2783
    const-string v6, "animalFeedStatus"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    .line 2784
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    .line 2785
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    .line 2786
    const-string v5, "startEatTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->startEatTime:Ljava/lang/Long;

    .line 2787
    const-string v5, "beHiredEndTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->beHiredEndTime:Ljava/lang/Long;

    .line 2788
    const-string v5, "consumeSpeed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->consumeSpeed:Ljava/lang/Double;

    .line 2789
    const-string v5, "foodHaveEatten"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->foodHaveEatten:Ljava/lang/Double;

    .line 2790
    iget-object v2, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2791
    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    .line 2793
    :cond_8
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    aput-object v1, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    .line 2796
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "parseSyncAnimalStatusResponse err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method private queryChickenDiary(Ljava/lang/String;)V
    .locals 11

    .line 2909
    const-string v0, "statisticsList"

    const-string v1, "hasTietie"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryChickenDiary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2910
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2913
    :cond_0
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2914
    const-string v3, "chickenDiary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2915
    const-string v4, "diaryDateStr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2916
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 2917
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2918
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "NEW"

    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->diaryTietie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2919
    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "]"

    const-string v5, "*"

    const-string v6, "prizeNum"

    const-string v7, "prizeType"

    const/4 v8, 0x0

    const-string v9, "\u8d34\u8d34\u5c0f\u9e21\ud83d\udc9e\u5956\u52b1["

    if-eqz p1, :cond_1

    .line 2920
    :try_start_1
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2921
    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 2922
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2924
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2927
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2928
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 2929
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2930
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2931
    const-string v3, "tietieRoleId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2932
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->diaryTietie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2933
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2934
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2935
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 2936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2943
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "queryChickenDiary err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private queryChickenDiaryList()V
    .locals 5

    .line 2950
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryChickenDiaryList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2951
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2954
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "chickenDiaryBriefList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2955
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 2956
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2957
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2958
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2959
    const-string v3, "dateStr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2960
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->queryChickenDiary(Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    .line 2961
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2966
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "queryChickenDiaryList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private queryOptionalPlay()V
    .locals 8

    .line 3019
    const-string v0, "taskList"

    const-string v1, "taskTriggerPlayInfo"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryOptionalPlay()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3020
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 3023
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 3026
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3027
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 3030
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 3031
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3032
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3033
    const-string v3, "taskType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3034
    const-string v4, "taskStatus"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3035
    const-string v5, "sceneCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3036
    const-string v6, "alreadyReceiveAwardCount"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 3037
    const-string v7, "awardCount"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v6

    .line 3039
    const-string v6, "bizInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3040
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3041
    const-string v6, "FINISHED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v7, :cond_3

    .line 3043
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v7, v5, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveTaskAwardantfarm(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3044
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3045
    const-string v3, "incAwardCount"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 3046
    const-string v5, "taskConfigResultVO"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3047
    const-string v5, "awardType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c0f\u9e21\u4e50\u56ed\ud83c\udf96\ufe0f\u9886\u53d6["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5956\u52b1["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 3054
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "queryOptionalPlay err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private queryRecentFarmFood(I)Lorg/json/JSONArray;
    .locals 9

    .line 4678
    const-string v0, "count"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->syncAnimalStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4679
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 4682
    :cond_0
    const-string v3, "cuisineList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4683
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 4686
    :cond_1
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getSortedCuisineList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 4687
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4689
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    if-ge v5, p1, :cond_3

    .line 4690
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 4691
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int v8, v5, v7

    if-lt v8, p1, :cond_2

    sub-int v7, p1, v5

    .line 4694
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    add-int/2addr v5, v7

    .line 4697
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v5, p1, :cond_4

    return-object v3

    :catchall_0
    move-exception p1

    .line 4703
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "queryRecentFarmFood err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v1
.end method

.method private recallAnimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u53ec\u56de\u5c0f\u9e21\ud83d\udce3\u5077\u5403["

    .line 1215
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p2, p3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->recallAnimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1216
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1219
    :cond_0
    const-string p1, "foodHaveStolen"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 1220
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]\u9972\u6599"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "g"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1224
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "recallAnimal err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private receiveCompetitionTask()V
    .locals 9

    .line 1984
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listCompetitionTask()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1985
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1988
    :cond_0
    const-string v1, "taskList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1989
    const-string v2, "taskSceneCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    .line 1990
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1994
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1995
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1996
    const-string v4, "taskStatus"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1997
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1998
    const-string v6, "alreadyReceiveStageAwardCount"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1999
    const-string v7, "awardCount"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 2000
    const-string v8, "FINISHED"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v7, v6, :cond_2

    .line 2001
    const-string v4, "taskType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2002
    new-instance v4, Lorg/json/JSONObject;

    const/4 v6, 0x1

    invoke-static {v6, v0, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveTaskAwardantfarm(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2003
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2004
    const-string v3, "incAwardCount"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u9886\u53d6["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u4efb\u52a1\u5956\u52b1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v3, 0x1f4

    .line 2010
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1991
    :cond_3
    :goto_1
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u4efb\u52a1\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2013
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "listCompetitionTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private receiveDonationCompetitionProgressAward()V
    .locals 8

    .line 2021
    const-string v0, "]("

    const-string v1, "levelName"

    const-string v2, "userStarNum"

    const-string v3, "totalAddStarNum"

    .line 0
    const-string v4, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u6392\u4f4d\u60c5\u51b5["

    const-string v5, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u7d2f\u8ba1\u9886\u53d6\u8fdb\u5ea6\u5956\u52b1\u661f\u661f\u6216\u7231\u5fc3\u503c"

    .line 2021
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveDonationCompetitionProgressAward()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2022
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 2025
    :cond_0
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2026
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 2027
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2031
    :cond_1
    const-string v3, "beforeLevelInfo"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2032
    const-string v5, "afterLevelInfo"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 2034
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 2035
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 2036
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sub-int v5, v2, v6

    .line 2039
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")\u2192["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")(+"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2042
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "receiveDonationCompetitionProgressAward err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private receiveFamilyAward(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "\u4eb2\u5bc6\u5bb6\u5ead\ud83c\udfe0\u9886\u53d6\u5956\u52b1["

    .line 4637
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveFamilyAward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4638
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4642
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "familyAwardList err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4643
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private receiveFarmDrawTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u88c5\u626e\u62bd\u5956\ud83c\udf96\ufe0f\u9886\u53d6["

    .line 3405
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p3, p4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveFarmDrawTimesTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3406
    const-string p1, "AntFarmDrawMachineTaskList"

    invoke-static {p1, p2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3407
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u5956\u52b1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3411
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string p3, "receiveFarmDrawTimesTaskAward err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private receiveFarmTaskAward(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 8

    .line 2394
    const-string v0, "ALLPURPOSE"

    .line 0
    const-string v1, "\u9972\u6599\u9886\u53d6\ud83c\udf96\ufe0f\u4efb\u52a1["

    const/4 v2, 0x0

    .line 2394
    :try_start_0
    const-string v3, "taskId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2395
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2396
    const-string v5, "awardType"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2397
    const-string v6, "awardCount"

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 2398
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2400
    iget v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    iget v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    if-ge v6, v7, :cond_0

    add-int/2addr v6, p1

    if-le v6, v7, :cond_1

    .line 2401
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2404
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveFarmTaskAward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2405
    const-string v3, "AntFarmDoFarmTaskList"

    invoke-static {v3, v4, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2407
    const-string v3, "\u9972\u6599\u69fd\u5df2\u6ee1"

    const-string v7, "memo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2408
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2410
    :cond_2
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2411
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2413
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2414
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->add2FoodStock(I)V

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u5956\u52b1#\u83b7\u5f97["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2416
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2419
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "receiveFarmTaskAward err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2422
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private receiveReward()V
    .locals 10

    .line 1943
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterCompetitionAwardPage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1944
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1947
    :cond_0
    const-string v1, "levelAwardInfoList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1948
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1952
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1953
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1954
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1955
    const-string v5, "unreceived"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "unclaimed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1956
    :cond_2
    const-string v4, "rightsId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1957
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveDonationLevelReward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1958
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1959
    const-string v3, "levelAwardList"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1960
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 1964
    :cond_3
    const-string v5, "levelName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1965
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1966
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1967
    const-string v7, "awardName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1968
    const-string v8, "awardNum"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u9886\u53d6["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\u6bb5\u4f4d\u5956\u52b1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1961
    :cond_4
    :goto_2
    const-string v3, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5956\u52b1\u4e3a\u7a7a"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x1f4

    .line 1973
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1949
    :cond_6
    :goto_4
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5956\u52b1\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1976
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "receiveReward err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private receiveToolTaskReward()V
    .locals 12

    .line 1274
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listToolTaskDetails()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1275
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1278
    :cond_0
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1279
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1280
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1281
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "taskStatus"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 1284
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "bizInfo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1285
    const-string v5, "awardType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    move-result-object v6

    .line 1288
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmTools:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 1289
    iget-object v11, v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolType:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    if-ne v11, v6, :cond_3

    .line 1290
    iget v7, v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolCount:I

    iget v8, v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;->toolHoldLimit:I

    if-ne v7, v8, :cond_4

    .line 1297
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->NEWEGGTOOL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    invoke-virtual {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1298
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->NEWEGGTOOL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    invoke-direct {p0, v7, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useFarmTool(Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;)Ljava/lang/Boolean;

    goto :goto_2

    .line 1300
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9886\u53d6\u9053\u5177["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->nickName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]#\u5df2\u6ee1\uff0c\u6682\u4e0d\u9886\u53d6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1304
    :cond_4
    :goto_2
    const-string v7, "awardCount"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1305
    const-string v8, "taskType"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1306
    const-string v8, "taskTitle"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1307
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v5, v7, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveToolTaskReward(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1308
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9886\u53d6\u9053\u5177\ud83c\udf96\ufe0f["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->nickName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5f20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1313
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "receiveToolTaskReward err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private recordFarmGame(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;)V
    .locals 11

    .line 2127
    const-string v0, "receiveFoodCount"

    const-string v1, "remainingGameCount"

    :goto_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->initFarmGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2128
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 2162
    :try_start_1
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 2131
    :cond_0
    :try_start_2
    const-string v6, "gameAward"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "level3Get"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    .line 2162
    :try_start_3
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_1
    const/4 v6, 0x1

    .line 2134
    :try_start_4
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_2

    .line 2162
    :try_start_5
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 2137
    :cond_2
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->recordFarmGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2139
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->flyGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    if-ne p1, v6, :cond_3

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isFeedScoreError(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2140
    const-string v4, "\u98de\u884c\u8d5b\u9972\u6599\u79ef\u5206\u5f02\u5e38\uff0c\u6539\u7528 score/100 \u91cd\u65b0\u4e0a\u62a5"

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    .line 2141
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2142
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->recordFarmGame(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2144
    :cond_3
    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_4

    .line 2162
    :try_start_7
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    .line 2147
    :cond_4
    :try_start_8
    const-string v5, "awardInfos"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2149
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 2150
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2151
    const-string v10, "awardName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "*"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "awardCount"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2153
    :cond_5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2154
    const-string v5, ";\u80a5\u6599*"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5c0f\u9e21\u4e50\u56ed\ud83c\udfae\u6e38\u73a9["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->gameName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]#\u83b7\u5f97["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-lez v4, :cond_7

    .line 2162
    :try_start_9
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2163
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    .line 2166
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "recordFarmGame err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private rewardFriend()V
    .locals 9

    .line 1196
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;

    if-eqz v0, :cond_2

    .line 1197
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1198
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->consistencyKey:Ljava/lang/String;

    iget-object v6, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->friendId:Ljava/lang/String;

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardProductNum:Ljava/lang/String;

    iget-object v8, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->time:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->rewardFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1199
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1200
    iget-wide v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->benevolenceScore:D

    const-string v7, "farmProduct"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    sub-double/2addr v5, v7

    .line 1201
    iget-wide v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->benevolenceScore:D

    sub-double/2addr v7, v5

    iput-wide v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->benevolenceScore:D

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6253\u8d4f\u597d\u53cb\ud83d\udcb0["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;->friendId:Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]#\u5f97"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\u9897\u7231\u5fc3\u9e21\u86cb"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1205
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardList:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RewardFriend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1208
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "rewardFriend err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private saveOrnaments(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    .line 3862
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    .line 3863
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    .line 3864
    const-string v2, "sets"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->getOrnamentsSets(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    .line 3865
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0, v1, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->saveOrnaments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3866
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3868
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "saveOrnaments err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3871
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private savePreviewQuestion(Lorg/json/JSONArray;)V
    .locals 8

    .line 2331
    const-string v0, "title"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2332
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2333
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2334
    const-string v5, "PREVIEW_QUESTION"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2335
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2336
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "actionTitle"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2337
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 2338
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2339
    const-string v7, "correct"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2340
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->saveAnswer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2346
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "saveAnswerList err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private sendBackAnimal()V
    .locals 12

    .line 1230
    const-string v0, "finalFoodStorage"

    const-string v1, "hitLossFood"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    if-nez v2, :cond_0

    return-void

    .line 1234
    :cond_0
    :try_start_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    .line 1235
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->STEALING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->GUEST:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1237
    iget-object v6, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmId2UserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1238
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 1239
    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    xor-int/lit8 v7, v7, 0x1

    :cond_1
    if-nez v7, :cond_2

    goto/16 :goto_2

    .line 1245
    :cond_2
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalWay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1246
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1247
    new-instance v8, Lorg/json/JSONObject;

    sget-object v9, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalWay;->nickNames:[Ljava/lang/String;

    aget-object v9, v9, v7

    iget-object v10, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    iget-object v11, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    invoke-static {v9, v10, v11, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->sendBackAnimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1248
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v5, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v7, :cond_4

    .line 1251
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u80d6\u63cd\u5c0f\u9e21\ud83e\udd3a["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\uff0c\u6389\u843d["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "g]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1253
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1254
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    goto :goto_1

    .line 1257
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\u7684\u5c0f\u9e21\u8eb2\u5f00\u4e86\u653b\u51fb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1260
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u9a71\u8d76\u5c0f\u9e21\ud83e\uddf6["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    :cond_5
    :goto_1
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1267
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "sendBackAnimal err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private sign(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 7

    .line 2225
    const-string v0, "farm::sign"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    .line 2226
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    return-object v3

    .line 2230
    :cond_0
    :try_start_0
    const-string v1, "currentSignKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2231
    const-string v4, "signList"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v4, 0x0

    .line 2232
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 2233
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2234
    const-string v6, "signKey"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2237
    :cond_1
    const-string p1, "signed"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2238
    const-string p1, "\u5e84\u56ed\u4eca\u65e5\u5df2\u7b7e\u5230"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2261
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return-object v3

    .line 2242
    :cond_2
    :try_start_1
    const-string p1, "awardCount"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2243
    iget v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    add-int/2addr v4, p1

    iget v6, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStockLimit:I

    if-le v4, v6, :cond_3

    return-object v3

    .line 2246
    :cond_3
    const-string v4, "currentContinuousCount"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2247
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->sign()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2248
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2249
    const-string v6, "foodStock"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9972\u6599\u4efb\u52a1\ud83d\udcc5\u7b7e\u5230[\u575a\u6301"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5929]#\u83b7\u5f97["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u9972\u6599]"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2252
    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2261
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    return-object v3

    :catchall_1
    move-exception p1

    .line 2257
    :goto_1
    :try_start_3
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v4, "sign err:"

    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_5

    .line 2261
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    :cond_5
    return-object v3

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_6

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 2263
    :cond_6
    throw p1
.end method

.method private stealRank(ILjava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 1760
    const-string v3, "userDonationRankList"

    const-string v4, "donationRankHomeInfo"

    const-string v5, "isParticipateCompetition"

    const-string v6, "exitDonationCompetition"

    .line 0
    const-string v7, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f00\u542f(S2\u7231\u5fc3\u96c6\u7ed3\u53f7)\uff1a"

    const-string v8, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5f00\u542f(S1\u6350\u86cb\u6392\u4f4d\u8d5b)\uff1a"

    .line 1760
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 1761
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_3

    .line 1765
    :cond_0
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v12, "memo"

    if-eqz v11, :cond_1

    .line 1766
    :try_start_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1769
    new-instance v6, Lorg/json/JSONObject;

    const-string v11, "OPEN"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->setDonationCompetitionConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1770
    invoke-static {v10, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1771
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1772
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1780
    :cond_1
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1781
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1784
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->participateCompetition()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1785
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1786
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1796
    :cond_2
    iget-object v5, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDailyLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1797
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v6

    .line 1800
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterDonationCompetitionRank()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 1801
    invoke-static {v10, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 1804
    :cond_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v9, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u672a\u67e5\u8be2\u5230\u6350\u8d60\u6392\u884c\u4fe1\u606f"

    if-nez v8, :cond_4

    .line 1805
    :try_start_2
    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1808
    :cond_4
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1809
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1810
    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1813
    :cond_5
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1814
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1818
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v4, v11, :cond_a

    .line 1819
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1820
    const-string v13, "userId"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1821
    const-string v14, "rewardStarNum"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1822
    const-string v14, "donationNum"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 1823
    const-string v15, "rankOrder"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_7

    move v8, v14

    :cond_7
    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    move v10, v14

    .line 1830
    :cond_8
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v7, v11

    move v9, v14

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1836
    :cond_a
    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionLeadEggs:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1838
    const-string v4, "(\u505c\u6b62\u6350\u86cb)"

    const-string v6, "\u6350\u86cb\u9650\u5236"

    const-string v11, "\u9700\u518d\u6350\u86cb"

    const-string v13, "\u6761\u4ef6\u4e14\u65e0\u6350\u86cb\u4e0a\u9650\u5c1d\u8bd5\u518d\u6350\u86cb"

    const-string v14, "\u6fc0\u8fdb\u6a21\u5f0f"

    const-string v15, ",\u6ee1\u8db3\u9886\u5148"

    const-string v12, "\u6350\u86cb"

    move/from16 v17, v8

    const-string v8, "\u5206\u949f)\u76ee\u524d\u6392\u540d"

    move-object/from16 v18, v4

    const-string v4, "\u65f6\u95f4\u6bb5(\u63d0\u524d"

    move-object/from16 v19, v6

    const-string v6, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a"

    move-object/from16 v20, v11

    const/4 v11, 0x1

    if-ne v7, v11, :cond_e

    sub-int v11, v9, v10

    .line 1839
    const-string v1, ",\u7b2c2\u540d\u6350\u86cb"

    if-lt v11, v3, :cond_b

    .line 1840
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6761\u4ef6,\u4e0d\u7528\u6350\u86cb"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_b
    add-int v11, v10, v3

    sub-int/2addr v11, v9

    if-nez v5, :cond_c

    .line 1844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    .line 1845
    :try_start_4
    invoke-direct {v1, v14, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    :cond_c
    move-object v13, v1

    add-int v1, v11, v9

    if-le v1, v5, :cond_d

    .line 1847
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_5

    .line 1849
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6761\u4ef6\u5c1d\u8bd5\u518d\u6350\u86cb"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v1, p0

    .line 1850
    :try_start_6
    invoke-direct {v1, v14, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :cond_e
    move-object/from16 v21, v18

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    add-int v16, v17, v3

    sub-int v11, v16, v9

    .line 1857
    const-string v10, ",\u7b2c1\u540d\u6350\u86cb"

    if-nez v5, :cond_f

    .line 1858
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1859
    invoke-direct {v1, v14, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    :cond_f
    move/from16 v13, v17

    add-int v1, v11, v9

    if-le v1, v5, :cond_10

    .line 1861
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1863
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6761\u4ef6\u8fd8\u9700\u5c1d\u8bd5\u6350\u86cb"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v1, p0

    .line 1864
    :try_start_9
    invoke-direct {v1, v14, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDonation(Ljava/lang/String;I)V

    goto :goto_5

    .line 1815
    :cond_11
    :goto_2
    const-string v0, "\u6350\u86cb\u6392\u4f4d\ud83e\udd5a\u5956\u52b1\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_12
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 1869
    :goto_4
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v3, "stealRank err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private syncAnimalStatus(Ljava/lang/String;)V
    .locals 2

    .line 1153
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->syncAnimalStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->parseSyncAnimalStatusResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1156
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "syncAnimalStatus err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private syncAnimalStatusAtOtherFarm(Ljava/lang/String;)V
    .locals 4

    .line 1163
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1164
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1167
    :cond_0
    const-string p1, "farmVO"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "subFarmVO"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1168
    const-string v1, "animals"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1169
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1170
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1171
    const-string v3, "masterFarmId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V

    .line 1173
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1174
    const-string v1, "animalId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    .line 1175
    const-string v1, "currentFarmId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    .line 1176
    const-string v1, "currentFarmMasterUserId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmMasterUserId:Ljava/lang/String;

    .line 1177
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    iput-object v1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    .line 1178
    const-string v1, "animalBuff"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalBuff:Ljava/lang/String;

    .line 1179
    const-string v1, "locationType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->locationType:Ljava/lang/String;

    .line 1180
    const-string v0, "subAnimalType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    .line 1181
    const-string v0, "animalStatusVO"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1182
    const-string v0, "animalFeedStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    .line 1183
    const-string v0, "animalInteractStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    .line 1184
    iput-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1189
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "syncAnimalStatusAtOtherFarm err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private syncFamilyStatus(Ljava/lang/String;)V
    .locals 3

    .line 4715
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "INTIMACY_VALUE"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->syncFamilyStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4716
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4718
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "syncFamilyStatus err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4719
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static trimDouble(D)Ljava/lang/String;
    .locals 3

    .line 762
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    double-to-long p0, p0

    .line 763
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 765
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private useAccelerateTool()V
    .locals 18

    move-object/from16 v0, p0

    .line 2475
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canUseAccelerateToolToday()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2478
    :cond_0
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 2479
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateToolOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "useAccelerateToolContinue"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->ACCELERATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalBuff:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateToolOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v3, "useAccelerateToolWhenMaxEmotion"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->finalScore:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_3

    :cond_2
    return-void

    .line 2484
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 2485
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animals:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    array-length v7, v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v10, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v7, :cond_5

    aget-object v13, v1, v12

    .line 2486
    iget-object v14, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->masterFarmId:Ljava/lang/String;

    iget-object v15, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2487
    iget-object v10, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->consumeSpeed:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 2489
    :cond_4
    iget-object v14, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->consumeSpeed:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v13, v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->startEatTime:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v16, v16, v5

    sub-long v5, v3, v16

    long-to-double v5, v5

    mul-double v14, v14, v5

    add-double/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0x3e8

    goto :goto_0

    .line 2493
    :cond_5
    iget v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodInTrough:I

    int-to-double v3, v1

    sub-double/2addr v3, v8

    const-wide v5, 0x40ac200000000000L    # 3600.0

    mul-double v5, v5, v10

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_7

    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->ACCELERATETOOL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    invoke-direct {v0, v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useFarmTool(Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v3, 0x3e8

    .line 2494
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-double/2addr v8, v5

    .line 2496
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->useAccelerateToolToday()V

    .line 2497
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canUseAccelerateToolToday()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 2500
    :cond_6
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateToolOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_7
    :goto_1
    return-void
.end method

.method private useFarmTool(Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 2508
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listFarmTool()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2509
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2510
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2512
    :cond_0
    const-string v2, "toolList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2513
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2514
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2515
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toolType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2518
    :cond_1
    const-string v1, "toolCount"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2520
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2522
    :cond_2
    const-string v2, "toolId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2523
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->useFarmTool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2524
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528\u9053\u5177\ud83c\udfad["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->nickName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]#\u5269\u4f59"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5f20"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2526
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2527
    :cond_3
    const-string p1, "3D16"

    const-string v1, "resultCode"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "farm::useFarmToolLimit::"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2533
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v1, "useFarmTool err:"

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2536
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private visitAnimal()V
    .locals 7

    .line 2973
    const-string v0, "actionNodes"

    const-string v1, "talkConfigs"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->visitAnimal()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2974
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 2978
    :cond_0
    const-string v4, "talkNodes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2979
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2980
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2981
    const-string v5, "farmId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2982
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->feedFriendAnimalVisit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2983
    invoke-static {v3, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 2987
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2988
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2989
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2990
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 2997
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 2998
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2999
    const-string v4, "FEED"

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 3002
    :cond_5
    const-string v4, "consistencyKey"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3003
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->visitAnimalSendPrize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3004
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3005
    const-string v3, "prizeName"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3006
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmId2UserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3007
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c0f\u9e21\u5230\u8bbf\ud83d\udc9e\u6295\u5582["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]#\u83b7\u5f97["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    .line 3011
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "visitAnimal err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private visitFriend()V
    .locals 4

    .line 2846
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->visitFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2847
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2848
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2849
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2850
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2853
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Status;->canVisitFriendToday(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2854
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->visitFriend(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private visitFriend(Ljava/lang/String;I)V
    .locals 6

    .line 2861
    const-string v0, "foodStock"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterFarm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2862
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2865
    :cond_0
    const-string v2, "farmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2866
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2867
    const-string v2, "subFarmVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2868
    const-string v2, "visitedToday"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "farm::visitFriendLimit::"

    if-eqz v2, :cond_1

    .line 2869
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return-void

    .line 2872
    :cond_1
    const-string v2, "farmId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2873
    :cond_2
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Status;->canVisitFriendToday(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_4

    .line 2874
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->visitFriend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2875
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const-wide/16 v4, 0x3e8

    .line 2878
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 2879
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->visitFriendToday(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->foodStock:I

    .line 2881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8d60\u9001\u9ea6\u5b50\ud83c\udf3e\u8d60\u9001["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]\u9ea6\u5b50#\u6d88\u8017["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "giveFoodNum"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "g\u9972\u6599]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 2882
    const-string v4, "isReachLimit"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4eca\u65e5\u7ed9["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u9001\u9ea6\u5b50\u5df2\u8fbe\u4e0a\u9650"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 2884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2889
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v0, "visitFriend err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 3437
    :try_start_0
    invoke-static {v0, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getItemList(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 3438
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3440
    const-string v3, "success"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "100000000"

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return v4

    .line 3442
    :cond_1
    :goto_0
    const-string v3, "mallAccountInfoVO"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3443
    const-string v6, "cent"

    if-eqz v3, :cond_2

    .line 3444
    :try_start_1
    const-string v7, "holdingCount"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3446
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 3450
    :goto_1
    const-string v7, "itemInfoVOList"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_3

    return v7

    .line 3455
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 3456
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "_spuId"

    const-string v12, "_cent"

    const-string v13, "_isReachLimit"

    if-ge v9, v10, :cond_f

    .line 3457
    :try_start_2
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_5

    :goto_3
    move-object/from16 v17, v5

    :cond_4
    move-object/from16 v18, v6

    goto/16 :goto_a

    .line 3461
    :cond_5
    const-string v14, "labelTypeList"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_6

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3466
    :goto_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v15, v7, :cond_8

    .line 3467
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 3468
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v16, 0x1

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    if-nez v16, :cond_9

    goto :goto_3

    .line 3475
    :cond_9
    invoke-direct {v1, v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isReachedLimit(Lorg/json/JSONObject;)Z

    move-result v7

    .line 3476
    const-string v14, "minPrice"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 3477
    invoke-virtual {v14, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    .line 3479
    :goto_5
    const-string v15, "skuModelList"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-nez v15, :cond_b

    goto :goto_3

    :cond_b
    move-object/from16 v17, v5

    .line 3483
    :goto_6
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 3484
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_c

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    goto :goto_9

    :cond_c
    move-object/from16 v18, v6

    .line 3488
    const-string v6, "spuId"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3489
    const-string v6, "_spuName"

    move-object/from16 v19, v15

    const-string v15, "spuName"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v7, :cond_e

    .line 3490
    invoke-direct {v1, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isReachedLimit(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v6, 0x1

    :goto_8
    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3491
    invoke-virtual {v5, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3492
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    goto :goto_6

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 3496
    :cond_f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_10

    .line 3497
    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v8, v4}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    .line 3500
    :cond_10
    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;

    invoke-direct {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;-><init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V

    invoke-static {v8, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3508
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "skuName"

    if-eqz v5, :cond_13

    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 3509
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_c

    :cond_11
    const/4 v7, 0x0

    .line 3512
    invoke-virtual {v5, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 3513
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3515
    invoke-direct {v1, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isNoEnoughPoint(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_12

    if-lez v4, :cond_13

    if-ge v3, v4, :cond_13

    .line 3516
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5151\u6362["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u7c7b\u6700\u9ad8\u4ef7\u503c["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u788e\u7247\u4e0d\u8db3(\u6301\u6709"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u9700"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    .line 3523
    :cond_13
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 3524
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_d

    .line 3528
    :cond_14
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3529
    invoke-virtual {v5, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 3530
    const-string v8, "skuExtendInfo"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3531
    const-string v10, "20\u6b21"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/16 v8, 0x14

    goto :goto_e

    :cond_15
    const-string v10, "5\u6b21"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x5

    goto :goto_e

    :cond_16
    const/4 v8, 0x1

    .line 3534
    :goto_e
    invoke-direct {v1, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->isNoEnoughPoint(Lorg/json/JSONObject;)Z

    move-result v10

    if-nez v10, :cond_1d

    if-lez v9, :cond_17

    if-ge v3, v9, :cond_17

    goto/16 :goto_12

    :cond_17
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_1b

    if-lez v9, :cond_18

    if-ge v3, v9, :cond_18

    goto :goto_10

    .line 3546
    :cond_18
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "skuId"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "ANTFARM_IP_DRAW_MALL"

    move-object/from16 v17, v4

    const-string v4, "antfarm_villa"

    invoke-static {v14, v15, v0, v1, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->exchangeBenefit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3548
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3549
    const-string v1, "resultCode"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3551
    const-string v4, "SUCCESS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v3, v9

    .line 3554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5151\u6362\u88c5\u626e\ud83d\udc54["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u7c7b["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]#\u5269\u4f59\u788e\u7247"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v4, v3, 0x64

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const-wide/16 v14, 0x320

    .line 3555
    invoke-static {v14, v15}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    move-object/from16 v1, p0

    move-object/from16 v4, v17

    goto :goto_f

    .line 3556
    :cond_19
    const-string v4, "NO_ENOUGH_POINT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    return v4

    .line 3558
    :cond_1a
    const-string v4, "LIMIT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "MAX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_11

    :cond_1b
    :goto_10
    move-object/from16 v17, v4

    :cond_1c
    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v4, v17

    goto/16 :goto_d

    .line 3535
    :cond_1d
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5269\u4f59\u788e\u7247\u4e0d\u8db3\u4ee5\u5151\u6362["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u7c7b\u4f18\u5148\u7ea7\u9879 ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] (\u9700 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\uff0c\u505c\u6b62\u540e\u7eed\u5151\u6362\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v1, 0x0

    return v1

    :cond_1e
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 3570
    const-string v1, "\u81ea\u52a8\u5151\u6362\u5f02\u5e38"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public boot(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->boot(Ljava/lang/ClassLoader;)V

    const/16 p1, 0x7d0

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "com.alipay.antfarm.enterFarm"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->addIntervalLimit(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 210
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u8682\u8681\u5e84\u56ed:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 22

    move-object/from16 v0, p0

    .line 135
    new-instance v1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 136
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v3, 0x0

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 136
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "receiveFarmTaskAward"

    const-string v5, "\u9972\u6599\u4efb\u52a1\u53ca\u5956\u52b1"

    invoke-direct {v2, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmTaskAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 137
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 137
    const-string v4, "AutoAntFarmDoFarmTaskList"

    const-string v6, "\u5e84\u56ed\u9972\u6599 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    invoke-direct {v2, v4, v6, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 138
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda11;-><init>()V

    const-string v7, "AntFarmDoFarmTaskList"

    const-string v8, "\u5e84\u56ed\u9972\u6599 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 139
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u65b0\u86cb\u5361 | \u4f7f\u7528"

    const-string v6, "useNewEggTool"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useNewEggTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 140
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u52a0\u901f\u5361 | \u4f7f\u7528"

    const-string v6, "useAccelerateTool"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 141
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda15;-><init>()V

    const-string v7, "useAccelerateToolOptions"

    const-string v8, "\u52a0\u901f\u5361 | \u9009\u9879"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateToolOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 142
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u52a0\u996d\u5361 | \u4f7f\u7528"

    const-string v6, "useBigEaterTool"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useBigEaterTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 143
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u7279\u6b8a\u98df\u54c1 | \u4f7f\u7528"

    const-string v6, "useSpecialFood"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useSpecialFood:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 144
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v4, "\u7279\u6b8a\u98df\u54c1 | \u4f7f\u7528\u4e0a\u9650(\u65e0\u9650:0)"

    const-string v6, "useSpecialFoodCountLimit"

    invoke-direct {v2, v6, v4, v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useSpecialFoodCountLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 145
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u53a8\u623f"

    const-string v6, "kitchen"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->kitchen:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 146
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u81ea\u52a8\u505a\u7f8e\u98df"

    const-string v6, "autoChickenChefCook"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoChickenChefCook:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 147
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$ChickenChefCookStrategy;->nickNames:[Ljava/lang/String;

    const-string v6, "chickenChefCookStrategy"

    const-string v7, "\u5c0f\u9e21\u5927\u53a8 | \u505a\u7f8e\u98df\u7b56\u7565"

    invoke-direct {v2, v6, v7, v15, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenChefCookStrategy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 148
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u5927\u53a8\u4efb\u52a1"

    const-string v6, "chickenChef"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenChef:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 149
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5927\u53a8\u4efb\u52a1 | \u63a8\u8350\u9ed1\u540d\u5355"

    const-string v6, "AutoAntFarmChickenChefTaskList"

    invoke-direct {v2, v6, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 150
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda16;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda16;-><init>()V

    const-string v7, "AntFarmChickenChefTaskList"

    const-string v8, "\u5927\u53a8\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 151
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "giftAiKitchenIngredientFriendList"

    const-string v8, "\u5c0f\u9e21\u5927\u53a8 | \u8d60\u9001\u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->giftAiKitchenIngredientFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 152
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6253\u8d4f\u597d\u53cb"

    const-string v6, "rewardFriend"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 153
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RecallAnimalType;->nickNames:[Ljava/lang/String;

    const-string v6, "recallAnimalType"

    const-string v7, "\u53ec\u56de\u5c0f\u9e21"

    invoke-direct {v2, v6, v7, v10, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recallAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 154
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6295\u5582\u5c0f\u9e21"

    const-string v6, "feedAnimal"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 155
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5e2e\u5582\u5c0f\u9e21 | \u5f00\u542f"

    const-string v6, "feedFriendAnimal"

    invoke-direct {v2, v6, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 156
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v20, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda14;

    invoke-direct/range {v20 .. v20}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda14;-><init>()V

    const-string v21, "\u8bf7\u586b\u5199\u5e2e\u5582\u6b21\u6570(\u6bcf\u65e5)"

    const-string v17, "feedFriendAnimalList"

    const-string v18, "\u5e2e\u5582\u5c0f\u9e21 | \u597d\u53cb\u5217\u8868"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 157
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$HireAnimalType;->nickNames:[Ljava/lang/String;

    const-string v6, "hireAnimalType"

    const-string v7, "\u96c7\u4f63\u5c0f\u9e21 | \u52a8\u4f5c"

    invoke-direct {v2, v6, v7, v10, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 158
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "hireAnimalList"

    const-string v8, "\u96c7\u4f63\u5c0f\u9e21 | \u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 159
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalWay;->nickNames:[Ljava/lang/String;

    const-string v6, "sendBackAnimalWay"

    const-string v7, "\u9063\u8fd4\u5c0f\u9e21 | \u65b9\u5f0f"

    invoke-direct {v2, v6, v7, v15, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalWay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 160
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalType;->nickNames:[Ljava/lang/String;

    const-string v6, "sendBackAnimalType"

    const-string v7, "\u9063\u8fd4\u5c0f\u9e21 | \u52a8\u4f5c"

    invoke-direct {v2, v6, v7, v10, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 161
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "sendFriendList"

    const-string v8, "\u9063\u8fd4\u5c0f\u9e21 | \u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 162
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$NotifyFriendType;->nickNames:[Ljava/lang/String;

    const-string v6, "notifyFriendType"

    const-string v7, "\u901a\u77e5\u8d76\u9e21 | \u52a8\u4f5c"

    invoke-direct {v2, v6, v7, v10, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 163
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "notifyFriendList"

    const-string v8, "\u901a\u77e5\u8d76\u9e21 | \u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 164
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u88c5\u626e\u7115\u65b0 | \u5f00\u542f"

    const-string v6, "ornamentsDressUp"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 165
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "ornamentsDressUpList"

    const-string v8, "\u88c5\u626e\u7115\u65b0 | \u5957\u88c5\u5217\u8868"

    invoke-direct {v2, v7, v8, v4, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUpList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 166
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "ornamentsDressUpDays"

    const-string v7, "\u88c5\u626e\u7115\u65b0 | \u7115\u65b0\u9891\u7387(\u5929)"

    invoke-direct {v2, v6, v7, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUpDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 167
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u88c5\u626e\u62bd\u62bd\u4e50"

    const-string v6, "drawMachine"

    invoke-direct {v2, v6, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 168
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u62bd\u62bd\u4e50 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    const-string v6, "AutoAntFarmDrawMachineTaskList"

    invoke-direct {v2, v6, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 169
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda1;-><init>()V

    const-string v6, "AntFarmDrawMachineTaskList"

    const-string v7, "\u62bd\u62bd\u4e50 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 170
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u62bd\u62bd\u4e50\u5151\u6362 | \u5f00\u542f"

    const-string v5, "IPexchangeBenefit"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 171
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$DonationType;->nickNames:[Ljava/lang/String;

    const-string v5, "donationType"

    const-string v6, "\u6bcf\u65e5\u6350\u86cb | \u65b9\u5f0f"

    invoke-direct {v2, v5, v6, v10, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 172
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v4, "\u6bcf\u65e5\u6350\u86cb | \u500d\u6570(\u6bcf\u9879)"

    const-string v5, "donationAmount"

    invoke-direct {v2, v5, v4, v15}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationAmount:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 173
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6392\u4f4d\u8d5b | \u81ea\u52a8\u6350\u86cb\u9886\u5956"

    const-string v5, "competition"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competition:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 174
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v5, "competitionStarNum"

    const-string v6, "\u4fdd\u5e95\u6a21\u5f0f | \u76ee\u6807\u661f\u661f\u6570\u6216\u7231\u5fc3\u503c"

    move-object v4, v2

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionStarNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 175
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v5, "competitionDailyLimit"

    const-string v6, "\u6392\u4f4d\u6350\u86cb | \u6350\u86cb\u4e0a\u9650(0\u4e0d\u9650)"

    move-object v4, v2

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionDailyLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 176
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v5, "competitionLeadEggs"

    const-string v6, "\u6fc0\u8fdb\u6a21\u5f0f | \u6350\u81f3\u699c\u9996\u9886\u5148\u86cb\u6570"

    move-object v4, v2

    move-object v7, v15

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionLeadEggs:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 177
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v5, "competitionStealMinutes"

    const-string v6, "\u6fc0\u8fdb\u6a21\u5f0f | \u9738\u699c\u63d0\u524d\u5206\u949f\u6570(0\u4e0d\u9738\u699c\uff0c1200\u4e3a\u6574\u5929)"

    move-object v4, v2

    move-object v7, v10

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competitionStealMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 178
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v5, "stealRankMinutes"

    const-string v6, "\u6fc0\u8fdb\u6a21\u5f0f | \u5077\u699c\u63d0\u524d\u5206\u949f\u6570(0\u4e0d\u5077\u699c)"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->stealRankMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 179
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4eb2\u5bc6\u5bb6\u5ead | \u5f00\u542f"

    const-string v5, "family"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->family:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 180
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda12;-><init>()V

    const-string v6, "familyOptions"

    const-string v7, "\u4eb2\u5bc6\u5bb6\u5ead | \u9009\u9879"

    invoke-direct {v2, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->familyOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 181
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v6, "notInviteList"

    const-string v7, "\u4eb2\u5bc6\u5bb6\u5ead | \u4e0d\u9080\u8bf7\u5217\u8868"

    invoke-direct {v2, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notInviteList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 182
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u7761\u89c9 | \u5141\u8bb8\u7761\u89c9"

    const-string v5, "enableSleep"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enableSleep:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 183
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    const-string v4, "\u5c0f\u9e21\u7761\u89c9 | \u65f6\u95f4"

    const-string v5, "2001"

    const-string v6, "sleepTime"

    invoke-direct {v2, v6, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sleepTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 184
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v4, 0x24e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v4, 0x258

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "sleepMinutes"

    const-string v13, "\u5c0f\u9e21\u7761\u89c9 | \u65f6\u957f(\u5206\u949f)"

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sleepMinutes:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 185
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u4e50\u56ed | \u6e38\u620f\u6539\u5206(\u661f\u661f\u7403\u3001\u767b\u5c71\u8d5b\u3001\u98de\u884c\u8d5b\u3001\u63cd\u5c0f\u9e21)"

    const-string v5, "recordFarmGame"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const-string v4, "2200-2400"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v4, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    const-string v5, "farmGameTime"

    const-string v6, "\u5c0f\u9e21\u4e50\u56ed | \u6e38\u620f\u65f6\u95f4(\u8303\u56f4)"

    invoke-direct {v4, v5, v6, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v4, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmGameTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    invoke-virtual {v1, v4}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 189
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u4e50\u56ed | \u6e38\u620f\u5b9d\u7bb1"

    const-string v5, "drawGameCenterAward"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 190
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u4e50\u56ed | \u4e50\u56ed\u96c6\u5e02"

    const-string v5, "gameCenterBuyMallItem"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->gameCenterBuyMallItem:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 191
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda13;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda13;-><init>()V

    const-string v11, "\u8bf7\u586b\u5199\u5151\u5956\u6b21\u6570(\u6bcf\u65e5)"

    const-string v7, "gameCenterBuyMallItemList"

    const-string v8, "\u5c0f\u9e21\u4e50\u56ed | \u5151\u5956"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->gameCenterBuyMallItemList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 192
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5c0f\u9e21\u65e5\u8bb0"

    const-string v5, "chickenDiary"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenDiary:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 193
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6536\u53d6\u7231\u5fc3\u9e21\u86cb"

    const-string v5, "harvestProduce"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestProduce:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 194
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6536\u53d6\u9053\u5177\u5956\u52b1"

    const-string v5, "receiveFarmToolReward"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmToolReward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 197
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u6536\u9ea6\u5b50"

    const-string v5, "acceptGift"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->acceptGift:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 198
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda14;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$$ExternalSyntheticLambda14;-><init>()V

    const-string v11, "\u8bf7\u586b\u5199\u8d60\u9001\u6b21\u6570(\u6bcf\u65e5)"

    const-string v7, "visitFriendList"

    const-string v8, "\u9001\u9ea6\u5b50 | \u597d\u53cb\u5217\u8868"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->visitFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v1
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 67
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FARM:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "\u5e84\u56ed"

    return-object v0
.end method

.method public getUseSpecialFoodCountLimit()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useSpecialFoodCountLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    return-object v0
.end method

.method synthetic lambda$autoFeedAnimal$0$io-github-lazyimmortal-sesame-model-task-antFarm-AntFarm()V
    .locals 1

    .line 1040
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedAnimal(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$competition$1$io-github-lazyimmortal-sesame-model-task-antFarm-AntFarm(I)V
    .locals 1

    .line 1704
    const-string v0, "\u5077\u699c"

    invoke-direct {p0, p1, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->stealRank(ILjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 12

    .line 220
    const-string v0, "cuisineList"

    const-string v1, "BlackList::initAntFarm"

    .line 0
    const-string v2, "\u53ec\u56de\u5c0f\u9e21\ud83d\udce3\u6536\u83b7["

    const-string v3, "\u5c0f\u9e21\u4e0d\u5728\u5e84\u56ed "

    .line 220
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->enterFarm()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 227
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmDoFarmTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmDrawMachineTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AutoAntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenChef:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->kitchen:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    invoke-static {v5, v8, v9, v10, v11}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->initAntFarmTaskListMap(ZZZZZ)V

    .line 228
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 231
    :cond_2
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->rewardFriend()V

    .line 235
    :cond_3
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->sendBackAnimal()V

    .line 239
    :cond_4
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 240
    const-string v1, "ORCHARD"

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->locationType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    const-string v1, "\u5e84\u56ed\u901a\u77e5\ud83d\udce3[\u4f60\u5bb6\u7684\u5c0f\u9e21\u7ed9\u62c9\u53bb\u9664\u8349\u4e86\uff01]"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 242
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmMasterUserId:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->orchardRecallAnimal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v3, "manureCount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "g\u80a5\u6599]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 246
    :cond_5
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatusAtOtherFarm(Ljava/lang/String;)V

    .line 248
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v7, :cond_9

    if-eq v1, v2, :cond_8

    const/4 v5, 0x3

    if-eq v1, v5, :cond_7

    const/4 v5, 0x4

    if-eq v1, v5, :cond_6

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->subAnimalType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_6
    const-string v1, "\u5c0f\u9e21\u51fa\u53bb\u5de5\u4f5c\u5566"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_7
    const-string v1, "\u5c0f\u9e21\u5916\u51fa\u63a2\u9669\u4e86"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_8
    const-string v1, "\u5c0f\u9e21\u592a\u997f\uff0c\u79bb\u5bb6\u51fa\u8d70\u4e86"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 251
    :cond_9
    const-string v1, "\u5c0f\u9e21\u5230\u597d\u53cb\u5bb6\u53bb\u505a\u5ba2\u4e86"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 267
    :goto_2
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmId2UserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus:[I

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v8, v8, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    move-result-object v8

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->ordinal()I

    move-result v8

    aget v5, v5, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "\u5c0f\u9e21\u5728["

    if-eq v5, v7, :cond_b

    if-eq v5, v2, :cond_a

    goto :goto_3

    .line 275
    :cond_a
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]\u7684\u5e84\u56ed\u91cc\u5403\u5f97\u6d25\u6d25\u6709\u5473"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    .line 271
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]\u7684\u5e84\u56ed\u91cc\u6328\u997f"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 280
    :goto_4
    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recallAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_e

    if-eq v8, v7, :cond_d

    if-eq v8, v2, :cond_c

    goto :goto_5

    :cond_c
    move v6, v5

    goto :goto_5

    :cond_d
    xor-int/lit8 v6, v1, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_f

    .line 292
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalId:Ljava/lang/String;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->currentFarmId:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recallAnimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 298
    :cond_f
    :goto_6
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmToolReward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 299
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->listFarmTool()V

    .line 300
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveToolTaskReward()V

    .line 303
    :cond_10
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 305
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmGameTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->checkInTimeRange(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 307
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->starGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;)V

    .line 308
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->jumpGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;)V

    .line 309
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->flyGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;)V

    .line 310
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->hitGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->recordFarmGame(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;)V

    .line 316
    :cond_12
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->gameCenterBuyMallItem:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 317
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->gameCenterBuyMallItem()V

    .line 320
    :cond_13
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useSpecialFood:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 321
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 322
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canUseSpecialFoodToday()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 323
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->useFarmFood(Lorg/json/JSONArray;)V

    .line 328
    :cond_14
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->kitchen:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 329
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->collectDailyFoodMaterial(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->collectDailyLimitedFoodMaterial()V

    .line 331
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 332
    const-string v0, "\u5c0f\u9e21\u6b63\u5728\u7761\u89c9\ud83d\udecc\uff0c\u8df3\u8fc7\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u5236\u4f5c"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_7

    .line 334
    :cond_15
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->cook(Ljava/lang/String;)V

    .line 336
    :goto_7
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoChickenChefCook:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 337
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 338
    const-string v0, "\u5c0f\u9e21\u6b63\u5728\u7761\u89c9\ud83d\udecc\uff0c\u8df3\u8fc7\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u5236\u4f5c"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_8

    .line 340
    :cond_16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenChefCookStrategy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefCook(I)V

    .line 343
    :cond_17
    :goto_8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenChef:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 344
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerUserId:Ljava/lang/String;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->AntFarmChickenChefTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->giftAiKitchenIngredientFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-static {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefTask(Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V

    .line 346
    :cond_18
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefCookbookInfo()V

    .line 350
    :cond_19
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->chickenDiary:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 351
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->queryChickenDiary(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->queryChickenDiaryList()V

    .line 355
    :cond_1a
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useNewEggTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 356
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->NEWEGGTOOL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useFarmTool(Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;)Ljava/lang/Boolean;

    .line 357
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->syncAnimalStatus(Ljava/lang/String;)V

    .line 360
    :cond_1b
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestProduce:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->benevolenceScore:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_1c

    .line 361
    const-string v0, "\u6709\u53ef\u6536\u53d6\u7684\u7231\u5fc3\u9e21\u86cb"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->harvestProduce(Ljava/lang/String;)V

    .line 365
    :cond_1c
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donationType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 366
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->donation()V

    .line 369
    :cond_1d
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competition:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 370
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->competition()V

    .line 373
    :cond_1e
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->receiveFarmTaskAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 374
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->listFarmTask()V

    .line 377
    :cond_1f
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalInteractStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 378
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 379
    const-string v0, "\u5c0f\u9e21\u5728\u6328\u997f"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 381
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedAnimal(Ljava/lang/String;)V

    goto :goto_9

    .line 383
    :cond_20
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerAnimal:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;->animalFeedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 384
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_21

    .line 385
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useAccelerateTool()V

    .line 386
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 389
    :cond_21
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useBigEaterTool:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 390
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ownerFarmId:Ljava/lang/String;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;->BIG_EATER_TOOL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;

    invoke-direct {p0, v0, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->useFarmTool(Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;)Ljava/lang/Boolean;

    .line 392
    :cond_22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 393
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->autoFeedAnimal()V

    .line 394
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 401
    :cond_23
    :goto_9
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 402
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->ornamentsDressUp()V

    .line 406
    :cond_24
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->visitAnimal()V

    .line 409
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->visitFriend()V

    .line 412
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriendAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 413
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->feedFriend()V

    .line 417
    :cond_25
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_26

    .line 418
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->notifyFriend()V

    .line 422
    :cond_26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachine:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 423
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawMachineGroups()V

    .line 428
    :cond_27
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_28

    .line 429
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->hireAnimal()V

    .line 437
    :cond_28
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->family:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 438
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->family()V

    .line 442
    :cond_29
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 443
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->drawGameCenterAward()V

    .line 447
    :cond_2a
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->animalSleepAndWake()V

    .line 450
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-direct {p0, v4, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->farmInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 454
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->TAG:Ljava/lang/String;

    const-string v2, "AntFarm.start.run err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method
