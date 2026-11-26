.class public Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "ProtectEcology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ProtectType;,
        Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProtectEcology"

.field private static cooperateWater:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField; = null

.field private static cooperateWaterList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField; = null

.field private static cooperateWaterTotalLimitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField; = null

.field private static pkSeasonActivityId:Ljava/lang/String; = "pkSeason4"

.field private static pkUserRankLevel:I

.field private static protectAncientMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private static protectBeach:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectBeachList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private static protectBeachMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectMarathonList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private static protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private static protectNewAncientTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private static protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private static protectReserve:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectReserveList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private static protectReserveMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectTree:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static protectTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;


# instance fields
.field private protectBeachNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private protectReserveNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private static applyGoldAnimalCert(I)V
    .locals 2

    const-string v0, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u70b9\u4eae["

    .line 453
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->applyGoldAnimalCert(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 454
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 457
    :cond_0
    const-string p0, "goldAnimalCertVO"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 460
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v1, "applyGoldAnimalCert err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static carbonCharityActivity(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u52a9\u529b["

    const/4 v1, 0x0

    .line 702
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 703
    const-string v3, "donateNum"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    const-string v3, "incrNum"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 705
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p0, p1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->doRubickActivity(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 706
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 707
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 709
    :cond_0
    const-string p0, "resultData"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "activityCertVO"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 710
    const-string p1, "name"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 711
    const-string p2, "energy"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]#\u7d2f\u8ba1["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "g\u80fd\u91cf]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 713
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 715
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string p2, "carbonCharityActivity err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static carbonQueryActivity(Ljava/lang/String;)V
    .locals 9

    .line 663
    const-string v0, "carbonWater"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 664
    const-string v2, "donateQueryActionParam"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "carbonHome"

    invoke-static {v3, p0, v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->doRubickActivity(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 666
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 669
    :cond_0
    const-string v1, "resultData"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 670
    const-string v2, "currentEnergy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 672
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 673
    const-string v4, "certLockStatus"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "donateConfigVO"

    if-nez v4, :cond_3

    .line 674
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "donateNum"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 675
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-eqz v3, :cond_1

    .line 676
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v7, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    if-lt v2, v4, :cond_3

    .line 680
    invoke-static {v0, p0, v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->carbonCharityActivity(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sub-int/2addr v2, v4

    .line 684
    :cond_3
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_4

    return-void

    .line 688
    :cond_4
    const-string v4, "activityCertVO"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "energy"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    .line 689
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 690
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "secondDonateMinNum"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 691
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v3, v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v2, v3, :cond_6

    .line 692
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, v3}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->carbonCharityActivity(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 695
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v1, "carbonQueryActivity err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static cooperateWater(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 259
    const-string v0, "barrageText"

    const-string v1, "]#"

    .line 0
    const-string v2, "\u5408\u79cd\u6d47\u6c34\ud83d\udebf["

    .line 259
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/CooperateRpcCall;->cooperateWater(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 263
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 266
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string p2, "cooperateWater err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    .line 269
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static cooperateWater()V
    .locals 7

    .line 210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/CooperateRpcCall;->queryUserCooperatePlantList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "cooperatePlants"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 216
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 217
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 218
    const-string v4, "cooperationId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    const-string v5, "cooperateTemplate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 222
    const-string v5, "cooperate"

    const-string v6, "iconUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCooperatePlant(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->saveAndPrefetch()V

    .line 227
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/CooperationIdMap;->save(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 229
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "cooperateWater err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static exchangeTree(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u4fdd\u62a4["

    const/4 v1, 0x0

    .line 429
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->exchangeTree(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 430
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 431
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 433
    :cond_0
    const-string p0, "vitalityAmount"

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 434
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    const-string v4, "#\u83b7\u5f97["

    if-lez p0, :cond_1

    .line 436
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u6d3b\u529b\u503c]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_1
    const-string p0, "userCertificate"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 439
    const-string v2, "ANIMAL"

    const-string v5, "type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "]"

    if-eqz v2, :cond_2

    .line 440
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "projectName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 443
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 445
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v0, "exchangeTree err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static getEnergyCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 273
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWaterList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    const-string v2, "D"

    invoke-static {v2, p1, p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->getEnergySummation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 278
    const-string v3, "A"

    invoke-static {v3, p1, p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->getEnergySummation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 280
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWaterTotalLimitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    const/16 p0, 0xa

    if-ge p2, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    return v1
.end method

.method private static getEnergySummation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 289
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/CooperateRpcCall;->queryCooperateRank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 291
    const-string p0, "cooperateRankInfos"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 293
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const-string p0, "energySummation"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 300
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string p2, "getEnergySummation err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static initForest()V
    .locals 14

    .line 145
    const-string v0, "projectType"

    :try_start_0
    const-string v1, "AVAILABLE"

    const-string v2, "project"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->load()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 150
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 151
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 152
    const-string v5, "itemId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v6, "itemName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    const-string v7, "TREE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "g)"

    const-string v9, "energy"

    const-string v10, "("

    const/4 v11, 0x1

    if-eqz v7, :cond_1

    .line 155
    :try_start_1
    const-string v7, "organization"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    const-string v12, "region"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 157
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v6, "tree"

    new-array v7, v11, [Lorg/json/JSONObject;

    aput-object v4, v7, v2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v5, v4}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_1
    const-string v7, "RESERVE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "reserve"

    new-array v7, v11, [Lorg/json/JSONObject;

    aput-object v4, v7, v2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v5, v4}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_2
    const-string v7, "ANIMAL"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "animal"

    new-array v7, v11, [Lorg/json/JSONObject;

    aput-object v4, v7, v2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v5, v4}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 168
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->save()Z

    .line 169
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->save()Z

    .line 170
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->save()Z

    .line 171
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->saveAndPrefetch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 174
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "initForest err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static initOcean()V
    .locals 8

    .line 181
    const-string v0, "templateType"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCultivationList()Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->load()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 186
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 187
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 189
    const-string v5, "templateCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 191
    const-string v6, "beach"

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/json/JSONObject;

    aput-object v4, v7, v2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    const-string v6, "AVAILABLE"

    const-string v7, "applyAction"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    const-string v6, "BEACH"

    const-string v7, "templateSubType"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "COOPERATE_PLANT"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PROTECT"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cultivationName"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "energy"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "g)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 200
    :cond_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->save()Z

    .line 201
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->saveAndPrefetch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 203
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "initOcean err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static loadPkSeasonInfo()V
    .locals 9

    .line 508
    const-string v0, "pkSeason4"

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkSeasonActivityId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 509
    sput v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkUserRankLevel:I

    .line 511
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->queryHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    const-string v2, "combineHandlerVOMap"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 513
    :cond_0
    const-string v3, "energyChallengeRank"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 517
    :cond_1
    const-string v3, "level"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkUserRankLevel:I

    .line 518
    const-string v3, "rankHeadPortraitVOS"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 522
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 523
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_2

    .line 524
    :cond_3
    const-string v5, "extInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_3

    .line 525
    :cond_4
    const-string v5, "protectList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    .line 529
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 530
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_5

    .line 534
    :cond_6
    const-string v7, "pk(\\d+)Level\\d+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "protectId"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 535
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkSeason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkSeasonActivityId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 542
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method private static marathonQueryActivity(Ljava/lang/String;)V
    .locals 9

    .line 624
    const-string v0, "marathonWater"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    const-string v2, "donateQueryActionParam"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "marathonHome"

    invoke-static {v3, p0, v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->doRubickActivity(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 627
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 630
    :cond_0
    const-string v1, "resultData"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 631
    const-string v2, "currentEnergy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 633
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 634
    const-string v4, "certLockStatus"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "donateConfigVO"

    if-nez v4, :cond_3

    .line 635
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "donateNum"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 636
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-eqz v3, :cond_1

    .line 637
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v7, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    if-lt v2, v4, :cond_3

    .line 641
    invoke-static {v0, p0, v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->carbonCharityActivity(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sub-int/2addr v2, v4

    .line 645
    :cond_3
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_4

    return-void

    .line 649
    :cond_4
    const-string v4, "activityCertVO"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "energy"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    .line 650
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 651
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "secondDonateMinNum"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 652
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v3, v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v2, v3, :cond_6

    .line 653
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, v3}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->carbonCharityActivity(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 656
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v1, "marathonQueryActivity err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static oceanExchangeTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 871
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectOceanRpcCall;->oceanExchangeTree(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 872
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 873
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 875
    :cond_0
    const-string p0, "rewardItemVOs"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 877
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 878
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-lez v1, :cond_1

    .line 880
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "num"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u62a4\u6d77\u6d0b\ud83c\udfd6\ufe0f\u4fdd\u62a4["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]#\u83b7\u5f97["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 885
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 887
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string p2, "oceanExchangeTree err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 890
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static protectAncientMinNum()V
    .locals 15

    .line 549
    const-string v0, "\u53e4\u6811\u4fdd\u62a4\ud83c\udf33PK\u8d5b\u67e5\u8be2\u53e4\u6811\u5730\u56fe\u5931\u8d25: "

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->loadPkSeasonInfo()V

    .line 550
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkSeasonActivityId:Ljava/lang/String;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->pkQueryTreeMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 551
    const-string v2, "SUCCESS"

    const-string v3, "resultCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "resultDesc"

    if-nez v2, :cond_0

    .line 552
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 555
    :cond_0
    const-string v0, "actionData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 556
    const-string v2, "resultData"

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 557
    :cond_2
    const-string v1, "protectProgress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    .line 559
    const-string v0, "\u53e4\u6811\u4fdd\u62a4\ud83c\udf33PK\u8d5b\u53e4\u6811\u5730\u56fe\u65e0\u4fdd\u62a4\u8fdb\u5ea6\u6570\u636e"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 562
    :cond_3
    const-string v0, "levelProtectList"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 563
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_6

    .line 567
    :cond_4
    const-string v4, "userRankLevel"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_5

    .line 569
    sget v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkUserRankLevel:I

    .line 572
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_11

    .line 573
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_6

    goto/16 :goto_5

    .line 577
    :cond_6
    const-string v6, "level"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v1, :cond_7

    goto/16 :goto_5

    .line 583
    :cond_7
    const-string v7, "protectCount"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_8

    goto/16 :goto_5

    .line 586
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->pkSeasonActivityId:Ljava/lang/String;

    const-string v8, "pkSeason"

    const-string v9, "pk"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Level"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->pkSeason2Home(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 588
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_5

    .line 591
    :cond_9
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_a

    goto/16 :goto_5

    .line 595
    :cond_a
    const-string v10, "donateConfigVO"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const/16 v11, 0x1388

    if-nez v10, :cond_b

    goto :goto_3

    .line 596
    :cond_b
    const-string v12, "donateNum"

    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 597
    :goto_3
    const-string v10, "currentEnergy"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    int-to-long v12, v11

    cmp-long v14, v9, v12

    if-gez v14, :cond_c

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53e4\u6811\u4fdd\u62a4\ud83c\udf33PK\u8d5b\u80fd\u91cf\u4e0d\u8db3["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]\u505c\u6b62\u4fdd\u62a4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 602
    :cond_c
    const-string v9, "pageProperties"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_d

    move-object v7, v4

    goto :goto_4

    .line 603
    :cond_d
    const-string v9, "activityName"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 604
    :goto_4
    invoke-static {v4, v11}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->pkSeason2Water(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_5

    .line 608
    :cond_e
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53e4\u6811\u4fdd\u62a4\ud83c\udf33PK\u8d5b[LV"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]\u6d47\u6c34\u5931\u8d25: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_5

    .line 613
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u53e4\u6811\u4fdd\u62a4\ud83c\udf33PK\u8d5b\u9886\u53d6\u8bc1\u4e66[LV"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u00b7"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\u6d88\u8017\u80fd\u91cf"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "g"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    .line 614
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_10
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    .line 617
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "protectAncientMinNum err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method private static protectAnimal()V
    .locals 5

    .line 354
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 355
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 357
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v2

    .line 358
    :goto_1
    iget-boolean v3, v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    if-eqz v3, :cond_0

    .line 359
    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    .line 360
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->exchangeTree(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 364
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static protectBeach()V
    .locals 9

    .line 813
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 815
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCultivationList()Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 819
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 820
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 821
    const-string v4, "AVAILABLE"

    const-string v5, "applyAction"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 824
    :cond_1
    const-string v4, "cultivationCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    const-string v5, "projectConfigVO"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 826
    const-string v6, "certNum"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 827
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_2

    goto :goto_2

    .line 831
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v3, :cond_3

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCultivationDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v7, 0x12c

    .line 833
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 837
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "protectBeach err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static protectBeachMinNum(I)V
    .locals 9

    if-lez p0, :cond_4

    .line 783
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCultivationList()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 787
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 788
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 789
    const-string v4, "AVAILABLE"

    const-string v5, "applyAction"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 792
    :cond_1
    const-string v4, "cultivationCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    const-string v5, "projectConfigVO"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 794
    const-string v6, "certNum"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 795
    const-string v7, "energy"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v7, 0x3e8

    if-le v3, v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-le p0, v6, :cond_3

    .line 799
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryCultivationDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x12c

    .line 801
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 805
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v1, "protectBeachMinNum err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static protectCarbon()V
    .locals 11

    .line 467
    const-string v0, "marathon"

    :try_start_0
    const-string v1, "AVAILABLE"

    const-string v2, "special"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->load()V

    .line 473
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->load()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 474
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 475
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 476
    const-string v5, "extendInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 477
    const-string v5, "activityName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    const-string v6, "activityType"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "%26"

    const-string v8, "activityId%3D"

    const-string v9, "actionUrl"

    const/4 v10, 0x1

    if-eqz v6, :cond_1

    .line 479
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8, v7}, Lio/github/lazyimmortal/sesame/util/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 480
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-array v5, v10, [Lorg/json/JSONObject;

    aput-object v4, v5, v2

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->marathonQueryActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_1
    const-string v6, "\u53e4\u6811\u533b\u751f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 486
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8, v7}, Lio/github/lazyimmortal/sesame/util/StringUtil;->getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 487
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v5, "ancientTree"

    new-array v7, v10, [Lorg/json/JSONObject;

    aput-object v4, v7, v2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    .line 490
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->carbonQueryActivity(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 494
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->save()Z

    .line 495
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->save()Z

    .line 496
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->saveAndPrefetch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 498
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "protectCarbon err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static protectReserve()V
    .locals 7

    .line 329
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 330
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 336
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Status;->canExchangeReserveToday(II)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v3

    .line 338
    iget-boolean v4, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    if-nez v4, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    .line 342
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->getExchangeReserveCountToday(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u7533\u8bf7["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]#\u7b2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b21"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 344
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->exchangeTree(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->exchangeReserveToday(I)V

    const-wide/16 v3, 0x12c

    .line 348
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static protectReserveMinNum(I)V
    .locals 7

    if-lez p0, :cond_5

    .line 741
    :try_start_0
    const-string v0, "AVAILABLE"

    const-string v1, "project"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 745
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 746
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 747
    const-string v3, "itemId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 748
    const-string v3, "itemName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 749
    const-string v3, "certCountForAlias"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 750
    const-string v4, "projectId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 751
    const-string v5, "RESERVE"

    const-string v6, "projectType"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-lt v3, p0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p0, :cond_4

    .line 757
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v2

    .line 758
    iget-boolean v5, v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    if-nez v5, :cond_2

    goto :goto_2

    .line 761
    :cond_2
    iget-object v2, v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    .line 763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u7533\u8bf7["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]#\u7b2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u6b21"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 764
    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->exchangeTree(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 767
    :cond_3
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->exchangeReserveToday(I)V

    const-wide/16 v5, 0x12c

    .line 768
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 773
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v1, "protectReserveMinNum err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private static protectTree()V
    .locals 7

    .line 307
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 308
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 314
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v3

    .line 315
    :goto_1
    iget-boolean v4, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    if-eqz v4, :cond_0

    iget v4, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->certCount:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 316
    iget-object v4, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    .line 317
    iget v3, v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->certCount:I

    add-int/lit8 v3, v3, 0x1

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u7533\u8bf7["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]#\u7b2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6b21"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 319
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->exchangeTree(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x12c

    .line 322
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 323
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    move-result-object v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static queryCooperatePlant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 236
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/CooperateRpcCall;->queryCooperatePlant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 240
    :cond_0
    const-string v1, "userCurrentEnergy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    const-string v2, "cooperatePlant"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/idMap/CooperationIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v3, "waterDayLimit"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->getEnergyCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    if-gt v0, v1, :cond_1

    .line 247
    invoke-static {p0, p1, v0, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWater(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x12c

    .line 248
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 252
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v0, "queryCooperatePlant err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static queryCultivationDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "\u4fdd\u62a4\u6d77\u6d0b\ud83c\udfd6\ufe0f\u7533\u8bf7["

    const/4 v1, 0x0

    .line 844
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectOceanRpcCall;->queryCultivationDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 845
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 848
    :cond_0
    const-string v3, "userInfoVO"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "currentEnergy"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 849
    const-string v4, "cultivationDetailVO"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 850
    const-string v4, "cultivationName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 851
    const-string v5, "AVAILABLE"

    const-string v6, "applyAction"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "\u4fdd\u62a4\u6d77\u6d0b\ud83c\udfd6\ufe0f\u4fdd\u62a4["

    if-nez v5, :cond_1

    .line 852
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u505c\u6b62:\u6570\u91cf\u4e0d\u8db3"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 853
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 855
    :cond_1
    const-string v5, "energy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 856
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u505c\u6b62:\u80fd\u91cf\u4e0d\u8db3"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 857
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 859
    :cond_2
    const-string v3, "certNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#\u7b2c"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6b21"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 861
    invoke-static {p0, p1, v4}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->oceanExchangeTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 863
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v0, "queryCultivationDetail err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 866
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static queryCultivationList()Lorg/json/JSONArray;
    .locals 4

    const/4 v0, 0x0

    .line 723
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectOceanRpcCall;->queryCultivationList()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 724
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 728
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const-string v1, "cultivationItemVOList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 732
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v3, "queryCultivationList err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method private static queryTreeForExchange(I)Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;
    .locals 6

    .line 383
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;-><init>(I)V

    .line 385
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeForExchange(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 389
    :cond_0
    const-string v2, "applyAction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v3, "currentEnergy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 391
    const-string v4, "subTreeVOs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 392
    const-string v5, "exchangeableTree"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 393
    const-string v5, "certCount"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->certCount:I

    .line 394
    const-string v5, "projectName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    .line 395
    const-string v5, "AVAILABLE"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\u751f\u6001\u4fdd\u62a4\ud83c\udfd5\ufe0f\u4fdd\u62a4["

    if-nez v2, :cond_1

    .line 396
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u505c\u6b62:\u6570\u91cf\u4e0d\u8db3"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-object v0

    .line 399
    :cond_1
    const-string v2, "energy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u505c\u6b62:\u80fd\u91cf\u4e0d\u8db3"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-object v0

    .line 403
    :cond_2
    const-string v2, "ANIMAL"

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 404
    iget v1, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->certCount:I

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 405
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 406
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 407
    const-string v5, "certCountForAlias"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 409
    iput-boolean v2, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    if-nez v1, :cond_6

    .line 414
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->applyGoldAnimalCert(I)V

    goto :goto_2

    .line 418
    :cond_5
    iput-boolean v2, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 421
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v2, "queryTreeForExchange err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 371
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 373
    const-string p0, "treeItems"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 376
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->TAG:Ljava/lang/String;

    const-string v0, "queryTreeItemsForExchange err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 99
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u751f\u6001\u4fdd\u62a4:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 19

    move-object/from16 v0, p0

    .line 73
    new-instance v1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 74
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v3, 0x0

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "cooperateWater"

    const-string v6, "\u5408\u79cd | \u6d47\u6c34"

    invoke-direct {v2, v5, v6, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWater:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 75
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda0;-><init>()V

    const-string v12, "\u8bf7\u586b\u5199\u6d47\u6c34\u514b\u6570(\u6bcf\u65e5)"

    const-string v8, "cooperateWaterList"

    const-string v9, "\u5408\u79cd | \u65e5\u6d47\u6c34\u91cf\u5217\u8868"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWaterList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 76
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v17, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda0;

    invoke-direct/range {v17 .. v17}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda0;-><init>()V

    const-string v18, "\u8bf7\u586b\u5199\u6d47\u6c34\u514b\u6570(\u4e0a\u9650\u603b\u91cf)"

    const-string v14, "cooperateWaterTotalLimitList"

    const-string v15, "\u5408\u79cd | \u603b\u6d47\u6c34\u91cf\u5217\u8868"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWaterTotalLimitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 77
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "PK\u8d5b | \u4fdd\u62a4\u53e4\u6811"

    const-string v6, "protectAncientMinNum"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAncientMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 78
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ProtectType;->nickNames:[Ljava/lang/String;

    const-string v6, "protectMarathonType"

    const-string v7, "\u78b3\u4e2d\u548c | \u9a6c\u62c9\u677e"

    invoke-direct {v2, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 79
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda1;-><init>()V

    const-string v13, "\u8bf7\u586b\u5199\u52a9\u529b\u80fd\u91cf\u514b\u6570(\u4e0a\u9650\u603b\u91cf)"

    const-string v9, "protectMarathonList"

    const-string v10, "\u78b3\u4e2d\u548c | \u9a6c\u62c9\u677e\u5217\u8868"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 80
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ProtectType;->nickNames:[Ljava/lang/String;

    const-string v6, "protectNewAncientTreeType"

    const-string v7, "\u78b3\u4e2d\u548c | \u53e4\u6811\u533b\u751f"

    invoke-direct {v2, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 81
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda2;

    invoke-direct {v12}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda2;-><init>()V

    const-string v13, "\u8bf7\u586b\u5199\u52a9\u529b\u80fd\u91cf\u514b\u6570(\u4e0a\u9650\u603b\u91cf)"

    const-string v9, "protectNewAncientTreeList"

    const-string v10, "\u78b3\u4e2d\u548c | \u53e4\u6811\u533b\u751f\u5217\u8868"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 82
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4fdd\u62a4\u68ee\u6797 | \u690d\u6811"

    const-string v5, "protectTree"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectTree:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 83
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda3;-><init>()V

    const-string v11, "\u8bf7\u586b\u5199\u4fdd\u62a4\u6b21\u6570(\u4e0a\u9650\u603b\u91cf)"

    const-string v7, "protectTreeList"

    const-string v8, "\u4fdd\u62a4\u68ee\u6797 | \u690d\u6811\u5217\u8868"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectTreeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 84
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4fdd\u62a4\u52a8\u7269 | \u4fdd\u62a4\u5730"

    const-string v5, "protectReserve"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserve:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 85
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda4;-><init>()V

    const-string v11, "\u8bf7\u586b\u5199\u4fdd\u62a4\u6b21\u6570(\u6bcf\u65e5)"

    const-string v7, "reserveList"

    const-string v8, "\u4fdd\u62a4\u52a8\u7269 | \u4fdd\u62a4\u5730\u5217\u8868"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 86
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4fdd\u62a4\u5730 | \u6700\u5c11\u4fdd\u62a4"

    const-string v5, "protectReserveMinNum"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 87
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "protectReserveNum"

    const-string v6, "\u4fdd\u62a4\u5730 |\u6700\u5c11\u4fdd\u62a4\u4e0b\u9650"

    invoke-direct {v2, v5, v6, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 88
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u4fdd\u62a4\u52a8\u7269 | \u62a4\u6797\u5458"

    const-string v6, "protectAnimal"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 89
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda5;-><init>()V

    const-string v12, "\u8bf7\u9009\u62e9\u9700\u8981\u70b9\u4eae\u7684\u62a4\u6797\u5458"

    const-string v8, "protectAnimalList"

    const-string v9, "\u4fdd\u62a4\u52a8\u7269 | \u62a4\u6797\u5458\u5217\u8868"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAnimalList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 90
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v5, "\u4fdd\u62a4\u6d77\u6d0b | \u6d77\u6ee9\u6700\u5c11\u4fdd\u62a4"

    const-string v6, "protectBeachMinNum"

    invoke-direct {v2, v6, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 91
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v5, "\u4fdd\u62a4\u6d77\u6d0b |\u6d77\u6ee9\u4fdd\u62a4\u4e0b\u9650"

    const-string v6, "protectBeachNum"

    invoke-direct {v2, v6, v5, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 92
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4fdd\u62a4\u6d77\u6d0b | \u6d77\u6ee9"

    const-string v5, "protectBeach"

    invoke-direct {v2, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeach:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 93
    new-instance v2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda6;

    invoke-direct {v10}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$$ExternalSyntheticLambda6;-><init>()V

    const-string v11, "\u8bf7\u586b\u5199\u4fdd\u62a4\u6b21\u6570(\u4e0a\u9650\u603b\u91cf)"

    const-string v7, "protectOceanList"

    const-string v8, "\u4fdd\u62a4\u6d77\u6d0b | \u6d77\u6ee9\u5217\u8868"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v1
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 47
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "\u4fdd\u62a4"

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 108
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWater:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->cooperateWater()V

    .line 112
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAncientMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAncientMinNum()V

    .line 116
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectMarathonType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectNewAncientTreeType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectCarbon()V

    .line 119
    :cond_3
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectTree:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectTree()V

    .line 122
    :cond_4
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserve:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserve()V

    .line 126
    :cond_5
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectReserveMinNum(I)V

    .line 130
    :cond_6
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAnimal:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectAnimal()V

    .line 134
    :cond_7
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachMinNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachNum:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeachMinNum(I)V

    .line 138
    :cond_8
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeach:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->protectBeach()V

    :cond_9
    return-void
.end method
