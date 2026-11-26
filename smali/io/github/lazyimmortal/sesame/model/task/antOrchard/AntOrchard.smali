.class public Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AntOrchard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;,
        Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;,
        Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$DriveAnimalType;
    }
.end annotation


# static fields
.field private static final GROUP:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field private static final NAME:Ljava/lang/String; = "\u519c\u573a"

.field private static final ORCHARD_TASK_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AntOrchard"

.field private static final enableSceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fertilizerProgress:I


# instance fields
.field private AntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AutoAntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoAntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoGoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private GoldenBeansGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private GoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private assistFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private assistFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private batchHireAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private doNotHireList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private doNotWeedingList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private driveAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private driveAnimalType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private executeInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private goldenBeanDailyManureLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private goldenBeanExchangeManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private goldenBeanReserveManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private goldenBeans:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private goldenBeansTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private lastOrchardIndexJo:Lorg/json/JSONObject;

.field private orchardAutoHarvest:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardAutoPlant:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardDrawListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardPlantNew:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardSpreadManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private orchardSpreadManureSceneList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private receiveOrchardGameStay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useBatchSpread:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private userId:Ljava/lang/String;

.field private wuaList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->ORCHARD:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GROUP:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->ORCHARD_TASK_BLACKLIST:Ljava/util/Set;

    .line 71
    const-string v1, "ORCHARD_NORMAL_KUAISHOU_MAX"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "ORCHARD_NORMAL_DIAOYU1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "ZHUFANG3IN1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "\u901b\u52a9\u519c\u597d\u8d27\u5f97\u80a5\u6599"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "12173"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "70000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "TOUTIAO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "ORCHARD_NORMAL_ZADAN10_3000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "TAOBAO2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "ORCHARD_NORMAL_JIUYIHUISHOU_VISIT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "ORCHARD_NORMAL_SHOUJISHUMAHUISHOU"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "ORCHARD_NORMAL_AQ_XIAZAI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "ORCHARD_NORMAL_WAIMAIMIANDAN"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "\u901b\u4e00\u901b\u7b7e\u5230\u9886\u73b0\u91d1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 120
    sput v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->fertilizerProgress:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->enableSceneList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->lastOrchardIndexJo:Lorg/json/JSONObject;

    return-void
.end method

