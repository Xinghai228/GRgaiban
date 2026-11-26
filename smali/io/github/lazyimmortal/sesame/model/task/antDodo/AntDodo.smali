.class public Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$TimingType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$CollectToFriendType;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AntDodo"


# instance fields
.field private AntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AutoAntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private bookMedal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private bookMedalOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private collectToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private collectToFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private dodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private giftToFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private giftToFriendBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private giftToFriendBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private giftToFriendFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private giftToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private giftToFriendMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useCollectTimingType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private useMaxExchangeFriendCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useProp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private usePropList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private useUniversalCardBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private useUniversalCardBookCollectedhasCollected:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useUniversalCardBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private useUniversalCardFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private useUniversalCardMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private checkAnimalAndGiftToFriend(Lorg/json/JSONObject;)V
    .locals 5

    .line 1046
    const-string v0, "bookId"

    if-eqz p1, :cond_5

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useCollectTimingType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getGiftToFriendTargetUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1054
    :cond_1
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->MAGIC:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fantasticLevel"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 1057
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->homePage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1059
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 1062
    :cond_3
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "animalBook"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1063
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1066
    :cond_4
    invoke-direct {p0, p1, v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1068
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v1, "checkAnimalAndGiftToFriend err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private collect()V
    .locals 3

    .line 423
    const-string v0, "dodo::collect"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 427
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryAnimalStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 428
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 430
    const-string v2, "collect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    const-string v1, "\u795e\u5947\u7269\u79cd\u5361\u7247\u4eca\u65e5\u6536\u96c6\u5b8c\u6210\uff01"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectAnimalCard()V

    .line 435
    :goto_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 438
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "collect err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private collectAnimalCard()V
    .locals 7

    .line 445
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->homePage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 448
    const-string v3, "limit"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 450
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 451
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 452
    const-string v5, "DAILY_COLLECT"

    const-string v6, "actionCode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-ltz v4, :cond_4

    .line 458
    const-string v2, "leftFreeQuota"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_4

    .line 460
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->collect()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 461
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 462
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 463
    const-string v4, "animal"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u6bcf\u65e5\u62bd\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 466
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchNewCard(Lorg/json/JSONObject;)V

    .line 468
    :cond_2
    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->checkAnimalAndGiftToFriend(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 474
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "collectAnimalCard err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private collectToFriend()V
    .locals 22

    move-object/from16 v1, p0

    .line 908
    const-string v0, "count"

    const-string v2, "name"

    const-string v3, "animalId"

    const-string v4, "collectDetail"

    const-string v5, "animal"

    const-string v6, "data"

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryFriend()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 909
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 911
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "extend"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "limit"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    .line 912
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 913
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 914
    const-string v12, "actionCode"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "COLLECT_TO_FRIEND"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 915
    const-string v8, "startTime"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-lez v8, :cond_0

    return-void

    .line 918
    :cond_0
    const-string v8, "leftLimit"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 923
    :goto_1
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "friends"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v10, 0x0

    .line 924
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_d

    if-lez v8, :cond_d

    .line 925
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 926
    const-string v12, "dailyCollect"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    :goto_3
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v16, v7

    move/from16 v18, v8

    move/from16 v17, v10

    goto/16 :goto_7

    .line 929
    :cond_4
    const-string v12, "userId"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 930
    iget-object v12, v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 931
    iget-object v13, v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v13}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    xor-int/lit8 v12, v12, 0x1

    :cond_5
    if-nez v12, :cond_6

    goto :goto_3

    .line 937
    :cond_6
    new-instance v12, Lorg/json/JSONObject;

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->collect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 938
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v13, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 939
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 940
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 941
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 942
    iget-object v9, v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useMaxExchangeFriendCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v7

    const-string v7, "]"

    if-eqz v9, :cond_b

    .line 943
    :try_start_1
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 944
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v10

    .line 945
    const-string v10, "cardInstanceId"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 946
    new-instance v12, Lorg/json/JSONObject;

    move/from16 v18, v8

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryMyCollection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-static {v13, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 948
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v12, "animalCollectionInfoList"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v12, 0x0

    .line 949
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 950
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v3

    .line 951
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "ecosystem"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v2

    .line 953
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v21, v5

    const-string v5, "fantasticLevel"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_9

    .line 956
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v12, v9, v10, v11}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->exchange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-static {v13, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 958
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v9, 0x0

    goto :goto_4

    .line 959
    :cond_7
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    :goto_4
    if-nez v9, :cond_8

    const/4 v9, 0x0

    goto :goto_5

    .line 960
    :cond_8
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 961
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5e2e\u62bd\u5361\u6362\ud83e\udd95\u7528["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->nickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u4e0e["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u4ea4\u6362#\u83b7\u5f97["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, p0

    .line 962
    :try_start_3
    iget-object v2, v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 963
    invoke-direct {v1, v8}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchNewCard(Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_9
    move-object/from16 v1, p0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_9

    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    goto :goto_6

    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move/from16 v18, v8

    move/from16 v17, v10

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e2e\u62bd\u5361\u7247\ud83e\udd95["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_c
    :goto_6
    add-int/lit8 v8, v18, -0x1

    goto :goto_8

    :goto_7
    move/from16 v8, v18

    :goto_8
    add-int/lit8 v10, v17, 0x1

    move-object/from16 v7, v16

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v5, v21

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    .line 976
    :goto_9
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v3, "collectHelpFriend err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method private consumeProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u4f7f\u7528\u9053\u5177\ud83c\udfad["

    const/4 v1, 0x0

    .line 860
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->consumeProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 861
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 862
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 865
    :cond_0
    const-string p1, "data"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 866
    const-string p2, "propConfig"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "propName"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 868
    const-string v2, "useResult"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 869
    const-string v2, "animal"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 871
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 872
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchNewCard(Lorg/json/JSONObject;)V

    .line 874
    :cond_1
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->checkAnimalAndGiftToFriend(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 875
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 877
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v0, "consumeProp err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 880
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private consumeProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "\u4f7f\u7528\u9053\u5177\ud83c\udfad["

    const/4 v1, 0x0

    .line 885
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1, p2, p3}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->consumeProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 886
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 887
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 889
    :cond_0
    const-string p1, "data"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 890
    const-string p2, "propConfig"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "propName"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 891
    const-string p3, "useResult"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 892
    const-string p3, "animal"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 894
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 895
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchNewCard(Lorg/json/JSONObject;)V

    .line 897
    :cond_1
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->checkAnimalAndGiftToFriend(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 898
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 900
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string p3, "consumeProp err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private dodoInfo()V
    .locals 25

    .line 155
    const-string v0, "commonCount"

    const-string v1, "leftFreeQuota"

    const-string v2, "rareCount"

    const-string v3, "magicCount"

    const-string v4, "expPoint"

    const-string v5, "totalCount"

    const-string v6, "bookMedalCount"

    const-string v7, "totalExp"

    const-string v8, "allMedalCount"

    const-string v9, "name"

    const-string v10, "collectedDisAnimalCount"

    const-string v11, "data"

    const-string v12, ""

    .line 169
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->homePage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    sget-object v14, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 171
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 172
    const-string v15, "animalBook"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 174
    invoke-virtual {v15, v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 175
    :try_start_1
    const-string v13, "endDate"

    invoke-virtual {v15, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 176
    :try_start_2
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 177
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 179
    :goto_0
    :try_start_3
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 180
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 182
    :goto_1
    :try_start_4
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 183
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 185
    :goto_2
    :try_start_5
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 186
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v15, v13

    move-object v13, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_3

    :cond_3
    move-object v15, v13

    move-object v13, v5

    move-object v5, v3

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    move-object v13, v12

    goto/16 :goto_8

    :cond_4
    move-object v15, v12

    move-object/from16 v17, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 189
    :goto_3
    :try_start_6
    const-string v0, "limit"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v18, v2

    if-eqz v0, :cond_7

    const/4 v14, 0x0

    .line 191
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 192
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v19, v0

    .line 193
    const-string v0, "DAILY_COLLECT"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v20, v3

    :try_start_8
    const-string v3, "actionCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_6

    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_5

    :cond_7
    move-object/from16 v20, v3

    :cond_8
    move-object/from16 v2, v18

    move-object/from16 v3, v20

    const/4 v0, 0x0

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object/from16 v18, v2

    :goto_5
    move-object/from16 v20, v3

    :goto_6
    move-object v3, v5

    move-object v5, v13

    move-object v13, v15

    move-object/from16 v2, v20

    goto :goto_a

    :cond_9
    move-object v15, v12

    move-object/from16 v17, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_7
    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v13, v12

    move-object/from16 v17, v13

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    const/16 v18, 0x0

    .line 203
    :goto_a
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v14, "dodoInfo homePage err:"

    invoke-static {v1, v14}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v15, v13

    move-object/from16 v14, v17

    const/4 v1, 0x0

    move-object v13, v5

    move-object v5, v3

    move-object v3, v2

    move-object/from16 v2, v18

    .line 207
    :goto_b
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    move-object/from16 v17, v1

    :try_start_a
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryMyAchievement()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 209
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 211
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    .line 213
    :goto_c
    :try_start_b
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 214
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_d

    :cond_b
    const/4 v8, 0x0

    .line 216
    :goto_d
    :try_start_c
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 217
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_11

    :catchall_a
    move-exception v0

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_e
    move-object v6, v1

    move-object v1, v0

    goto :goto_12

    :catchall_b
    move-exception v0

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object/from16 v17, v1

    :goto_f
    const/4 v1, 0x0

    :goto_10
    const/4 v8, 0x0

    .line 221
    :goto_11
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v10, "dodoInfo queryMyAchievement err:"

    invoke-static {v6, v10}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v6, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v1

    const/4 v1, 0x0

    .line 225
    :goto_12
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryMedalAndConfig()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v10, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 227
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    const-string v10, "medal"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 230
    invoke-virtual {v10, v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    .line 231
    :try_start_e
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 232
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_15

    :cond_e
    move-object v9, v12

    :cond_f
    const/4 v4, 0x0

    .line 235
    :goto_13
    :try_start_f
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 236
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_14

    :cond_10
    const/4 v0, 0x0

    goto :goto_14

    :catchall_e
    move-exception v0

    goto :goto_16

    :cond_11
    move-object v9, v12

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_14
    move-object v7, v4

    move-object v4, v0

    goto :goto_17

    :catchall_f
    move-exception v0

    move-object v9, v12

    :goto_15
    const/4 v4, 0x0

    .line 240
    :goto_16
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v10, "dodoInfo queryMedalAndConfig err:"

    invoke-static {v7, v10}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v7, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v4

    const/4 v4, 0x0

    .line 246
    :goto_17
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookList()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isTransientSystemError(Lorg/json/JSONObject;)Z

    move-result v10

    if-nez v10, :cond_17

    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v10, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 249
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_18

    .line 250
    :cond_12
    const-string v10, "bookForUserList"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_13

    :goto_18
    if-eqz v0, :cond_17

    move-object/from16 v18, v4

    const/4 v10, 0x0

    .line 253
    :goto_19
    :try_start_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_15

    .line 254
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    if-eqz v4, :cond_13

    move-object/from16 v19, v7

    .line 255
    :try_start_12
    const-string v7, "DOING"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    move-object/from16 v20, v9

    :try_start_13
    const-string v9, "bookStatus"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto :goto_1d

    :cond_13
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    :cond_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    goto :goto_19

    :cond_15
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    const/4 v4, 0x0

    :goto_1a
    if-nez v4, :cond_16

    const/4 v7, 0x0

    .line 261
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_1b

    :catchall_11
    move-exception v0

    goto :goto_1e

    :cond_16
    :goto_1b
    if-eqz v4, :cond_18

    .line 264
    const-string v0, "collectProgress"

    invoke-virtual {v4, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    goto :goto_1f

    :catchall_12
    move-exception v0

    goto :goto_1c

    :cond_17
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    goto :goto_1f

    :catchall_13
    move-exception v0

    move-object/from16 v18, v4

    :goto_1c
    move-object/from16 v19, v7

    :goto_1d
    move-object/from16 v20, v9

    .line 269
    :goto_1e
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v7, "dodoInfo queryBookList err:"

    invoke-static {v4, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_1f
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 280
    :goto_20
    :try_start_14
    new-instance v9, Lorg/json/JSONObject;

    const/16 v10, 0x12

    invoke-static {v10, v7}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookAnimalList(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_21

    .line 284
    :cond_19
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_1a

    :goto_21
    move-object/from16 v24, v1

    goto/16 :goto_27

    .line 288
    :cond_1a
    const-string v10, "animalForUserList"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_1e

    move/from16 v21, v7

    move-object/from16 v22, v11

    const/4 v7, 0x0

    .line 290
    :goto_22
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_1d

    .line 291
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_1b

    move-object/from16 v23, v10

    const/4 v10, 0x0

    goto :goto_23

    :cond_1b
    move-object/from16 v23, v10

    .line 292
    const-string v10, "collectDetail"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    :goto_23
    if-eqz v10, :cond_1c

    .line 294
    const-string v11, "count"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :try_start_15
    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v0, v10

    goto :goto_24

    :cond_1c
    move-object/from16 v24, v1

    :goto_24
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v23

    move-object/from16 v1, v24

    goto :goto_22

    :cond_1d
    move-object/from16 v24, v1

    goto :goto_25

    :cond_1e
    move-object/from16 v24, v1

    move/from16 v21, v7

    move-object/from16 v22, v11

    .line 298
    :goto_25
    const-string v1, "hasMore"

    const/4 v7, 0x0

    invoke-virtual {v9, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    if-eqz v1, :cond_1f

    .line 301
    :try_start_16
    const-string v10, "nextPageStart"

    const-string v11, "0"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    move/from16 v21, v9

    goto :goto_26

    :catch_0
    nop

    const/4 v1, 0x0

    :cond_1f
    :goto_26
    if-eqz v1, :cond_21

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x14

    if-lt v4, v1, :cond_20

    goto :goto_27

    :cond_20
    move/from16 v7, v21

    move-object/from16 v11, v22

    move-object/from16 v1, v24

    goto/16 :goto_20

    .line 307
    :cond_21
    :goto_27
    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    move-object/from16 v16, v0

    goto :goto_29

    :catchall_14
    move-exception v0

    goto :goto_28

    :catchall_15
    move-exception v0

    move-object/from16 v24, v1

    .line 309
    :goto_28
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v4, "dodoInfo queryBookAnimalList err:"

    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v16, 0x0

    .line 312
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u795e\u5947\u7269\u79cd\ud83e\udd95["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u56fe\u9274["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6b62)\u5361\u7247"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\u795e\u5947"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/\u7a00\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/\u666e\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\u5df2\u96c6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v12, " "

    :cond_22
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6301\u5361\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f20\u4eca\u65e5\u5269\u4f59\u62bd\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u7d2f\u8ba1\u6536\u96c6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u52cb\u7ae0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\u56fe\u9274"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u7ecf\u9a8c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method private finishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/Boolean;
    .locals 10

    move-object v0, p1

    move-object v3, p3

    const-string v1, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u5b8c\u6210["

    const/4 v7, 0x0

    move-object v8, p0

    .line 628
    :try_start_0
    iget-object v2, v8, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->AntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    new-instance v9, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v2, "AntDodoTaskList"

    const-string v4, ""

    const-string v6, "TODO"

    move-object v1, v9

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    .line 631
    invoke-virtual {v9, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    move/from16 v4, p7

    move/from16 v5, p8

    .line 632
    invoke-virtual {v1, v4, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    move/from16 v2, p10

    .line 633
    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    move-object/from16 v2, p6

    .line 634
    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    move-object v2, p5

    .line 635
    invoke-virtual {v1, p5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    .line 636
    invoke-virtual {v1, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "af-biodiversity"

    .line 637
    invoke-virtual {v1, p1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "20241203"

    .line 638
    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 629
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    .line 639
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, p2

    move/from16 v4, p7

    move/from16 v5, p8

    .line 641
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    const-string v0, "AntDodoTaskList"

    invoke-static {v0, p3, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 645
    const-string v0, "400000040"

    const-string v2, "code"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 648
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static/range {p7 .. p9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 651
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 654
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "finishTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private generateBookMedal()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 994
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->queryBookListWithRetry(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 996
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isTransientSystemError(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 999
    :cond_1
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 1002
    :cond_2
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1003
    const-string v3, "hasMore"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v1, v1, 0x9

    .line 1005
    const-string v4, "bookForUserList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 1006
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1007
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1008
    const-string v6, "medalGenerationStatus"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    move-result-object v6

    .line 1009
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    if-ne v6, v7, :cond_4

    .line 1010
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->bookMedalOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v7, "generateBookMedal"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1011
    const-string v6, "animalBookResult"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1012
    const-string v6, "bookId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1013
    const-string v7, "ecosystem"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1014
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->generateBookMedal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1015
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 1018
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u5408\u6210\u52cb\u7ae0["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_4
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_NOT_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    if-ne v6, v7, :cond_5

    .line 1021
    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->bookMedalOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v7, "collectHistoryAnimal"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "END"

    const-string v7, "bookStatus"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->usePropList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const-string v6, "COLLECT_HISTORY_ANIMAL_7_DAYS"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useProp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    if-nez v3, :cond_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1030
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "generateBookMedal err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 1037
    const-string p0, ""

    return-object p0

    .line 1039
    :cond_0
    const-string v0, "ecosystem"

    const-string v1, "\u672a\u77e5\u4e13\u8f91"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    const-string v1, "name"

    const-string v2, "\u672a\u77e5\u52a8\u7269"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    const-string v2, "fantasticLevel"

    const-string v3, "Unknown"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->nickName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEndDateTime()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 403
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->homePage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v0

    .line 407
    :cond_0
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 408
    const-string v3, "animalBook"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 23:59:59"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->timeToStamp(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v2

    .line 412
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v4, "getEndDateTime err:"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private getGiftToFriendTargetUserId()Ljava/lang/String;
    .locals 4

    .line 1074
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1075
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1078
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1079
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    return-object v2
.end method

.method private giftToFriend(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u8d60\u9001\u5361\u7247\ud83e\udd95["

    const/4 v1, 0x0

    .line 1164
    :try_start_0
    const-string v2, "animalId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1169
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->social(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1170
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1175
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v0, "giftToFriend err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1178
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private giftToFriend()V
    .locals 1

    .line 1088
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getGiftToFriendTargetUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend(Ljava/lang/String;)V

    return-void
.end method

.method private giftToFriend(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1100
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->queryBookListWithRetry(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isTransientSystemError(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 1105
    :cond_1
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1108
    :cond_2
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1109
    const-string v3, "hasMore"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v1, v1, 0x9

    .line 1111
    const-string v4, "bookForUserList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 1112
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1113
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1114
    const-string v6, "collectProgress"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1115
    const-string v7, "0/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isQueryBookInfo(Lorg/json/JSONObject;I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 1118
    :cond_3
    const-string v6, "animalBookResult"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "bookId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1119
    invoke-direct {p0, v5, p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1123
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v1, "giftToFriend err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private giftToFriend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1131
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1134
    :cond_0
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "animalForUserList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1138
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->stars:[I

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1139
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1140
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1141
    const-string v4, "star"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v0, :cond_2

    goto :goto_2

    .line 1144
    :cond_2
    const-string v4, "collectDetail"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_2

    .line 1148
    :cond_3
    const-string v5, "animal"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    .line 1150
    invoke-direct {p0, v3, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    const-wide/16 v6, 0x1f4

    .line 1153
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1157
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v0, "giftToFriend err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private isLastDay()Z
    .locals 5

    .line 419
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getEndDateTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isQueryBookInfo(Lorg/json/JSONObject;I)Ljava/lang/Boolean;
    .locals 4

    if-nez p2, :cond_0

    .line 784
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    :goto_0
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 785
    const-string v1, "bookStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;->types:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->match(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 787
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 790
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    :goto_1
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 791
    const-string v2, "bookCollectedStatus"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    move-result-object v2

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;->types:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->match(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 793
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p2, :cond_4

    .line 796
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    :goto_2
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 797
    const-string v0, "medalGenerationStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 798
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    move-result-object p1

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;->types:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->match(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static isTransientSystemError(Lorg/json/JSONObject;)Z
    .locals 3

    .line 740
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resultCode"

    .line 741
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SYSTEM_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "retryable"

    .line 742
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private propList()V
    .locals 13

    .line 677
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->propList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 678
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 681
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 682
    const-string v1, "propList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 683
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 684
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 685
    const-string v4, "propType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 686
    const-string v5, "propConfig"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "propGroup"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 687
    const-string v6, "propIdList"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 688
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 689
    const-string v7, "recentExpireTime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 690
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-gez v12, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 691
    :goto_2
    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->usePropList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    goto :goto_3

    .line 695
    :cond_2
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->UNIVERSAL_CARD:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 696
    invoke-direct {p0, v6, v4}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->usePropUniversalCard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 700
    :cond_3
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->COLLECT_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v7, :cond_4

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useCollectTimingType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v11, :cond_4

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isLastDay()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 703
    :cond_4
    invoke-direct {p0, v6, v4}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->consumeProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 707
    :cond_5
    const-string v4, "holdsNum"

    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v3, v11, :cond_6

    goto/16 :goto_0

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 714
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "propList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private static queryBookListWithRetry(II)Ljava/lang/String;
    .locals 6

    .line 721
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookList(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 724
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 725
    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "retryable"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u9274\u5206\u9875\u67e5\u8be2["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]\u7cfb\u7edf\u5f02\u5e38\uff0c\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b21\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x5dc

    int-to-long v4, v1

    mul-long v4, v4, v2

    .line 727
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 728
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookList(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private queryUniversalAnimal(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    .line 803
    const-string v0, "hasCollected"

    const-string v1, "star"

    const-string v2, "count"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->queryBookInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 804
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 809
    :cond_0
    const-string p1, "data"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "animalForUserList"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 810
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 811
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 812
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 813
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->stars:[I

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v7, v7, v8

    if-ge v6, v7, :cond_1

    goto/16 :goto_3

    .line 816
    :cond_1
    const-string v7, "collectDetail"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 817
    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 818
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x1

    if-nez p2, :cond_2

    goto :goto_2

    .line 826
    :cond_2
    iget-object v10, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookCollectedhasCollected:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 828
    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v7, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 832
    :goto_1
    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-ne v11, v7, :cond_4

    .line 833
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-lt v8, v11, :cond_7

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v8, v11, :cond_4

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-le v6, v11, :cond_4

    goto :goto_2

    :cond_4
    move v9, v10

    goto :goto_2

    .line 840
    :cond_5
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lt v8, v10, :cond_7

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v8, v10, :cond_6

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-le v6, v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :cond_7
    :goto_2
    if-eqz v9, :cond_8

    .line 845
    const-string v9, "animal"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 846
    invoke-virtual {p2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 847
    invoke-virtual {p2, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 852
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v1, "queryUniversalAnimal err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-object p2
.end method

.method private receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u9886\u53d6["

    .line 662
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 663
    const-string p1, "AntDodoTaskList"

    invoke-static {p1, p3, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 664
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u5956\u52b1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 668
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string p3, "receiveTaskAward err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private scratchAnimalCard()V
    .locals 3

    .line 488
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->homePage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 489
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 492
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 494
    const-string v2, "showSpeciesV2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 495
    :cond_1
    const-string v2, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u60a8\u7684\u8d26\u6237\u672a\u63a8\u9001\u522e\u522e\u5361\u64cd\u4f5c-\u5c1d\u8bd5\u522e\u5361"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 498
    :cond_2
    const-string v2, "curCollection"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 502
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 503
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 507
    :cond_4
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchNewCard(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 510
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "scratchAnimalCard err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private scratchNewCard(Lorg/json/JSONObject;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 525
    :cond_0
    :try_start_0
    const-string v0, "animal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 526
    const-string v1, "collectDetail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 527
    :cond_1
    const-string v1, "cardList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_7

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 531
    :cond_2
    const-string v1, "animalId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    const-string v2, "bookId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 533
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 534
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 535
    const-string v6, "scratchable"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "scratched"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 538
    :cond_3
    const-string v6, "cardInstanceId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 542
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v1, v2, v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->scratchCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 543
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 544
    const-string v5, "data"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    .line 545
    :cond_5
    const-string v6, "energyGram"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 546
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u795e\u5947\u7269\u79cd\ud83e\udd95\u522e\u522e\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->getAnimalInfo(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u5f97"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "g\u80fd\u91cf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 548
    sget-object v6, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/Statistics;->addData(Lio/github/lazyimmortal/sesame/util/Statistics$DataType;I)V

    const-wide/16 v5, 0x1f4

    .line 549
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 553
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v1, "scratchNewCard err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private taskList()V
    .locals 26

    move-object/from16 v12, p0

    .line 560
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->taskList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 561
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 564
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 565
    const-string v1, "taskGroupInfoList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 569
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_a

    .line 570
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 571
    const-string v2, "taskGroupName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    const-string v2, "taskInfoList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const/4 v11, 0x0

    .line 573
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_9

    .line 574
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 575
    const-string v2, "taskBaseInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 576
    const-string v2, "taskStatus"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v22, v0

    move/from16 v25, v11

    move-object/from16 v18, v15

    goto/16 :goto_6

    .line 580
    :cond_3
    const-string v3, "taskRights"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    .line 581
    :cond_4
    const-string v3, "rightsTimes"

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    :goto_3
    const/4 v3, 0x1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    .line 582
    :cond_5
    const-string v4, "rightsTimesLimit"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    .line 583
    :goto_4
    const-string v1, "sceneCode"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 584
    const-string v1, "taskType"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 585
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "bizInfo"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    const-string v3, "taskTitle"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 588
    invoke-direct {v12, v7, v6, v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-gt v8, v9, :cond_7

    goto :goto_2

    .line 593
    :cond_6
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 598
    :cond_7
    const-string v2, "targetUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "taskJumpUrl"

    .line 599
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "link"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 601
    invoke-static {v9, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v4

    .line 603
    const-string v1, "taskRequire"

    invoke-virtual {v10, v1, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "taskProgress"

    .line 604
    invoke-virtual {v10, v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 603
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_2

    .line 606
    const-string v1, "taskMode"

    .line 607
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "taskPlayType"

    const-string v2, "taskProdPlayType"

    .line 608
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v20, v3

    move-object v3, v6

    move/from16 v21, v4

    move-object v4, v5

    move-object v13, v5

    move-object/from16 v5, v16

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v15

    move-object v15, v7

    move-object/from16 v7, v19

    move/from16 v19, v8

    move v8, v9

    move/from16 v23, v9

    move/from16 v9, v19

    move-object/from16 v24, v10

    move/from16 v10, v20

    move/from16 v25, v11

    move/from16 v11, v17

    .line 606
    invoke-direct/range {v1 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->finishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    .line 612
    :cond_8
    invoke-direct {v12, v15, v0, v13}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v20, 0x1

    move-object v6, v0

    move-object v5, v13

    move-object v7, v15

    move-object/from16 v15, v18

    move/from16 v8, v19

    move/from16 v4, v21

    move-object/from16 v0, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    const/4 v13, 0x0

    goto :goto_5

    :goto_6
    add-int/lit8 v11, v25, 0x1

    move-object/from16 v15, v18

    move-object/from16 v0, v22

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v22, v0

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 618
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "taskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method private usePropUniversalCard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 752
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const/16 v4, 0x9

    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->queryBookListWithRetry(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isTransientSystemError(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 757
    :cond_1
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 760
    :cond_2
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 761
    const-string v4, "hasMore"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x9

    .line 763
    const-string v5, "bookForUserList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 764
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 765
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 766
    invoke-direct {p0, v6, v0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->isQueryBookInfo(Lorg/json/JSONObject;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 767
    const-string v7, "animalBookResult"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 768
    const-string v7, "bookId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    invoke-direct {p0, v6, v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->queryUniversalAnimal(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_0

    :goto_1
    if-eqz v1, :cond_5

    .line 773
    const-string v2, "animalId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->consumeProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 774
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 777
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v1, "usePropUniversalCard err:"

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 107
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u795e\u5947\u7269\u79cd:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 12

    .line 78
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 79
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    const-string v4, "dodoTaskList"

    const-string v5, "\u7269\u79cd\u4efb\u52a1"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->dodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 80
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "AutoAntDodoTaskList"

    const-string v7, "\u7269\u79cd\u4efb\u52a1 | \u81ea\u52a8\u9ed1\u767d\u540d\u5355"

    invoke-direct {v1, v6, v7, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->AutoAntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 81
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "AntDodoTaskList"

    const-string v8, "\u7269\u79cd\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v1, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->AntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 82
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u81ea\u52a8\u522e\u5361 | \u5f00\u542f"

    const-string v6, "scratchCard"

    invoke-direct {v1, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 83
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u4f7f\u7528\u9053\u5177 | \u5f00\u542f"

    const-string v6, "useProp"

    invoke-direct {v1, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useProp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 84
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda1;-><init>()V

    const-string v7, "usePropList"

    const-string v8, "\u4f7f\u7528\u9053\u5177 | \u9053\u5177\u5217\u8868"

    invoke-direct {v1, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->usePropList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 85
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$TimingType;->nickNames:[Ljava/lang/String;

    const-string v6, "useCollectTimingType"

    const-string v7, "\u62bd\u5361\u9053\u5177 | \u4f7f\u7528\u65f6\u673a"

    invoke-direct {v1, v6, v7, v2, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useCollectTimingType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 86
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;->nickNames:[Ljava/lang/String;

    const-string v6, "useUniversalCardBookStatusType"

    const-string v7, "\u4e07\u80fd\u5361\u7247 | \u56fe\u9274\u72b6\u6001\u7c7b\u578b"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 87
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;->nickNames:[Ljava/lang/String;

    const-string v5, "useUniversalCardBookCollectedStatusType"

    const-string v6, "\u4e07\u80fd\u5361\u7247 | \u56fe\u9274\u6536\u96c6\u72b6\u6001"

    invoke-direct {v1, v5, v6, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 88
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4e07\u80fd\u5361\u7247 | \u4f18\u5148\u5151\u6362\u672a\u83b7\u5f97\u72b6\u6001\u5361\u7247"

    const-string v5, "useUniversalCardBookCollectedhasCollected"

    invoke-direct {v1, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardBookCollectedhasCollected:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 89
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;->nickNames:[Ljava/lang/String;

    const-string v5, "useUniversalCardMedalGenerationStatusType"

    const-string v6, "\u4e07\u80fd\u5361\u7247 | \u52cb\u7ae0\u5408\u6210\u72b6\u6001"

    invoke-direct {v1, v5, v6, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 90
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->nickNames:[Ljava/lang/String;

    const-string v6, "useUniversalCardFantasticLevelType"

    const-string v7, "\u4e07\u80fd\u5361\u7247 | \u6700\u4f4e\u7b49\u7ea7"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useUniversalCardFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 91
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u56fe\u9274\u52cb\u7ae0 | \u5f00\u542f"

    const-string v5, "bookMedal"

    invoke-direct {v1, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->bookMedal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 92
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda2;-><init>()V

    const-string v6, "bookMedalOptions"

    const-string v7, "\u56fe\u9274\u52cb\u7ae0 | \u9009\u9879"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->bookMedalOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 93
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$CollectToFriendType;->nickNames:[Ljava/lang/String;

    const-string v5, "collectToFriendType"

    const-string v6, "\u5e2e\u62bd\u5361\u7247 | \u52a8\u4f5c"

    invoke-direct {v1, v5, v6, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 94
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v6, "collectToFriendList"

    const-string v7, "\u5e2e\u62bd\u5361\u7247 | \u597d\u53cb\u5217\u8868"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 95
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u5e2e\u62bd\u4ea4\u6362 | \u7528\u5386\u53f2\u6700\u591a\u5361\u7247"

    const-string v5, "useMaxExchangeFriendCard"

    invoke-direct {v1, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useMaxExchangeFriendCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 96
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u8d60\u9001\u5361\u7247 | \u5f00\u542f"

    const-string v5, "giftToFriend"

    invoke-direct {v1, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 97
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;->nickNames:[Ljava/lang/String;

    const-string v4, "giftToFriendBookStatusType"

    const-string v5, "\u8d60\u9001\u5361\u7247 | \u56fe\u9274\u72b6\u6001\u7c7b\u578b"

    invoke-direct {v1, v4, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendBookStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 98
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;->nickNames:[Ljava/lang/String;

    const-string v4, "giftToFriendBookCollectedStatusType"

    const-string v5, "\u8d60\u9001\u5361\u7247 | \u56fe\u9274\u6536\u96c6\u72b6\u6001"

    invoke-direct {v1, v4, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendBookCollectedStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 99
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;->nickNames:[Ljava/lang/String;

    const-string v4, "giftToFriendMedalGenerationStatusType"

    const-string v5, "\u8d60\u9001\u5361\u7247 | \u52cb\u7ae0\u5408\u6210\u72b6\u6001"

    invoke-direct {v1, v4, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendMedalGenerationStatusType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 100
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->nickNames:[Ljava/lang/String;

    const-string v4, "giftToFriendFantasticLevelType"

    const-string v5, "\u8d60\u9001\u5361\u7247 | \u6700\u4f4e\u7b49\u7ea7"

    invoke-direct {v1, v4, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendFantasticLevelType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 101
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v11, "\u4f1a\u8d60\u9001\u6240\u6709\u6ee1\u8db3\u6761\u4ef6\u7684\u5361\u7247\u7ed9\u5df2\u9009\u62e9\u7684\u597d\u53cb"

    const-string v7, "giftToFriendList"

    const-string v8, "\u8d60\u9001\u5361\u7247 | \u597d\u53cb\u5217\u8868"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 48
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "\u7269\u79cd"

    return-object v0
.end method

.method public initAntDodoTaskListMap(ZZ)V
    .locals 9

    .line 318
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->load()V

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 321
    const-string v1, "\u60ca\u559c\u4efb\u52a1\uff1a\u6dfb\u52a0\u68ee\u6797\u7ec4\u4ef6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "\u8fde\u7eed\u8bbf\u95ee\u5e76\u4e3b\u52a8\u62bd\u53617\u5929"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "\u6bcf\u65e5\u4efb\u52a1\uff1a\u5e2e\u597d\u53cb\u62bd\u5361"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    const-string v4, ""

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_9

    .line 334
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodoRpcCall;->taskList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 336
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 337
    const-string v2, "taskGroupInfoList"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    .line 339
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 340
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 341
    const-string v5, "taskInfoList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 342
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 343
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 344
    const-string v7, "taskBaseInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 345
    new-instance v7, Lorg/json/JSONObject;

    const-string v8, "bizInfo"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    const-string v6, "taskTitle"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 347
    new-array v8, v8, [Lorg/json/JSONObject;

    aput-object v7, v8, v3

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 354
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->save()Z

    .line 355
    const-string p2, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u795e\u5947\u7269\u79cd\u4efb\u52a1\u5217\u8868"

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 360
    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 361
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "AntDodo"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 362
    const-string p2, "AntDodoTaskList"

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez p1, :cond_3

    return-void

    .line 368
    :cond_3
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_7

    .line 370
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 377
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 384
    :cond_7
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u795e\u5947\u7269\u79cd\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_5

    .line 387
    :cond_8
    const-string p1, "\u795e\u5947\u7269\u79cd\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 392
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v0, "initAntDodoTaskListMap err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public run()V
    .locals 3

    .line 118
    const-string v0, "BlackList::initAntDodo"

    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->AutoAntDodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->dodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->initAntDodoTaskListMap(ZZ)V

    .line 120
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collect()V

    .line 124
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->dodoTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->taskList()V

    .line 127
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->useProp:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->propList()V

    .line 130
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriendType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->collectToFriend()V

    .line 133
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchCard:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->scratchAnimalCard()V

    .line 136
    :cond_4
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->bookMedal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->generateBookMedal()V

    .line 139
    :cond_5
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->giftToFriend()V

    .line 144
    :cond_6
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->dodoInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 146
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;->TAG:Ljava/lang/String;

    const-string v2, "AntoDodo.start.run err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