.method private canSpreadManure(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z
    .locals 7

    .line 887
    const-string v0, "yebScenePlantInfo"

    const-string v1, "AntOrchard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spreadManureLimit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 891
    :cond_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManureSceneList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    .line 897
    :cond_1
    :try_start_0
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene:[I

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    return v3

    .line 913
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardIndex()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 917
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "plantProgressInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 918
    const-string v0, "spreadProgress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 919
    const-string v5, "dailySpreadLimit"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 921
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_0
    return v3

    .line 900
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSyncIndex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    return v3

    .line 904
    :cond_6
    const-string v0, "farmMainAccountInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 905
    const-string v0, "happyPoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 906
    const-string v5, "wateringCost"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 907
    const-string v6, "wateringLeftTimes"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lt v0, v5, :cond_7

    rsub-int p1, p1, 0xc8

    .line 909
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3

    :catchall_0
    move-exception p1

    .line 927
    const-string v0, "canSpreadManure err:"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method private checkOrchardOpen()Z
    .locals 7

    .line 350
    const-string v0, "lotteryPlusInfo"

    const-string v1, "AntOrchard"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardIndex()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    .line 355
    :cond_0
    const-string v4, "userOpenOrchard"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->setValue(Ljava/lang/Object;)V

    .line 357
    const-string v0, "\u8bf7\u5148\u5f00\u542f\u82ad\u82ad\u519c\u573a\uff01"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v2

    .line 362
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->drawLotteryPlus(Lorg/json/JSONObject;)V

    .line 367
    :cond_2
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->initPlantScene(Lorg/json/JSONObject;)V

    .line 370
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleEnableScenes(Lorg/json/JSONObject;)V

    .line 373
    const-string v0, "BATTLE_V2"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->querySubplotsActivity(Ljava/lang/String;)V

    .line 376
    const-string v0, "taobaoData"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleTaobaoData(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    const-string v0, "goldenEggInfo"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 382
    const-string v4, "unsmashedGoldenEggs"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 383
    const-string v5, "goldenEggLimit"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 384
    const-string v6, "smashedGoldenEggs"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v4, :cond_3

    .line 388
    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->smashedGoldenEgg(I)V

    goto :goto_0

    :cond_3
    sub-int/2addr v5, v0

    if-lez v5, :cond_4

    .line 392
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Orchard_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const-string v4, "\u519c\u573a"

    invoke-virtual {v0, v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->report(Ljava/lang/String;I)V

    .line 396
    :cond_4
    :goto_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->queryOptionalPlay()V

    .line 403
    :cond_5
    iput-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->lastOrchardIndexJo:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 406
    const-string v3, "orchardIndex err:"

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private doSpreadManure(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z
    .locals 9

    .line 829
    const-string v0, "currentStage"

    const-string v1, "AntOrchard"

    .line 0
    const-string v2, "spreadManureLimit:"

    const-string v3, "\u82ad\u82ad\u519c\u573a\ud83c\udf33"

    const/4 v4, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->getWua()Ljava/lang/String;

    move-result-object v6

    .line 831
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->useBatchSpread:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSpreadManure(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 832
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-static {v1, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    return v4

    .line 838
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    const-string v8, "taobaoData"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 839
    const-string v7, "currentCost"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 840
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->nickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u65bd\u80a5#\u6d88\u8017["

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u80a5\u6599]"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 844
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 845
    const-string v0, "totalValue"

    sget v6, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->fertilizerProgress:I

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 846
    sget v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->fertilizerProgress:I

    sub-int v0, p1, v0

    if-gt v0, v3, :cond_1

    .line 847
    const-string v0, "\u65bd\u80a5\u53ea\u52a00.01%\u8fdb\u5ea6\u4eca\u65e5\u505c\u6b62\u65bd\u80a5\uff01"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_1
    sput p1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->fertilizerProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    .line 854
    const-string v0, "doSpreadManure err:"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method private drawLotteryPlus(Lorg/json/JSONObject;)V
    .locals 10

    .line 1334
    const-string v0, "userEverydayGiftItems"

    const-string v1, "itemId"

    const-string v2, "AntOrchard"

    const-string v3, "userSevenDaysGiftsItem"

    const-string v4, "orchardLotteryPlus"

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 1339
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1343
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1344
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1345
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1348
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1349
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1350
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "received"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1351
    const-string p1, "\u82ad\u82ad\u519c\u573a\u4e03\u65e5\u793c\u5305\u5f53\u65e5\u5956\u52b1\u5df2\u9886\u53d6"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1352
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v4, p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1358
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->drawLottery()Ljava/lang/String;

    move-result-object v5

    .line 1359
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1360
    invoke-static {v2, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1361
    const-string v5, "lotteryPlusInfo"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1363
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_5

    .line 1364
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1365
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1366
    const-string p1, "awardCount"

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u82ad\u82ad\u519c\u573a\ud83c\udf81\u4e03\u65e5\u793c\u5305#\u83b7\u5f97["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u80a5\u6599]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1368
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v4, p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1374
    const-string v0, "drawLotteryPlus err:"

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private extraInfoGet()V
    .locals 5

    .line 1384
    const-string v0, "AntOrchard"

    .line 0
    const-string v1, "\u6bcf\u65e5\u80a5\u6599\ud83d\udca9["

    .line 1384
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->extraInfoGet()Ljava/lang/String;

    move-result-object v2

    .line 1385
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1386
    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1387
    const-string v2, "data"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "extraData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fertilizerPacket"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1389
    const-string v3, "todayFertilizerWaitTake"

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1390
    const-string v3, "todayFertilizerNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1391
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->extraInfoSet()Ljava/lang/String;

    move-result-object v3

    .line 1392
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "g]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1398
    const-string v2, "extraInfoGet err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private finishOrchardTask(Lorg/json/JSONObject;)Z
    .locals 17

    move-object/from16 v0, p1

    .line 1088
    const-string v1, "rightsTimesLimit"

    const-string v2, "title"

    const-string v3, "taskDisplayConfig"

    const-string v4, "AntOrchard"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return v5

    .line 1091
    :cond_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return v5

    .line 1094
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    const-string v3, "actionType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1096
    const-string v6, "sceneCode"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1097
    const-string v7, "taskId"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1099
    const-string v8, "rightsTimes"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1100
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 1103
    const-string v10, "VISIT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v11, 0x1f4

    const-string v13, "]"

    const-string v14, "\u80a5\u6599\u4efb\u52a1\ud83e\uddfe\u5b8c\u6210["

    const-string v15, "AntOrchardTaskList"

    const/16 v16, 0x1

    if-nez v10, :cond_a

    :try_start_1
    const-string v10, "XLIGHT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_6

    .line 1140
    :cond_2
    const-string v0, "TRIGGER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ADD_HOME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "PUSH_SUBSCRIBE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-le v9, v8, :cond_4

    sub-int v0, v9, v8

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 1161
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-static {v15, v2, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1165
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 1168
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1169
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v16

    .line 1142
    :cond_7
    :goto_3
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_9

    .line 1144
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1145
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-static {v15, v2, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1148
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 1151
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-static {v8, v9, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1151
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1153
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return v16

    .line 1105
    :cond_a
    :goto_6
    const-string v3, "extend"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    if-gtz v9, :cond_b

    .line 1107
    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_b

    .line 1110
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1116
    :catch_0
    :cond_b
    :try_start_3
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v0

    if-gtz v0, :cond_c

    return v16

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_e

    .line 1123
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1124
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-static {v15, v2, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1127
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-static {v8, v9, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1134
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1131
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5931\u8d25\uff1a\u82ad\u82ad\u519c\u573a\u5e7f\u544a\u4efb\u52a1\ud83d\udcfa["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "desc"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    return v16

    :catchall_0
    move-exception v0

    .line 1173
    const-string v1, "finishOrchardTask err:"

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method private getWua()Ljava/lang/String;
    .locals 3

    .line 862
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 864
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getWuaFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;

    goto :goto_0

    .line 868
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 871
    :catchall_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;

    .line 874
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;

    array-length v2, v0

    if-lez v2, :cond_2

    .line 876
    array-length v0, v0

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v0

    .line 877
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->wuaList:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 879
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private handleBattleV2(Lorg/json/JSONObject;)V
    .locals 9

    .line 1485
    const-string v0, "reward"

    const-string v1, "result"

    const-string v2, "{}"

    const-string v3, "extend"

    const-string v4, "AntOrchard"

    :try_start_0
    const-string v5, "activityId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1486
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1488
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1489
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p1, :cond_7

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 1493
    :cond_0
    const-string v7, "hasReward"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "issued"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 1496
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "BATTLE_V2"

    const-string v8, "CONFIRM_RESULT"

    invoke-static {v5, v7, v8}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->triggerSubplotsActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1497
    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 1500
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 1502
    :cond_3
    const-string v2, "settledAmount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1503
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1504
    const-string v1, "WIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "\u80dc\u5229"

    goto :goto_1

    :cond_4
    const-string v1, "LOSE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "\u5931\u8d25"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    :cond_5
    :goto_1
    const-string v1, "\u519c\u573a\u6bd4\u8d5b\ud83e\udd4aPK"

    if-lez v0, :cond_6

    .line 1506
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7ed3\u679c#\u9886\u53d6["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u80a5\u6599]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_3

    .line 1508
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7ed3\u679c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 1511
    const-string v0, "handleBattleV2 err:"

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-static {v4, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private handleCampTakeoverActivity(Lorg/json/JSONObject;)V
    .locals 8

    .line 1568
    const-string v0, "currentActivityInfo"

    const-string v1, "AntOrchard"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "extend"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1570
    const-string v2, "activityStatus"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1573
    const-string v3, "TO_CHOOSE_PRIZE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1574
    const-string v3, "recommendPrizeList"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 1575
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1576
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1577
    const-string v6, "FEILIAO"

    const-string v7, "prizeType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1578
    const-string v3, "sendOrderId"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->choosePrize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1579
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1580
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1581
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "currentPrize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "prizeName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u901f\u6210\u5956\u52b1\u2728\u63a5\u53d7\u6311\u6218#\u9009\u62e9["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1590
    :cond_1
    :goto_1
    const-string v0, "TO_DO_TASK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    const-string v0, "taskList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1592
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleTaskList(Lorg/json/JSONArray;)V

    .line 1593
    const-string p1, "CAMP_TAKEOVER"

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->querySubplotsActivity(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1596
    const-string v0, "handleCampTakeoverActivity err:"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private handleEnableScenes(Lorg/json/JSONObject;)V
    .locals 7

    .line 721
    :try_start_0
    const-string v0, "enableSwitchSceneList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 722
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->enableSceneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 723
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 724
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->enableSceneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    const-string v4, "main"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    const-string v4, "currentPlantScene"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->main:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->switchPlantScene(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z

    .line 738
    :cond_0
    const-string v4, "yeb"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 739
    const-string v4, "yebSceneActivityInfo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 740
    const-string v5, "NOT_PLANTED"

    const-string v6, "yebSceneStatus"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 741
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 742
    :cond_1
    const-string v2, "revenueNotReceived"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->queryYebRevenueDetail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 748
    const-string v0, "handleEnableScenes err:"

    const-string v1, "AntOrchard"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private handleSignTask(Lorg/json/JSONObject;)V
    .locals 5

    .line 1005
    const-string v0, "currentSignItem"

    const-string v1, "AntOrchard"

    .line 0
    const-string v2, "\u519c\u573a\u4efb\u52a1\ud83d\udcc5\u4e03\u5929\u7b7e\u5230[\u7b2c"

    .line 1005
    const-string v3, "orchardSign"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 1010
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1011
    const-string v4, "signed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1012
    const-string p1, "\u519c\u573a\u4eca\u65e5\u5df2\u7b7e\u5230"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1013
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v3, p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1018
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSign()Ljava/lang/String;

    move-result-object p1

    .line 1019
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1021
    const-string p1, "signTaskInfo"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1022
    const-string v0, "currentContinuousCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1023
    const-string v4, "awardCount"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5929]#\u83b7\u5f97["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u80a5\u6599]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1025
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v3, p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1028
    const-string v0, "handleSignTask err:"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleTaobaoData(Ljava/lang/String;)V
    .locals 3

    .line 758
    const-string v0, "totalValue"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 759
    const-string p1, "gameInfo"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "plantInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 760
    const-string v1, "seedStage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 763
    const-string v2, "canExchange"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 764
    const-string p1, "\u519c\u573a\u679c\u6811\u4f3c\u4e4e\u53ef\u4ee5\u5151\u6362\u4e86\uff01"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 765
    const-string p1, "\u82ad\u82ad\u519c\u573a\u679c\u6811\u4f3c\u4e4e\u53ef\u4ee5\u5151\u6362\u4e86\uff01"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 767
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardAutoHarvest:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 768
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardAutoPlant:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->harvest(Z)Z

    .line 772
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 773
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->fertilizerProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 776
    const-string v0, "handleTaoBaoData err:"

    const-string v1, "AntOrchard"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleTaskList(Lorg/json/JSONArray;)V
    .locals 13

    .line 1038
    const-string v0, "rightsTimesLimit"

    const-string v1, "rightsTimes"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1039
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1040
    const-string v6, "taskStatus"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1041
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1042
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1043
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_3

    .line 1048
    :cond_0
    const-string v8, "groupId"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    const-string v8, "taskDisplayConfig"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    const-string v9, "\u672a\u77e5\u4efb\u52a1"

    if-eqz v8, :cond_1

    :try_start_1
    const-string v10, "title"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    if-nez v8, :cond_2

    move-object v10, v2

    goto :goto_1

    .line 1051
    :cond_2
    const-string v10, "desc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-nez v8, :cond_3

    move-object v11, v2

    goto :goto_2

    .line 1052
    :cond_3
    const-string v11, "targetUrl"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 1054
    :goto_2
    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1055
    new-instance v6, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v8, "AntOrchardTaskList"

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "taskId"

    .line 1057
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v6

    .line 1058
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v6

    const-string v7, "taskRemain"

    .line 1059
    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v6

    const-string v7, "taskPlayType"

    const-string v8, "taskProdPlayType"

    .line 1060
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v6

    const-string v7, "taskMode"

    .line 1061
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v6

    const-string v7, "sceneCode"

    .line 1062
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "ORCHARD"

    const-string v7, "H5"

    .line 1063
    invoke-virtual {v5, v6, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v6, "20250812.01"

    .line 1064
    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    .line 1055
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto :goto_3

    .line 1068
    :cond_4
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-le v7, v6, :cond_7

    .line 1069
    :cond_5
    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->finishOrchardTask(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v5, 0x1f4

    .line 1072
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 1078
    const-string v0, "handleTaskList err:"

    const-string v1, "AntOrchard"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private handleWishActivity(Lorg/json/JSONObject;)V
    .locals 7

    .line 1521
    const-string v0, "AntOrchard"

    .line 0
    const-string v1, "\u519c\u573a\u8bb8\u613f\u2728\u5b8c\u6210\u627f\u8bfa#\u83b7\u5f97["

    .line 1521
    :try_start_0
    const-string v2, "activityId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1522
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1525
    const-string v4, "FINISHED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "WISH"

    if-eqz v4, :cond_1

    .line 1526
    :try_start_1
    invoke-static {v2, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveOrchardRights(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1527
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1528
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1529
    const-string p1, "amount"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "g\u80a5\u6599]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1531
    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->querySubplotsActivity(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1537
    :cond_1
    const-string v1, "NOT_STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1538
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManureSceneList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    const-string v3, "main"

    invoke-virtual {v1, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1539
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xa

    if-lt v4, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-lez v6, :cond_5

    .line 1542
    new-instance v1, Lorg/json/JSONObject;

    const-string v4, "extend"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1543
    const-string p1, "wishActivityOptionList"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1545
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 1546
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1547
    const-string v4, "taskRequire"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1548
    const-string p1, "optionKey"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v5, p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->triggerSubplotsActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1549
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u519c\u573a\u8bb8\u613f\u2728\u8bb8\u4e0b\u627f\u8bfa[\u6bcf\u65e5\u65bd\u80a5"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1558
    const-string v1, "handleWishActivity err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static initAntOrchardTaskListMap(ZZZZZZ)V
    .locals 16

    .line 458
    const-string v0, "farmTaskList"

    const-string v1, "\u901b\u4e00\u901b\u5feb\u624b"

    const-string v2, "AntOrchard"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->load()V

    .line 460
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 461
    const-string v4, "\u5b8c\u62101\u7b14\u65e7\u8863\u56de\u6536"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v4, "\u901b\u52a9\u519c\u597d\u8d27\u5f97\u80a5\u6599"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v4, "\u4e0b\u8f7d\u8682\u8681\u963f\u798f\u770b\u5065\u5eb7\u653b\u7565"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v4, "\u901b\u4e00\u901b\u7b7e\u5230\u9886\u73b0\u91d1"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v4, "\u9493\u9c7c1\u6b21"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    const-string v4, "\u901b\u4e00\u901b\u95ea\u8d2d\u5916\u5356"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v4, "\u5b8c\u62101\u5355\u624b\u673a\u6570\u7801\u56de\u6536"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v4, "\u901b\u597d\u7269\u6700\u9ad8\u5f971500\u80a5\u6599"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 475
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 476
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    :cond_0
    const-string v5, "taskDisplayConfig"

    const-string v6, "taskList"

    const-string v8, "title"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p0, :cond_9

    .line 480
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardListTask()Ljava/lang/String;

    move-result-object v11

    .line 481
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-static {v2, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 483
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    .line 484
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 485
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 486
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 487
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 488
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 489
    new-array v15, v9, [Lorg/json/JSONObject;

    aput-object v13, v15, v10

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 494
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->save()Z

    .line 495
    const-string v11, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u82ad\u82ad\u519c\u573a\u80a5\u6599\u4efb\u52a1\u5217\u8868"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p3, :cond_9

    .line 500
    sget-object v11, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 501
    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 502
    const-string v12, "AntOrchardTaskList"

    invoke-virtual {v11, v12}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez v11, :cond_3

    return-void

    .line 508
    :cond_3
    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    if-eqz v12, :cond_7

    .line 510
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 511
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 512
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 517
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 518
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 519
    invoke-interface {v12, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 524
    :cond_7
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u82ad\u82ad\u519c\u573a\u80a5\u6599\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_4

    .line 527
    :cond_8
    const-string v3, "\u519c\u573a\u80a5\u6599\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 533
    :cond_9
    :goto_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->load()V

    .line 535
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 536
    const-string v4, "\u53bb\u5b8c\u62102\u4e2a\u5c45\u6c11\u8ba2\u5355"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v4, "\u53bb\u5b8c\u621020\u4e2a\u5c45\u6c11\u8ba2\u5355"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    const-string v4, "\u53bb\u5b8c\u621050\u4e2a\u5c45\u6c11\u8ba2\u5355"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v4, "\u82b1\u56ed\u4e16\u754c\u4efb\u610f\u5145\u503c\u4e00\u7b14"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 545
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 546
    invoke-static {v12, v7}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_12

    .line 550
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardDrawListTask()Ljava/lang/String;

    move-result-object v11

    .line 551
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-static {v2, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 553
    const-string v11, "taskInfoList"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    .line 554
    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 555
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 556
    const-string v14, "taskBaseInfo"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 557
    new-instance v14, Lorg/json/JSONObject;

    const-string v15, "bizInfo"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 559
    new-array v15, v9, [Lorg/json/JSONObject;

    aput-object v14, v15, v10

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 563
    :cond_b
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->save()Z

    .line 564
    const-string v11, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u82ad\u82ad\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1\u5217\u8868"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    .line 569
    sget-object v11, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 570
    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 571
    const-string v12, "AntOrchardDrawTaskList"

    invoke-virtual {v11, v12}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez v11, :cond_c

    return-void

    .line 577
    :cond_c
    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    if-eqz v12, :cond_10

    .line 579
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 580
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 581
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7

    .line 586
    :cond_e
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 587
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 588
    invoke-interface {v12, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 593
    :cond_10
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u82ad\u82ad\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_9

    .line 596
    :cond_11
    const-string v3, "\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 603
    :cond_12
    :goto_9
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->load()V

    .line 605
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 606
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v1, "\u5230\u5e97\u652f\u4ed81\u7b14"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    const-string v1, "\u56db\u5b63\u7269\u8bed\u5408\u621020\u6b21"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v1, "\u4f59\u989d\u5b9d\u6512\u94b1\u6ee11000\u5143"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    const-string v1, "\u7ebf\u4e0a\u652f\u4ed81\u7b14"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v1, "\u901b\u4e00\u901b\u6dd8\u5b9d\u62cd\u7167"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v1, "\u6bcf\u65e5\u798f\u5229\uff1a\u80a5\u6599\u5151\u6362\u652f\u91d1\u8c46"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v1, "\u901b\u4e00\u901b\u6dd8\u5b9d\u95ea\u8d2d"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    const-string v1, "\u652f\u4ed8\u5b9d\u65e7\u8863\u56de\u65361\u6b21"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 621
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 622
    invoke-static {v11, v7}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    if-eqz p2, :cond_1d

    .line 626
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->index()Ljava/lang/String;

    move-result-object v4

    .line 627
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-static {v2, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    return-void

    .line 631
    :cond_14
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 632
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    .line 633
    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_15

    .line 634
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 635
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 636
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 637
    new-array v13, v9, [Lorg/json/JSONObject;

    aput-object v11, v13, v10

    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 641
    :cond_15
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 642
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    .line 643
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_16

    .line 644
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 645
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 646
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 647
    new-array v11, v9, [Lorg/json/JSONObject;

    aput-object v6, v11, v10

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 653
    :cond_16
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->save()Z

    .line 654
    const-string v0, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u82ad\u82ad\u519c\u573a\u91d1\u8c46\u4efb\u52a1\u5217\u8868"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p5, :cond_1d

    .line 659
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 660
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 661
    const-string v4, "GoldenBeansTaskList"

    invoke-virtual {v0, v4}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez v0, :cond_17

    return-void

    .line 667
    :cond_17
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_1b

    .line 669
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 670
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 671
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d

    .line 676
    :cond_19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 677
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 678
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 683
    :cond_1b
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u82ad\u82ad\u519c\u573a\u91d1\u8c46\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_f

    .line 686
    :cond_1c
    const-string v0, "\u519c\u573a\u91d1\u8c46\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 691
    const-string v1, "initAntOrchardTaskListMap err:"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_f
    return-void
.end method

.method public static initPlantScene(Lorg/json/JSONObject;)V
    .locals 2

    .line 702
    :try_start_0
    const-string v0, "enableSwitchSceneList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->load()V

    const/4 v0, 0x0

    .line 707
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 708
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-static {v1, v1}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->save()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 713
    const-string v0, "initPlantScene err:"

    const-string v1, "AntOrchard"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private limitedTimeChallenge()V
    .locals 16

    .line 1722
    const-string v0, " \u6b21"

    const-string v1, "TODO"

    const-string v2, "taskId"

    const-string v3, "taskStatus"

    const-string v4, "AntOrchard"

    .line 0
    const-string v5, "\u82ad\u82ad\u519c\u573a \u9650\u65f6\u4efb\u52a1 \u9519\u8bef\uff1a"

    const-string v6, "\u5f00\u59cb\u5904\u7406\u7b2c "

    const-string v7, "\u5f53\u524d\u8f6e\u6570 "

    const-string v8, "currentRound \u65e0\u6548\uff1a"

    const-string v9, "orchardSyncIndex \u67e5\u8be2\u5931\u8d25: "

    .line 1722
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSyncIndex()Ljava/lang/String;

    move-result-object v10

    .line 1723
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1725
    invoke-static {v4, v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1730
    :cond_0
    const-string v9, "limitedTimeChallenge"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1732
    const-string v0, "limitedTimeChallenge \u5b57\u6bb5\u4e0d\u5b58\u5728\u6216\u4e3a null"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1736
    :cond_1
    const-string v10, "currentRound"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-gtz v10, :cond_2

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1742
    :cond_2
    const-string v8, "limitedTimeChallengeTasks"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1744
    const-string v0, "limitedTimeChallengeTasks \u5b57\u6bb5\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u6570\u7ec4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v9, v10, -0x1

    if-ltz v9, :cond_1a

    .line 1749
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v9, v12, :cond_4

    goto/16 :goto_6

    .line 1754
    :cond_4
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    const-string v8, "\u7b2c "

    if-nez v7, :cond_5

    .line 1756
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8f6e\u4efb\u52a1\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1760
    :cond_5
    const-string v9, "ongoing"

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1761
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1762
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1763
    const-string v14, "awardCount"

    invoke-virtual {v7, v14, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 1765
    const-string v15, "FINISHED"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v9, :cond_7

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8f6e \u5956\u52b1\u672a\u9886\u53d6\uff0c\u5c1d\u8bd5\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1767
    const-string v0, "ORCHARD_LIMITED_TIME_CHALLENGE"

    invoke-static {v0, v13}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1768
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8f6e \u9650\u65f6\u4efb\u52a1\ud83c\udf81[\u80a5\u6599 * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_0

    .line 1772
    :cond_6
    const-string v0, "desc"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1778
    :cond_7
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "\u8b66\u544a\uff1a\u7b2c "

    if-nez v5, :cond_8

    .line 1779
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8f6e\u4efb\u52a1\u975e TODO\uff0c\u72b6\u6001="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1783
    :cond_8
    const-string v5, "childTaskList"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8f6e\u65e0\u5b50\u4efb\u52a1\u5217\u8868"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1789
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u8f6e\u7684 "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u4e2a\u5b50\u4efb\u52a1"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1791
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1b

    .line 1792
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 1793
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_5

    .line 1797
    :cond_a
    const-string v8, "\u672a\u77e5ID"

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1798
    const-string v9, "actionType"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1799
    const-string v10, "groupId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1800
    const-string v12, "sceneCode"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1802
    const-string v13, "GROUP_1_STEP_3_GAME_WZZT_30s"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto/16 :goto_5

    .line 1806
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "------ \u5f00\u59cb\u5904\u7406\u5b50\u4efb\u52a1 "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " | ID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ------"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v13, -0x553681e6

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v10, v13, :cond_e

    const v13, 0x20f8542

    if-eq v10, v13, :cond_d

    const v13, 0x4de552b

    if-eq v10, v13, :cond_c

    goto :goto_2

    :cond_c
    const-string v10, "VISIT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x2

    goto :goto_3

    :cond_d
    const-string v10, "GAME_CENTER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_3

    :cond_e
    const-string v10, "SPREAD_MANURE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    goto :goto_3

    :cond_f
    :goto_2
    const/4 v10, -0x1

    :goto_3
    if-eqz v10, :cond_16

    if-eq v10, v15, :cond_14

    if-eq v10, v14, :cond_10

    .line 1860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u65e0\u6cd5\u5904\u7406\u7684\u4efb\u52a1\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | actionType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1842
    :cond_10
    const-string v9, "taskDisplayConfig"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 1843
    const-string v9, "targetUrl"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_4

    .line 1850
    :cond_11
    invoke-static {v12, v8}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1851
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-static {v4, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1853
    const-string v7, "\u5e7f\u544a\u4efb\u52a1\u89e6\u53d1\u6210\u529f"

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1855
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5e7f\u544a\u4efb\u52a1\u89e6\u53d1\u5931\u8d25: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1844
    :cond_13
    :goto_4
    const-string v7, "\u4efb\u52a1\u6ca1\u6709 taskDisplayConfig\uff0c\u65e0\u6cd5\u7ee7\u7eed"

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1831
    :cond_14
    const-string v7, "2021004165643274"

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->noticeGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1832
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1833
    invoke-static {v4, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1834
    const-string v7, "\u6e38\u620f\u4efb\u52a1\u89e6\u53d1\u6210\u529f \u2192 \u5b50\u4efb\u52a1\u5e94\u5f53\u81ea\u52a8\u5b8c\u6210"

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1836
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6e38\u620f\u4efb\u52a1\u89e6\u53d1\u5931\u8d25\uff0c\u8fd4\u56de: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1810
    :cond_16
    const-string v8, "taskRequire"

    invoke-virtual {v7, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1811
    const-string v9, "taskProgress"

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v8, v7

    if-lez v8, :cond_19

    .line 1814
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65bd\u80a5\u4efb\u52a1\u9700\u8865\u5145 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_17
    if-ge v7, v8, :cond_18

    .line 1817
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->getWua()Ljava/lang/String;

    move-result-object v9

    .line 1818
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSpreadManure(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1819
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u65bd\u80a5\u7b2c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " \u6b21\u7ed3\u679c\uff1a"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1820
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1821
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_17

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u82ad\u82ad\u519c\u573a orchardSpreadManure \u9519\u8bef\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resultDesc"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1826
    :cond_18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65bd\u80a5\u4efb\u52a1\u6210\u529f\u5b8c\u6210 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_19
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1750
    :cond_1a
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5bf9\u5e94\u4e0b\u6807 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u8d85\u51fa\u6570\u7ec4\u957f\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1865
    const-string v1, "limitedTimeChallenge err:"

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    return-void
.end method

.method private orchardAssistFriend()V
    .locals 10

    .line 1407
    const-string v0, "code"

    const-string v1, "orchardAssist:"

    const-string v2, "AntOrchard"

    const-string v3, "orchardAssistLimit"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 1411
    :cond_0
    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->assistFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_6

    .line 1412
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    .line 1417
    :cond_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1422
    :cond_2
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->achieveBeShareP2P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1423
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1425
    const-string v6, "600000026"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v8, 0x1388

    if-eqz v6, :cond_3

    .line 1426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_0

    .line 1430
    :cond_3
    invoke-static {v2, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u82ad\u82ad\u519c\u573a\ud83c\udf33\u52a9\u529b\u597d\u53cb["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_1

    .line 1432
    :cond_4
    const-string v6, "600000027"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1433
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1437
    :cond_5
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1441
    const-string v1, "orchardAssistFriend err:"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private orchardDrawListTask()V
    .locals 31

    .line 1213
    const-string v0, "*"

    const-string v1, "\u519c\u573a\u5bfb\u5b9d\ud83c\udf81\u62bd\u4e2d["

    const-string v2, "prizeVO"

    const-string v3, "blance"

    const-string v4, "sceneCode"

    const-string v5, "drawActivity"

    const-string v6, "drawAsset"

    const-string v7, "AntOrchard"

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->enterDrawActivityantorchard()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1214
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 1217
    :cond_0
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    return-void

    .line 1220
    :cond_1
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1221
    const-string v9, "activityId"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1222
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1224
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardDrawListTask()Ljava/lang/String;

    move-result-object v5

    .line 1225
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1226
    invoke-static {v7, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 1229
    :cond_2
    const-string v5, "taskInfoList"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v11, 0x0

    .line 1230
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "]"

    if-ge v11, v12, :cond_b

    .line 1231
    :try_start_1
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1232
    const-string v14, "taskBaseInfo"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1233
    new-instance v15, Lorg/json/JSONObject;

    const-string v10, "bizInfo"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1234
    const-string v10, "title"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v5

    .line 1235
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v4

    .line 1236
    const-string v4, "taskStatus"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v0

    .line 1237
    const-string v0, "taskType"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v1

    .line 1241
    const-string v1, "taskRights"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1242
    const-string v12, "rightsTimes"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v26, v2

    .line 1243
    const-string v2, "rightsTimesLimit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1245
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    move-object/from16 v29, v6

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    goto/16 :goto_2

    .line 1250
    :cond_3
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v27, v3

    const-string v3, "]\u83b7\u5f97\u62bd\u5956*"

    move-object/from16 v28, v8

    const-string v8, "\u519c\u573a\u5bfb\u5b9d\ud83c\udf96\ufe0f\u9886\u53d6["

    move-object/from16 v29, v6

    const-string v6, "incAwardCount"

    if-eqz v2, :cond_5

    .line 1251
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v30, v9

    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveTaskAwardantorchard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-static {v7, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1253
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    move-object/from16 v2, p0

    if-gt v1, v12, :cond_6

    goto/16 :goto_2

    :cond_5
    move-object/from16 v30, v9

    move-object/from16 v2, p0

    .line 1262
    :cond_6
    :try_start_3
    iget-object v9, v2, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1263
    new-instance v3, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v17, "AntOrchardDrawTaskList"

    const-string v6, "desc"

    .line 1264
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v6, "targetUrl"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v3

    move-object/from16 v18, v10

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v3, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 1266
    invoke-virtual {v0, v12, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskRequire"

    const/4 v9, 0x0

    .line 1267
    invoke-virtual {v14, v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "taskProgress"

    invoke-virtual {v14, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskPlayType"

    const-string v3, "taskProdPlayType"

    .line 1268
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskMode"

    .line 1269
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 1270
    invoke-virtual {v0, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "ORCHARD"

    const-string v3, "ANTFARM_ORCHARD"

    .line 1271
    invoke-virtual {v0, v1, v3}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "20250812.01"

    .line 1272
    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 1263
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto/16 :goto_2

    :cond_7
    const/4 v9, 0x0

    .line 1275
    sget-object v14, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v14}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1276
    invoke-static {v12, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_a

    .line 1277
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->finishTaskantorchard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v15, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1279
    const-string v9, "AntOrchardDrawTaskList"

    invoke-static {v9, v10, v15}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1280
    invoke-static {v7, v15}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u519c\u573a\u5bfb\u5b9d\ud83e\uddfe\u5b8c\u6210["

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-static {v12, v1, v14}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1281
    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1284
    :cond_8
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveTaskAwardantorchard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-static {v7, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1286
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1287
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_9
    const-wide/16 v16, 0x3e8

    .line 1289
    invoke-static/range {v16 .. v17}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_a
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    move-object/from16 v9, v30

    goto/16 :goto_0

    :cond_b
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v6

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    move-object/from16 v2, p0

    .line 1294
    new-instance v0, Lorg/json/JSONObject;

    invoke-static/range {v30 .. v30}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->drawSyncantorchard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-static {v7, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    move-object/from16 v1, v29

    .line 1298
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    move-object/from16 v0, v28

    .line 1301
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v3, v27

    .line 1302
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1303
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-lez v0, :cond_11

    .line 1305
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v5, v30

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->drawantorchard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-static {v7, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_e

    return-void

    .line 1309
    :cond_e
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    return-void

    .line 1312
    :cond_f
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1313
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v8, v26

    .line 1314
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    return-void

    .line 1317
    :cond_10
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1318
    const-string v9, "prizeName"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1319
    const-string v10, "prizeNum"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]#["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 1321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v30, v5

    move v0, v6

    move-object/from16 v26, v8

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    .line 1324
    :goto_4
    const-string v1, "orchardDrawListTask err:"

    invoke-static {v7, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static {v7, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method private orchardInfo()V
    .locals 19

    .line 255
    const-string v0, "totalProgress"

    const-string v1, "currentProgress"

    const-string v2, "stageMaxLevel"

    const-string v3, "stageLevel"

    const-string v4, "exchangeCount"

    const-string v5, "wateringLeftTimes"

    const-string v6, "canExchange"

    const-string v7, "happyPoint"

    const-string v8, "unsmashedGoldenEggs"

    const-string v9, "goldenEggLimit"

    const-string v10, "smashedGoldenEggs"

    .line 0
    const-string v11, "\u82ad\u82ad\u519c\u573a\ud83c\udf33["

    .line 257
    const-string v12, ""

    move-object/from16 v14, p0

    .line 270
    :try_start_0
    iget-object v15, v14, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->lastOrchardIndexJo:Lorg/json/JSONObject;

    if-nez v15, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u672a\u83b7\u53d6\u5230\u9996\u9875\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    const-string v13, "goldenEggInfo"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 277
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 278
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 280
    :goto_0
    :try_start_1
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 281
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 283
    :goto_1
    :try_start_2
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 284
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 287
    :goto_2
    :try_start_3
    const-string v13, "taobaoData"

    invoke-virtual {v15, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 288
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 289
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    const-string v13, "gameInfo"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 292
    const-string v15, "accountInfo"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 294
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 295
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 297
    :goto_3
    :try_start_4
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 298
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 301
    :goto_4
    :try_start_5
    const-string v15, "plantInfo"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 303
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 304
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    .line 306
    :goto_5
    :try_start_6
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 307
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 309
    :goto_6
    :try_start_7
    const-string v15, "seedStage"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 311
    const-string v15, "seedName"

    invoke-virtual {v13, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v17, v4

    .line 312
    :try_start_8
    const-string v4, "seedSubTitle"

    invoke-virtual {v13, v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v18, v4

    .line 313
    :try_start_9
    const-string v4, "stageName"

    invoke-virtual {v13, v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 314
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 315
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 317
    :goto_7
    :try_start_a
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 318
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    .line 320
    :goto_8
    :try_start_b
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 321
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    .line 323
    :goto_9
    :try_start_c
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 324
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v16, v3

    move-object v13, v7

    move-object v3, v0

    move-object v0, v12

    move-object v12, v15

    goto/16 :goto_e

    :cond_d
    move-object/from16 v16, v3

    move-object v13, v7

    move-object v0, v12

    move-object v12, v15

    const/4 v3, 0x0

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object v12, v15

    move-object/from16 v4, v17

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object v12, v15

    move-object/from16 v4, v17

    const/4 v1, 0x0

    goto/16 :goto_f

    :catchall_5
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object v12, v15

    move-object/from16 v4, v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_f

    :catchall_6
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    :goto_a
    move-object v12, v15

    move-object/from16 v4, v17

    goto :goto_b

    :cond_e
    move-object/from16 v17, v4

    move-object v13, v7

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object/from16 v17, v4

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_f

    :cond_f
    move-object v13, v7

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    const/4 v6, 0x0

    goto :goto_f

    :cond_10
    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_e
    move-object v7, v13

    move-object v13, v3

    move-object/from16 v3, v18

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 331
    :goto_f
    const-string v15, "orchardInfo \u89e3\u6790\u5931\u8d25:"

    move-object/from16 v17, v0

    const-string v0, "AntOrchard"

    invoke-static {v0, v15}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v0, v13}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v16, v3

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    const/4 v13, 0x0

    move-object/from16 v17, v4

    :goto_10
    if-nez v6, :cond_11

    .line 336
    const-string v4, " "

    goto :goto_11

    .line 337
    :cond_11
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u53ef\u5151\u6362(\u5df2\u5151"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u6b21)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 340
    :cond_12
    const-string v4, "\u672a\u6210\u719f"

    .line 342
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7ea7)\u8fdb\u5ea6"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u80a5\u6599"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u4eca\u65e5\u53ef\u65bd\u80a5"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21;\u91d1\u86cb"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\u5f85\u7838"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method private orchardListTask()V
    .locals 5

    .line 977
    const-string v0, "signTaskInfo"

    const-string v1, "AntOrchard"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardListTask()Ljava/lang/String;

    move-result-object v2

    .line 978
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 983
    :cond_0
    const-string v2, "inTeam"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 984
    const-string v2, "\u5f53\u524d\u4e3a\u82ad\u82ad\u519c\u573a team \u6a21\u5f0f\uff08\u5408\u79cd/\u5e2e\u5e2e\u79cd\u5df2\u5f00\u542f\uff09"

    goto :goto_0

    :cond_1
    const-string v2, "\u5f53\u524d\u4e3a\u666e\u901a\u5355\u4eba\u519c\u573a\u6a21\u5f0f"

    :goto_0
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 988
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleSignTask(Lorg/json/JSONObject;)V

    .line 992
    :cond_2
    const-string v0, "taskList"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 993
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->triggerTbTask(Lorg/json/JSONArray;)V

    .line 994
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleTaskList(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 996
    const-string v2, "orchardListTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private orchardSpreadManure()V
    .locals 7

    .line 789
    :cond_0
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->getEntries()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 790
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->enableSceneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManureSceneList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 792
    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->switchPlantScene(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 796
    :cond_1
    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->canSpreadManure(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 800
    :cond_2
    invoke-direct {p0, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->doSpreadManure(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 808
    :cond_4
    :goto_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->querySpreadManureActivity()V

    .line 811
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->executeInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->executeInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_5
    const/16 v0, 0x1f4

    :goto_3
    int-to-long v0, v0

    .line 812
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 819
    const-string v1, "orchardSpreadManure err:"

    const-string v2, "AntOrchard"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private queryOptionalPlay()V
    .locals 9

    .line 415
    const-string v0, "taskList"

    const-string v1, "taskTriggerPlayInfo"

    const-string v2, "AntOrchard"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->queryOptionalPlay()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 422
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 423
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 426
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 427
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 428
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 429
    const-string v4, "taskType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    const-string v5, "taskStatus"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    const-string v6, "sceneCode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    const-string v7, "alreadyReceiveAwardCount"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 433
    const-string v8, "awardCount"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v7

    .line 435
    const-string v7, "bizInfo"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 436
    const-string v7, "title"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string v7, "FINISHED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez v8, :cond_3

    .line 439
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v8, v6, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveTaskAwardantorchard(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-static {v2, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    const-string v4, "incAwardCount"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 442
    const-string v6, "taskConfigResultVO"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 443
    const-string v6, "awardType"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u519c\u573a\u4e50\u56ed\ud83c\udf96\ufe0f\u9886\u53d6["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u5956\u52b1["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 450
    const-string v1, "queryOptionalPlay err:"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private querySpreadManureActivity()V
    .locals 5

    .line 953
    const-string v0, "spreadManureActivity"

    const-string v1, "AntOrchard"

    .line 0
    const-string v2, "\u82ad\u82ad\u519c\u573a\ud83c\udf81\u4e30\u6536\u793c\u5305#\u83b7\u5f97["

    .line 953
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardIndex()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 955
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 956
    const-string v3, "spreadManureStage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 957
    const-string v3, "FINISHED"

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 958
    const-string v3, "sceneCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "taskType"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    const-string v0, "incAwardCount"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g\u80a5\u6599]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 967
    const-string v2, "querySpreadManureActivity err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private querySubplotsActivity(Ljava/lang/String;)V
    .locals 5

    .line 1451
    const-string v0, "AntOrchard"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->querySubplotsActivity()Ljava/lang/String;

    move-result-object v1

    .line 1452
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1453
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1457
    :cond_0
    const-string v1, "subplotsActivityList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1458
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1459
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1460
    const-string v4, "activityType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1464
    :cond_1
    const-string v4, "WISH"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1465
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleWishActivity(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1466
    :cond_2
    const-string v4, "CAMP_TAKEOVER"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1467
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleCampTakeoverActivity(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1468
    :cond_3
    const-string v4, "BATTLE_V2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1469
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->handleBattleV2(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1473
    const-string v1, "querySubplotsActivity err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private queryYebRevenueDetail()V
    .locals 6

    .line 1606
    const-string v0, "AntOrchard"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->yebPlantSceneRevenuePage()Ljava/lang/String;

    move-result-object v1

    .line 1607
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1612
    :cond_0
    const-string v1, "yebRevenueDetailList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1613
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1614
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1615
    const-string v4, "I"

    const-string v5, "orderStatus"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1616
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->triggerYebMoneyTree()Ljava/lang/String;

    move-result-object v3

    .line 1617
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1618
    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1619
    const-string v3, "result"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "awardInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1621
    const-string v4, "totalAmount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u82ad\u82ad\u519c\u573a\ud83c\udf33\u9886\u53d6\u5956\u52b1[\u6447\u94b1\u6811]#\u83b7\u5f97["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5143\u4f59\u989d\u5b9d\u6536\u76ca]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1628
    const-string v2, "queryYebRevenueDetail err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private receiveOrchardVisitAward()V
    .locals 8

    const-string v0, "\u9886\u53d6\u56de\u8bbf\u5956\u52b1\u5931\u8d25: "

    .line 1683
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->receiveOrchardVisitAward()Ljava/lang/String;

    move-result-object v1

    .line 1684
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1686
    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1691
    :cond_0
    const-string v0, "orchardVisitAwardList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    const-string v1, "orchardWidgetDailyAward"

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1698
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1699
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1704
    :cond_2
    const-string v5, "awardCount"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1705
    const-string v6, "awardDesc"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u56de\u8bbf\u5956\u52b1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " g\u80a5\u6599"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1709
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1693
    :cond_4
    :goto_2
    const-string v0, "\u9886\u53d6\u56de\u8bbf\u5956\u52b1\u5931\u8d25: \u65e0\u5956\u52b1\uff0c\u53ef\u80fd\u5df2\u9886\u53d6\u8fc7"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1711
    const-string v1, "receiveOrchardVisitAward err:"

    const-string v2, "AntOrchard"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private smashedGoldenEgg(I)V
    .locals 11

    .line 1639
    const-string v0, "AntOrchard"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_6

    .line 1640
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->smashedGoldenEgg()Ljava/lang/String;

    move-result-object v3

    .line 1641
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1643
    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1645
    const-string v3, "goldenEggInfoVO"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1646
    const-string v5, "unsmashedGoldenEggs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1647
    :goto_1
    const-string v5, "batchSmashedList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1648
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    .line 1649
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1650
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1652
    const-string v7, "manureCount"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1653
    const-string v8, "jackpot"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    const-string v8, ""

    if-ltz v3, :cond_1

    .line 1656
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[\u5269\u86cb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\u4e2a]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_1
    move-object v9, v8

    :goto_3
    if-eqz v6, :cond_2

    .line 1659
    const-string v8, "\uff08\u89e6\u53d1\u5927\u5956\uff09"

    .line 1660
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7838\u51fa\u80a5\u6599\ud83c\udf96\ufe0f"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1666
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7838\u91d1\u86cb\u5931\u8d25: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "resultDesc"

    const-string v6, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v3, 0x1f4

    .line 1670
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 1673
    const-string v1, "smashedGoldenEgg err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private switchPlantScene(Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;)Z
    .locals 2

    .line 938
    const-string v0, "AntOrchard"

    :try_start_0
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->switchPlantScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 940
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 942
    const-string v1, "switchPlantScene err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private triggerTbTask(Lorg/json/JSONArray;)V
    .locals 8

    .line 1184
    const-string v0, "AntOrchard"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1185
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1186
    const-string v4, "FINISHED"

    const-string v5, "taskStatus"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1190
    :cond_0
    const-string v4, "taskDisplayConfig"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    const-string v5, "awardCount"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1192
    const-string v6, "taskId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1193
    const-string v7, "taskPlantType"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1195
    invoke-static {v6, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->triggerTbTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1196
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1198
    const-string v3, "AntOrchardTaskList"

    invoke-static {v3, v4, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1199
    invoke-static {v0, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u80a5\u6599\u9886\u53d6\ud83c\udf96\ufe0f\u4efb\u52a1["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u5956\u52b1#\u83b7\u5f97["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "g]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1204
    const-string v1, "triggerTbTask err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static trimDouble(D)Ljava/lang/String;
    .locals 3

    .line 245
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    double-to-long p0, p0

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 174
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u82ad\u82ad\u519c\u573a:\u5f53\u524d\u4e3a\u53ea\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 17

    move-object/from16 v0, p0

    .line 137
    new-instance v1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 138
    new-instance v8, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const-string v3, "executeInterval"

    const-string v4, "\u6267\u884c\u95f4\u9694(\u6beb\u79d2)"

    move-object v2, v8

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v8, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->executeInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v8}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 139
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v3, 0x0

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "orchardListTask"

    const-string v5, "\u519c\u573a\u4efb\u52a1"

    invoke-direct {v2, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 140
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "AutoAntOrchardTaskList"

    const-string v6, "\u519c\u573a\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    invoke-direct {v2, v5, v6, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoAntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 141
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "AntOrchardTaskList"

    const-string v8, "\u519c\u573a\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 142
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u519c\u573a\u65bd\u80a5 | \u5f00\u542f"

    const-string v6, "orchardSpreadManure"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 143
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u4e00\u952e\u65bd\u80a55\u6b21"

    const-string v6, "useBatchSpread"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->useBatchSpread:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 144
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v15, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda1;

    invoke-direct {v15}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda1;-><init>()V

    const-string v16, "\u8bf7\u586b\u5199\u6bcf\u65e5\u65bd\u80a5\u6b21\u6570"

    const-string v12, "orchardSpreadManureSceneList"

    const-string v13, "\u519c\u573a\u65bd\u80a5 | \u573a\u666f\u5217\u8868"

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManureSceneList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 145
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u81ea\u52a8\u6536\u679c\u6811 | \u5f00\u542f"

    const-string v6, "orchardAutoHarvest"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardAutoHarvest:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 146
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u81ea\u52a8\u79cd\u679c\u6811 | \u5f00\u542f"

    const-string v6, "orchardAutoPlant"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardAutoPlant:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 147
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u519c\u573a\u4e50\u56ed | \u6e38\u620f\u5b9d\u7bb1"

    const-string v6, "drawGameCenterAward"

    invoke-direct {v2, v6, v5, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->drawGameCenterAward:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 148
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u6e38\u620f\u65f6\u957f\u4efb\u52a1 | \u5f00\u542f"

    const-string v6, "receiveOrchardGameStay"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->receiveOrchardGameStay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 149
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1"

    const-string v6, "orchardDrawListTask"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardDrawListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 150
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    const-string v6, "AutoAntOrchardDrawTaskList"

    invoke-direct {v2, v6, v5, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoAntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 151
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda2;-><init>()V

    const-string v7, "AntOrchardDrawTaskList"

    const-string v8, "\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 157
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u5206\u4eab\u52a9\u529b | \u5f00\u542f"

    const-string v6, "assistFriend"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->assistFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 158
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "assistFriendList"

    const-string v8, "\u5206\u4eab\u52a9\u529b | \u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->assistFriendList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 159
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u91d1\u8c46\u593a\u5b9d | \u5f00\u542f"

    const-string v6, "goldenBeans"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeans:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 160
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u91d1\u8c46\u5b8c\u6210\u4efb\u52a1\u9886\u5956 | \u5f00\u542f"

    const-string v6, "goldenBeansTask"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeansTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 161
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u91d1\u8c46\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    const-string v6, "AutoGoldenBeansTaskList"

    invoke-direct {v2, v6, v5, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoGoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 162
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$$ExternalSyntheticLambda3;-><init>()V

    const-string v7, "GoldenBeansTaskList"

    const-string v8, "\u91d1\u8c46\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v2, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 163
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u519c\u573a\u91d1\u8c46\u4e50\u56ed | \u6e38\u620f\u5b9d\u7bb1"

    const-string v6, "GoldenBeansGameCenter"

    invoke-direct {v2, v6, v5, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GoldenBeansGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 164
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u91d1\u8c46\u593a\u5b9d | \u80a5\u6599\u6362\u91d1\u8c46"

    const-string v5, "goldenBeanExchangeManure"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanExchangeManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 165
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/4 v9, 0x0

    const-string v5, "goldenBeanDailyManureLimit"

    const-string v6, "\u91d1\u8c46\u593a\u5b9d | \u5f53\u65e5\u5151\u6362\u80a5\u6599\u4e0a\u9650(0\u4e0d\u9650\u5236)"

    move-object v4, v2

    move-object v7, v10

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanDailyManureLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 166
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v5, "goldenBeanReserveManure"

    const-string v6, "\u91d1\u8c46\u593a\u5b9d | \u5269\u4f59\u80a5\u6599\u4e0b\u9650(0\u4e0d\u9650\u5236)"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanReserveManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v1
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 132
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GROUP:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "\u519c\u573a"

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 184
    const-string v0, "BlackList::initAntOrchard"

    :try_start_0
    invoke-super {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->startTask()Ljava/lang/Boolean;

    .line 185
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->userId:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->checkOrchardOpen()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardDrawListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeansTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoAntOrchardTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoAntOrchardDrawTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->AutoGoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->initAntOrchardTaskListMap(ZZZZZZ)V

    .line 193
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->extraInfoGet()V

    .line 199
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardListTask()V

    .line 205
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardSpreadManure()V

    .line 210
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->assistFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardAssistFriend()V

    .line 215
    :cond_4
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeans:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-instance v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;-><init>()V

    .line 217
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeansTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GoldenBeansTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->GoldenBeansGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanExchangeManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanReserveManure:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->goldenBeanDailyManureLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->run(ZLjava/util/Set;ZZII)V

    .line 221
    :cond_5
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardDrawListTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardDrawListTask()V

    .line 226
    :cond_6
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->receiveOrchardGameStay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask;->execute()V

    .line 231
    :cond_7
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;->orchardInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 235
    const-string v1, "start.run err:"

    const-string v2, "AntOrchard"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
