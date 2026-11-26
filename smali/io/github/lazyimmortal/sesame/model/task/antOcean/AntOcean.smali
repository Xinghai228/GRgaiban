.class public Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AntOcean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$CleanOceanType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AntOcean"


# instance fields
.field private AntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AutoAntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoAntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private antfishAutoTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private antfishEnable:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private cleanOceanList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private exchangeProject:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private exchangeUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private queryTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private replica:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private useUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;


# direct methods
.method public static synthetic $r8$lambda$17a0v5vBWVe9_B9214li4_DzoJ0(Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;)V
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryHomePage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private static answerQuestion()Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 991
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 993
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 995
    :cond_0
    const-string v3, "answered"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    const-string v1, "\u95ee\u9898\u5df2\u7ecf\u88ab\u56de\u7b54\u8fc7\uff0c\u8df3\u8fc7\u7b54\u9898\u6d41\u7a0b"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 997
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 999
    :cond_1
    const-string v3, "questionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    const-string v4, "options"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1001
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    .line 1002
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1003
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->submitAnswer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1004
    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    const-string v1, "\u6d77\u6d0b\u7b54\u9898\u6210\u529f"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1006
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1009
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v3, "answerQuestion err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1012
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private antfishFinishTask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\u6478\u9c7c\u4efb\u52a1\ud83e\uddfe\u5b8c\u6210["

    .line 1554
    :try_start_0
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishFinishTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1555
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1556
    const-string p2, "AntOceanFishBlackList"

    invoke-static {p2, p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1557
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1558
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1562
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "antfishFinishTask err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private antfishHandleTasks()V
    .locals 17

    move-object/from16 v1, p0

    .line 1477
    const-string v0, "taskMode"

    const-string v2, "ANTAIFISH"

    const-string v3, ""

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishListTask()Ljava/lang/String;

    move-result-object v4

    .line 1478
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1480
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 1484
    :cond_0
    const-string v4, "taskInfoList"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1485
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1492
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1493
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    .line 1497
    :cond_2
    const-string v8, "taskBaseInfo"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_3

    goto/16 :goto_2

    .line 1500
    :cond_3
    const-string v9, "taskType"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1501
    const-string v10, "taskStatus"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1502
    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1505
    new-instance v11, Lorg/json/JSONObject;

    const-string v12, "bizInfo"

    const-string v13, "{}"

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1506
    const-string v12, "taskTitle"

    const-string v13, "\u672a\u77e5\u4efb\u52a1"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1509
    const-string v12, "taskRights"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1510
    const-string v12, "awardCount"

    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 1513
    :goto_1
    const-string v12, "FINISHED"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "]\u83b7\u5f97\u6478\u9c7c\u6b21\u6570*"

    const-string v15, "\u6478\u9c7c\u4efb\u52a1\ud83c\udf96\ufe0f\u9886\u53d6["

    if-eqz v12, :cond_5

    .line 1514
    :try_start_1
    invoke-direct {v1, v9}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishReceiveTaskAward(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1520
    :cond_5
    iget-object v12, v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1521
    new-instance v7, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v12, "AntOceanFishBlackList"

    const-string v14, "desc"

    const-string v15, "taskDesc"

    .line 1522
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "taskJumpUrl"

    .line 1524
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "targetUrl"

    .line 1525
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1524
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v11, v7

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v7, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v7, "taskPlayType"

    const-string v9, "taskProdPlayType"

    .line 1527
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    .line 1528
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    .line 1529
    invoke-virtual {v5, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    .line 1530
    invoke-virtual {v5, v2, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    const-string v7, "20241203"

    .line 1531
    invoke-virtual {v5, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v5

    .line 1521
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto :goto_2

    .line 1535
    :cond_6
    const-string v5, "TODO"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1536
    invoke-direct {v1, v13, v9}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishFinishTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1537
    invoke-direct {v1, v9}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishReceiveTaskAward(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1486
    :cond_8
    :goto_3
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u6682\u65e0\u4efb\u52a1"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1544
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v3, "antfishHandleTasks err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method private antfishLikeFish()V
    .locals 16

    .line 1376
    const-string v0, "appraiseRewardRemainNum"

    const-string v1, ""

    const-string v2, "Ocean::ANTFISH_LIKE_LIMIT"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x23

    if-ge v4, v6, :cond_12

    .line 1385
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishQueryAppraiseList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1386
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v8, -0x1

    .line 1389
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    .line 1390
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1393
    :cond_2
    const-string v9, "fishList"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 1394
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1399
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_10

    if-ge v4, v6, :cond_10

    .line 1400
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_4

    goto/16 :goto_5

    .line 1404
    :cond_4
    const-string v12, "appraiseVO"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 1405
    const-string v13, "canAppraise"

    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_5

    goto/16 :goto_5

    .line 1409
    :cond_5
    const-string v13, "imageId"

    invoke-virtual {v11, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1410
    const-string v14, "seasonId"

    invoke-virtual {v11, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1411
    const-string v15, "receiveAppraiseUserId"

    invoke-virtual {v12, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1412
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1413
    const-string v12, "userId"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1415
    :cond_6
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_5

    .line 1419
    :cond_7
    new-instance v10, Lorg/json/JSONObject;

    invoke-static {v13, v14, v12}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishAppraise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1420
    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1421
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u70b9\u8d5e\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_6

    .line 1424
    :cond_8
    const-string v11, "appraiseRewardList"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-eqz v11, :cond_c

    .line 1426
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_c

    .line 1427
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_9

    goto :goto_4

    .line 1431
    :cond_9
    const-string v15, "extInfo"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_3

    .line 1432
    :cond_a
    const-string v15, "popup"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v14, :cond_b

    .line 1435
    :try_start_1
    const-string v15, "rightsNums"

    const-string v3, "0"

    invoke-virtual {v14, v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v13, v3

    :catch_0
    :cond_b
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_c
    add-int/2addr v5, v13

    add-int/lit8 v4, v4, 0x1

    if-nez v13, :cond_d

    .line 1445
    :try_start_2
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    goto :goto_6

    .line 1448
    :cond_d
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    .line 1449
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    const-wide/16 v10, 0x3e8

    .line 1452
    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    const/4 v10, 0x1

    :cond_f
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    if-nez v10, :cond_11

    goto :goto_6

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_12
    :goto_6
    if-lez v4, :cond_13

    if-nez v5, :cond_13

    .line 1459
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u4eca\u65e5\u70b9\u8d5e\u5df2\u8fbe\u4e0a\u9650\uff0c\u672c\u8f6e\u70b9\u8d5e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\u65e0\u5956\u52b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    if-lez v4, :cond_14

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u70b9\u8d5e["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]\u6b21\u5171\u83b7\u5f97"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "g\u80fd\u91cf#["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_8

    .line 1464
    :cond_14
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u4eca\u65e5\u65e0\u53ef\u70b9\u8d5e\u6b21\u6570"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 1467
    :goto_7
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishLikeFish err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method private antfishQueryHomePage()V
    .locals 19

    .line 1238
    const-string v0, "nickName"

    .line 0
    const-string v1, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u5f53\u524d\u9c7c\u72b6\u6001["

    const-string v2, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f["

    .line 1238
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishHomepage()Ljava/lang/String;

    move-result-object v3

    .line 1239
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1241
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1253
    const-string v3, "currentSeasonInfo"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    const-string v5, ""

    if-eqz v3, :cond_1

    .line 1255
    :try_start_1
    const-string v6, "seasonId"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1257
    const-string v7, "extInfo"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1259
    const-string v7, "seasonTitle"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    goto :goto_0

    :cond_1
    move-object v3, v5

    move-object v6, v3

    .line 1264
    :goto_0
    const-string v7, "energy"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1268
    const-string v9, "project"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1270
    const-string v10, "projectName"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1271
    const-string v11, "region"

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v5

    move-object v10, v9

    .line 1274
    :goto_1
    const-string v11, "myFish"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    const-string v11, "]("

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    .line 1276
    :try_start_2
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1277
    const-string v14, "touchEnergy"

    invoke-virtual {v4, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 1280
    const-string v15, "currentLevel"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1282
    const-string v12, "name"

    invoke-virtual {v15, v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    move-object v12, v5

    .line 1284
    :goto_2
    const-string v15, "interactVO"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1286
    const-string v15, "touchTotal"

    move-object/from16 v16, v12

    const/4 v12, 0x0

    invoke-virtual {v4, v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 1287
    const-string v12, "fishInteractStatus"

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v13

    .line 1288
    const-string v13, "remainTouchChance"

    move/from16 v18, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 1291
    const-string v14, "owner"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1293
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    const-string v14, "userId"

    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1295
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u4e3b\u4eba["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_4
    move v14, v13

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move/from16 v1, v18

    goto :goto_4

    :cond_5
    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    const/4 v14, 0x0

    move-object v12, v5

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move/from16 v1, v18

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    move-object v0, v5

    move-object v12, v0

    const/4 v1, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 1301
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5f53\u524d\u8d5b\u5b63["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\u9879\u76ee["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\u7528\u6237["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u9c7c\u72b6\u6001["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u7b49\u7ea7["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u53ef\u6478\u9c7c"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u7d2f\u8ba1\u6478"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u7d2f\u8ba1\u83b7\u5f97\u80fd\u91cf"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g(\u603b"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "g)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    .line 1303
    const-string v0, "CAPTURED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1304
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->rescueFish()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 1308
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishQueryHomePage err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private antfishQueryStatus()Z
    .locals 5

    .line 1214
    const-string v0, "DEFAULT_AI_FISH"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishStatus()Ljava/lang/String;

    move-result-object v2

    .line 1215
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1217
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1218
    const-string v2, "fishStatus"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    const-string v4, "level"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1220
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->drawFish()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1227
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v3, "antfishQueryStatus err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method private antfishReceiveTaskAward(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\u9886\u53d6\u6d77\u6d0b\u6478\u9c7c["

    const/4 v1, 0x0

    .line 1573
    :try_start_0
    const-string v2, "Ocean::ANTAIFISH_TaskAward"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 1576
    :cond_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishReceiveTaskAward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1577
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1578
    const-string p1, "success"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "desc"

    const-string v3, "\u65e0\u8fd4\u56de\u7ed3\u679c"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u4eca\u5929\u4e0d\u518d\u6267\u884c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1580
    const-string p1, "Ocean::ANTAIFISH_TaskAward_Limitid"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 1582
    :cond_1
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1586
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishReceiveTaskAward err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method private antfishRun()V
    .locals 3

    .line 1181
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishQueryStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1186
    :cond_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishQueryHomePage()V

    .line 1189
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishAutoTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishHandleTasks()V

    .line 1191
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishLikeFish()V

    .line 1195
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->touchfish()V

    .line 1198
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeProject:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeProject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1204
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishRun err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private autocleanOcean(Ljava/lang/String;)V
    .locals 9

    .line 399
    const-string v0, "Ocean"

    .line 0
    const-string v1, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u8e72\u6dfb\u52a0\u8e72\u70b9\u5728["

    const-string v2, "Ocean|"

    .line 399
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryHomePage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 403
    :cond_0
    const-string v4, "userInfoVO"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 404
    const-string v4, "canCleanLaterTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 406
    new-instance v6, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v7, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, p1, v0, v7, v4}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v6}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->hasChildTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;)V

    invoke-direct {v2, p1, v0, v4, v3}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)V

    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->addChildTask(Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;)Ljava/lang/Boolean;

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u6267\u884c\u6e05\u7406\u6d77\u6d0b#["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 413
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "queryHomePage err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkReward(Lorg/json/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 449
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 450
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 451
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    const-string v4, "attachRewardBOList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 453
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u83b7\u5f97["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u62fc\u56fe"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 456
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 457
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 458
    const-string v6, "count"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    :cond_1
    const-string v3, "unlock"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->combineFish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 470
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "checkReward err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private cleanFriendOcean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    .line 839
    const-string v0, "Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT"

    const-string v1, "resultDesc"

    .line 0
    const-string v2, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33"

    const-string v3, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5e2e\u52a9["

    const/4 v4, 0x0

    .line 839
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryFriendPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 840
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 841
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 843
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 846
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->cleanFriendOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 848
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\u4e0a\u9650"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 850
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 852
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 854
    :cond_3
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u6e05\u7406\u6d77\u57df"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 856
    const-string p1, "cleanRewardVOS"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 857
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->checkReward(Lorg/json/JSONArray;)V

    const/4 p1, 0x1

    .line 858
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 861
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "cleanFriendOcean err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 864
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private cleanFriendOcean(Lorg/json/JSONObject;)V
    .locals 3

    .line 816
    const-string v0, "canClean"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    :try_start_0
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 822
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 828
    :cond_2
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanFriendOcean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x3e8

    .line 829
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 832
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "cleanFriendOcean err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static cleanOcean(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 384
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->cleanOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 385
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const-string v2, "cleanRewardVOS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 387
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->checkReward(Lorg/json/JSONArray;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u6e05\u7406["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u6d77\u57df"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 392
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "cleanOcean err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static collectEnergy(Lorg/json/JSONArray;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 350
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 351
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 352
    const-string v3, "ocean"

    const-string v4, "channel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 355
    :cond_0
    const-string v3, "AVAILABLE"

    const-string v4, "collectStatus"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 357
    const-string v5, "userId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->collectEnergy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 359
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    const-string v3, "bubbles"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 362
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 363
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 365
    const-string v6, "collectedEnergy"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u6536\u53d6["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\u7684\u6d77\u6d0b\u80fd\u91cf#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 367
    sget-object v6, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/Statistics;->addData(Lio/github/lazyimmortal/sesame/util/Statistics$DataType;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 376
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "collectEnergy err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static collectReplicaAsset(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 507
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->collectReplicaAsset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const-string v1, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33[\u5b66\u4e60\u6d77\u6d0b\u79d1\u666e\u77e5\u8bc6]#\u83b7\u5f97[\u6f58\u591a\u62c9\u80fd\u91cf*1]"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 513
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "collectReplicaAsset err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static combineFish(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u8fce\u56de["

    .line 433
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->combineFish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 435
    const-string p0, "fishDetailVO"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 436
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 440
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->createSeaAreaExtraCollect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 442
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "combineFish err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static createSeaAreaExtraCollect()V
    .locals 5

    .line 588
    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5f00\u542f\u4e86\u795e\u79d8\u6d77\u57df#["

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->querySeaAreaDetailList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 589
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 593
    :cond_0
    const-string v3, "awardSeaAreaCanCreateExtraCollect"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->createSeaAreaExtraCollect()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    const-string v2, "seaAreaExtraCollectVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 603
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "createSeaAreaExtraCollect err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawFish()Z
    .locals 8

    .line 1316
    const-string v0, "\u5f00\u901a\u6478\u9c7c\ud83d\udc1f\u63d0\u4ea4\u753b\u9c7c\u6210\u529f"

    :try_start_0
    const-string v1, "https://mdn.alipayobjects.com/afts/img/JNVwTJAPzqMAAAAAQOAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v2, "https://mdn.alipayobjects.com/afts/img/ZK3FTK8eQ-IAAAAAQIAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v3, "https://mdn.alipayobjects.com/afts/img/Se_RQ7215tsAAAAAQQAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v4, "https://mdn.alipayobjects.com/afts/img/n8yQSYH-lvgAAAAAQGAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v5, "https://mdn.alipayobjects.com/afts/img/_rKKT6IJRWcAAAAAQKAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v6, "https://mdn.alipayobjects.com/afts/img/_zy6QaSffRMAAAAAQGAAAAgA9KBtAQJr/original?bz=ai_fish"

    const-string v7, "https://mdn.alipayobjects.com/afts/img/3tFWT43StnAAAAAAQHAAAAgA9KBtAQJr/original?bz=ai_fish"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/4 v4, 0x7

    int-to-double v4, v4

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 1320
    aget-object v1, v1, v2

    .line 1323
    const-string v2, "img/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const-string v3, "/original"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->drawFish(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1326
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1328
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 1330
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1334
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishFinishTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private exchangeProject()V
    .locals 8

    .line 1709
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryProjectDetail()Ljava/lang/String;

    move-result-object v0

    .line 1710
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1711
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\u67e5\u8be2\u8bc1\u4e66\u72b6\u6001\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1714
    :cond_0
    const-string v0, "project"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1716
    const-string v1, "phaseList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 1718
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1719
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1720
    const-string v3, "exchangeStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1721
    const-string v3, "levelNotEnough"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1724
    :cond_1
    const-string v3, "canExchange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1725
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->exchangeProject()Ljava/lang/String;

    move-result-object v2

    .line 1726
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1727
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1728
    const-string v2, "\u6d77\u6d0b\u6478\u9c7c\u8bc1\u4e66\u5151\u6362\u5931\u8d25"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 1730
    :cond_2
    const-string v2, "properties"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1731
    const-string v3, "protectContent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1732
    const-string v4, "releasePoint"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1733
    const-string v5, "certificateName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1734
    const-string v6, "region"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u5151\u6362\u8bc1\u4e66#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1741
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "exchangeProject err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static exchangeUniversalPiece(I)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5236\u4f5c[\u4e07\u80fd\u62fc\u56fe*"

    .line 1042
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->exchangeUniversalPiece(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1043
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1044
    const-string p0, "duplicatePieceNum"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1045
    const-string v2, "exchangeNum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#\u5269\u4f59[\u91cd\u590d\u62fc\u56fe*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1047
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1050
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "exchangeUniversalPiece error:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    .line 1053
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static exchangeUniversalPiece()V
    .locals 4

    .line 1019
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryOceanPropList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1020
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1024
    :cond_0
    const-string v1, "duplicatePieceNum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 1027
    div-int/lit8 v1, v0, 0xa

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1028
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeUniversalPiece(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 1031
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1035
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "exchangeUniversalPiece error:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private finishOceanTask(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11

    const/4 v0, 0x0

    .line 940
    :try_start_0
    const-string v1, "taskProgress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 943
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "bizInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 944
    const-string v2, "taskTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "taskType"

    const-string v10, "sceneCode"

    if-eqz v2, :cond_1

    .line 947
    :try_start_1
    new-instance p2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v4, "AntOceanAntiepTaskList"

    const-string v2, "desc"

    const-string v3, "taskDesc"

    .line 948
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "taskJumpUrl"

    .line 950
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "targetUrl"

    .line 951
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "taskStatus"

    const-string v2, "TODO"

    .line 951
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p2

    const-string v1, "rightsTimes"

    .line 953
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "rightsTimesLimit"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p2

    const-string v1, "taskPlayType"

    const-string v2, "taskProdPlayType"

    .line 954
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p2

    const-string v1, "taskMode"

    .line 955
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p2

    .line 956
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p2

    .line 957
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ANTFOCEAN"

    invoke-virtual {p2, p1, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p1

    const-string p2, "20241203"

    .line 958
    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object p1

    .line 947
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    .line 959
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 961
    :cond_1
    const-string v1, "\u6bcf\u65e5\u4efb\u52a1\uff1a\u7b54\u9898\u5b66\u6d77\u6d0b\u77e5\u8bc6"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    const-string v3, "]"

    const-string v4, "\u6d77\u6d0b\u4efb\u52a1\ud83e\uddfe\u5b8c\u6210["

    if-eqz v1, :cond_2

    .line 963
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->answerQuestion()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 965
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 970
    :cond_2
    const-string v1, "\u968f\u673a\u4efb\u52a1\uff1a"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u7eff\u8272\u4efb\u52a1\uff1a"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 971
    :cond_3
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 973
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 975
    const-string p1, "AntOceanAntiepTaskList"

    invoke-static {p1, v5, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 976
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p1, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 978
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 982
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v1, "finishOceanTask err:"

    invoke-static {p2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static initAntOceanAntiepTaskListMap(ZZZZ)V
    .locals 12

    .line 178
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->load()V

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    const-string v1, "\u968f\u673a\u4efb\u52a1\uff1a\u73a9\u4e00\u73a9\u5f97\u62fc\u56fe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "taskTitle"

    const-string v3, "bizInfo"

    const-string v5, "AntOcean"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_8

    .line 192
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryTaskList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v8, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 195
    const-string v8, "antOceanTaskVOList"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v8, 0x0

    .line 196
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 197
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 198
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    new-array v11, v6, [Lorg/json/JSONObject;

    aput-object v10, v11, v7

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 204
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->save()Z

    .line 205
    const-string p1, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u6d77\u6d0b\u666e\u901a\u4efb\u52a1\u5217\u8868"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p0, :cond_8

    .line 210
    sget-object p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 211
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 212
    const-string p1, "AntOceanAntiepTaskList"

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez p0, :cond_2

    return-void

    .line 218
    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_6

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 221
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 227
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 229
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u6d77\u6d0b\u666e\u901a\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_4

    .line 237
    :cond_7
    const-string p0, "\u795e\u5947\u6d77\u6d0b\u666e\u901a\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 243
    :cond_8
    :goto_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->load()V

    .line 245
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 246
    const-string p1, "\u73a9\u4e00\u73a9\u5411\u50f5\u5c38\u5f00\u70ae"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 251
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz p3, :cond_16

    .line 257
    new-instance p3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishListTask()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 261
    :cond_a
    const-string v0, "taskInfoList"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 262
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_a

    :cond_b
    const/4 v0, 0x0

    .line 265
    :goto_6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 266
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 268
    :cond_c
    const-string v4, "taskBaseInfo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_7

    .line 270
    :cond_d
    new-instance v4, Lorg/json/JSONObject;

    const-string v8, "{}"

    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-array v8, v6, [Lorg/json/JSONObject;

    aput-object v4, v8, v7

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 275
    :cond_e
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->save()Z

    .line 276
    const-string p3, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u6d77\u6d0b\u53bb\u6478\u9c7c\u4efb\u52a1\u5217\u8868"

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p2, :cond_16

    .line 280
    sget-object p2, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 281
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 282
    const-string p3, "AntOceanFishBlackList"

    invoke-virtual {p2, p3}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez p2, :cond_f

    return-void

    .line 288
    :cond_f
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-eqz p3, :cond_13

    .line 290
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8

    .line 297
    :cond_11
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 298
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 299
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 304
    :cond_13
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u6d77\u6d0b\u53bb\u6478\u9c7c\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_b

    .line 307
    :cond_14
    const-string p0, "\u6d77\u6d0b\u53bb\u6478\u9c7c\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :cond_15
    :goto_a
    return-void

    :catchall_0
    move-exception p0

    .line 312
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string p2, "initAntOceanAntiepTaskListMap err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_b
    return-void
.end method

.method private static ipOpenSurprise()V
    .locals 3

    .line 420
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->ipOpenSurprise()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "surpriseRewardVOS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->checkReward(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 426
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "ipOpenSurprise err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static isTargetTask(Ljava/lang/String;)Z
    .locals 1

    .line 869
    const-string v0, "DAOLIU_TAOJINBI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DAOLIU_NNYY"

    .line 870
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ANTOCEAN_TASK#DAOLIU_GUANGHUABEIBANGHAI"

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BUSINESS_LIGHTS01"

    .line 872
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DAOLIU_ELEMEGUOYUAN"

    .line 873
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ZHUANHUA_NONGCHANGYX"

    .line 874
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ZHUANHUA_HUIYUN_OZB"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static openWAIT_FOR_UNLOCK()V
    .locals 6

    .line 669
    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5f00\u542f\u4e86\u795e\u79d8\u6d77\u57df#["

    const-string v1, "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\""

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->querySeaAreaDetailList()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 670
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 674
    :cond_0
    const-string v4, "awardSeaAreaCanCreateExtraCollect"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    const-string v4, "alipay.antocean.ocean.h5.createSeaAreaExtraCollect"

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 679
    new-instance v4, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    const-string v1, "{}"

    :cond_1
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    const-string v1, "seaAreaExtraCollectVO"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 686
    :cond_2
    const-string v0, "seaAreaVOs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 688
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v1, "WAIT_FOR_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->repairSeaArea()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 693
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "querySeaAreaDetailList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private queryHomePage()V
    .locals 4

    .line 319
    const-string v0, "bubbleVOList"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->collectEnergy(Lorg/json/JSONArray;)V

    .line 328
    :cond_1
    const-string v0, "userInfoVO"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    const-string v1, "rubbishNumber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 330
    const-string v3, "userId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOcean(Ljava/lang/String;I)V

    .line 333
    const-string v1, "ipVO"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    const-string v1, "surprisePieceNum"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 337
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->ipOpenSurprise()V

    .line 341
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryMiscInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 343
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryHomePage err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static queryMiscInfo()V
    .locals 3

    .line 570
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryMiscInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 574
    :cond_0
    const-string v1, "miscHandlerVOMap"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 575
    const-string v1, "HOME_TIPS_REFRESH"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 576
    const-string v1, "fishCanBeCombined"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "canBeRepaired"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->querySeaAreaDetailList()V

    .line 579
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->switchOceanChapter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 581
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryMiscInfo err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static queryOceanPropList()V
    .locals 3

    .line 700
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryOceanPropList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 701
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->repairSeaArea()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 705
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryOceanPropList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private queryOceanStatus()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 159
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryOceanStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "opened"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->setValue(Ljava/lang/Object;)V

    .line 163
    const-string v1, "\u8bf7\u5148\u5f00\u542f\u795e\u5947\u6d77\u6d0b\uff0c\u5e76\u5b8c\u6210\u5f15\u5bfc\u6559\u7a0b"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 169
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v3, "queryOceanStatus err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static queryReplicaHome()V
    .locals 5

    .line 477
    const-string v0, "userCurrentPhaseVO"

    const-string v1, "userReplicaAssetVO"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryReplicaHome()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 484
    const-string v3, "canCollectAssetNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 485
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->collectReplicaAsset(I)V

    .line 488
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 490
    const-string v1, "phaseCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v3, "userReplicaInfoVO"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v3, "COMPLETED"

    const-string v4, "phaseStatus"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->unLockReplicaPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryReplicaTaskList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 499
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryReplicaHome err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static queryReplicaTaskList()V
    .locals 6

    .line 533
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryReplicaTaskList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 534
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 537
    :cond_0
    const-string v1, "antOceanTaskVOList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 539
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 540
    const-string v3, "taskStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 544
    :cond_1
    const-string v3, "taskType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "bizInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v2, "taskTitle"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->receiveReplicaTaskAward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 550
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryReplicaTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static querySeaAreaDetailList()V
    .locals 13

    .line 610
    const-string v0, "fishVO"

    const-string v1, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5f00\u542f\u4e86\u795e\u79d8\u6d77\u57df#["

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->querySeaAreaDetailList()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 611
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 615
    :cond_0
    const-string v4, "awardSeaAreaCanCreateExtraCollect"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    const-string v6, "seaAreaExtraCollectVO"

    if-eqz v4, :cond_1

    .line 617
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->createSeaAreaExtraCollect()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 624
    :cond_1
    const-string v1, "seaAreaNum"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 625
    const-string v3, "fixSeaAreaNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 626
    const-string v4, "currentSeaAreaIndex"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_2

    if-le v1, v3, :cond_2

    .line 628
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryOceanPropList()V

    .line 630
    :cond_2
    const-string v1, "seaAreaVOs"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 631
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 632
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 633
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v7, 0x0

    .line 634
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "id"

    const-string v10, "COMPLETED"

    const-string v11, "unlock"

    const-string v12, "status"

    if-ge v7, v8, :cond_4

    .line 635
    :try_start_2
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 636
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 637
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 638
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->combineFish(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 641
    :cond_4
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 642
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 643
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    const-string v7, "FINISHED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 645
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 646
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 647
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 648
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 649
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 650
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->combineFish(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 655
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 656
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 657
    const-string v4, "WAIT_FOR_UNLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 658
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->repairSeaArea()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 662
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "querySeaAreaDetailList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private queryTaskList()V
    .locals 13

    .line 881
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryTaskList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 882
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 885
    :cond_0
    const-string v1, "antOceanTaskVOList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 886
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 887
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 888
    const-string v4, "taskStatus"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 889
    const-string v5, "sceneCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    const-string v6, "taskType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 891
    new-instance v7, Lorg/json/JSONObject;

    const-string v8, "bizInfo"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 892
    const-string v8, "taskTitle"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 893
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 896
    :cond_1
    const-string v8, "rightsTimes"

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 897
    const-string v9, "rightsTimesLimit"

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 899
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 900
    invoke-static {v5, v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-gt v9, v8, :cond_2

    goto :goto_2

    .line 905
    :cond_2
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    .line 908
    invoke-static {v8, v9, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v11

    .line 907
    invoke-direct {p0, v3, v11}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->finishOceanTask(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x1f4

    .line 911
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 912
    invoke-static {v5, v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 916
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private queryUserRanking()V
    .locals 10

    .line 749
    const-string v0, "fillFlagVOList"

    const-string v1, "Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryUserRanking()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 750
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 756
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 757
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 758
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 759
    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    .line 760
    invoke-direct {p0, v6}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanFriendOcean(Lorg/json/JSONObject;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 764
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 765
    const-string v5, "allRankingList"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/16 v5, 0x14

    .line 766
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 767
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 768
    const-string v7, "userId"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 773
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 775
    rem-int/lit8 v6, v5, 0x14

    if-nez v6, :cond_4

    .line 776
    new-instance v6, Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->fillUserFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 777
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    return-void

    .line 780
    :cond_6
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 781
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 782
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 783
    iget-object v9, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_7

    .line 784
    invoke-direct {p0, v8}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanFriendOcean(Lorg/json/JSONObject;)V

    .line 785
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    return-void

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 790
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 793
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 794
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->fillUserFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 795
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 798
    :cond_b
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 799
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_d

    .line 800
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 801
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    .line 802
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanFriendOcean(Lorg/json/JSONObject;)V

    .line 803
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_c

    return-void

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 810
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "queryUserRanking err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method private static receiveReplicaTaskAward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u9886\u53d6["

    .line 557
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->receiveReplicaTaskAward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 558
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 559
    const-string p0, "incAwardCount"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u5956\u52b1#\u83b7\u5f97[\u6f58\u591a\u62c9\u80fd\u91cf*"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 563
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "receiveReplicaTaskAward err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u6d77\u6d0b\u4efb\u52a1\ud83c\udf96\ufe0f\u9886\u53d6["

    .line 924
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 p0, 0x1f4

    .line 925
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 928
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 929
    const-string p0, "incAwardCount"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u5956\u52b1#\u83b7\u5f97["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5757\u62fc\u56fe]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 933
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string p2, "receiveTaskAward err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private rescueFish()Z
    .locals 7

    const-string v0, "\u6478\u9c7c\u89e3\u6551\ud83d\udc1f\u89e3\u6551\u6210\u529f["

    const/4 v1, 0x0

    .line 1343
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->rescueFish()Ljava/lang/String;

    move-result-object v2

    .line 1344
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1345
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1347
    const-string v2, "myFish"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    const-string v3, "\u6478\u9c7c\u4efb\u52a1\ud83d\udc1f\u89e3\u6551\u6210\u529f"

    if-eqz v2, :cond_1

    .line 1349
    :try_start_1
    const-string v4, "interactVO"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1351
    const-string v3, "fishInteractStatus"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1352
    const-string v4, "remainTouchChance"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1353
    const-string v5, "touchTotal"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\u53ef\u6478\u9c7c\u6b21\u6570"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u7d2f\u8ba1\u6478\u9c7c"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1358
    :cond_0
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_1
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1366
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v3, "rescueFish err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method private static switchOceanChapter()V
    .locals 13

    .line 712
    const-string v0, "chapterCode"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryOceanChapterList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 713
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 716
    :cond_0
    const-string v2, "currentChapterCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    const-string v3, "userChapterDetailVOList"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 722
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 723
    const-string v9, "repairedSeaAreaNum"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 724
    const-string v10, "seaAreaNum"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 725
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-lt v9, v10, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    if-ge v9, v10, :cond_4

    .line 728
    const-string v9, "chapterOpen"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 731
    :cond_3
    const-string v3, "chapterName"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    .line 735
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 736
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->switchOceanChapter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 737
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u5207\u6362\u5230["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u7cfb\u5217"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 742
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "switchOceanChapter err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private touchfish()V
    .locals 22

    .line 1598
    const-string v0, "remainTouchChance"

    const-string v1, "interactVO"

    const-string v2, "myFish"

    const-string v3, "rightsNums"

    const-string v4, ""

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishHomepage()Ljava/lang/String;

    move-result-object v5

    .line 1599
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 1606
    :cond_0
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1608
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\u672a\u83b7\u53d6\u5230[\u6211\u7684\u9c7c\u4fe1\u606f]"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1613
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1615
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u672a\u83b7\u53d6\u5230\u4ea4\u4e92\u72b6\u6001\u4fe1\u606f"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v6, 0x0

    .line 1619
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v5, :cond_3

    return-void

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1631
    :goto_0
    const-string v9, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u83b7\u5f97"

    const-string v10, "g\u80fd\u91cf"

    if-lez v5, :cond_e

    .line 1632
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->antfishTouchfish()Ljava/lang/String;

    move-result-object v11

    .line 1633
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1635
    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1636
    const-string v0, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u6478\u9c7c\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 1643
    const-string v11, "touchType"

    invoke-virtual {v12, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1644
    const-string v13, "touchRewardList"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-eqz v13, :cond_c

    .line 1651
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v14, v6, :cond_c

    .line 1652
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    move/from16 v18, v5

    :goto_2
    move/from16 v19, v7

    goto :goto_3

    :cond_5
    move/from16 v18, v5

    .line 1655
    const-string v5, "extInfo"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v19, v7

    .line 1658
    const-string v7, "popup"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_7

    :goto_3
    move-object/from16 v21, v11

    move-object/from16 v20, v13

    goto/16 :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 1661
    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    add-int v15, v15, v20

    .line 1662
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v13

    const-string v13, "name"

    if-eqz v7, :cond_8

    .line 1663
    :try_start_2
    invoke-virtual {v5, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .line 1665
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1666
    const-string v7, "rewardType"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    .line 1670
    :cond_9
    const-string v6, "captureInfoVO"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1671
    const-string v7, "touchFish"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1672
    const-string v7, "nickName"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1673
    const-string v13, "userId"

    move-object/from16 v21, v11

    const-string v11, "\u672a\u77e5ID"

    invoke-virtual {v6, v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1674
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v7, v6

    .line 1675
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u6478\u5230\u4e86["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\u7684\u9c7c\u83b7\u5f97"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 1676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    move-object/from16 v21, v11

    .line 1678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 1679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    :goto_4
    add-int/2addr v8, v15

    .line 1683
    sget-object v5, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v5, v15}, Lio/github/lazyimmortal/sesame/util/Statistics;->addData(Lio/github/lazyimmortal/sesame/util/Statistics$DataType;I)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v18

    move/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v11, v21

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    move/from16 v18, v5

    move/from16 v19, v7

    .line 1687
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1689
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_d

    const/4 v6, 0x0

    .line 1691
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    move/from16 v5, v18

    :goto_6
    move/from16 v7, v19

    goto/16 :goto_0

    :cond_e
    :goto_7
    if-lez v7, :cond_f

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d77\u6d0b\u6478\u9c7c\ud83d\udc1f\u672c\u6b21\u5171\u6478\u9c7c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\u83b7\u5f97"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 1702
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "antfishDrawFish err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_8
    return-void
.end method

.method private static unLockReplicaPhase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u8fce\u56de["

    .line 520
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->unLockReplicaPhase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 521
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 522
    const-string p0, "currentPhaseInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "extInfo"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "name"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 526
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "unLockReplicaPhase err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static useUniversalPiece(Lorg/json/JSONArray;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1099
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-ge v1, p1, :cond_1

    .line 1100
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1101
    const-string v3, "pieces"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v3, p1, v1

    .line 1104
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece(Lorg/json/JSONObject;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1107
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "useUniversalPiece error:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method private static useUniversalPiece(Lorg/json/JSONObject;I)I
    .locals 9

    .line 1114
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 1116
    :try_start_0
    const-string v2, "order"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1117
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1118
    const-string v4, "pieces"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v4, 0x0

    .line 1119
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1120
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1121
    const-string v6, "num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    goto :goto_1

    .line 1124
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1125
    const-string v8, "assets"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1126
    const-string v8, "assetsNum"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1127
    const-string v7, "attachAssets"

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1128
    const-string v5, "propCode"

    const-string v7, "UNIVERSAL_PIECE"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1130
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1134
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {v0, v3, p1}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece(Lorg/json/JSONArray;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 p0, 0x3e8

    .line 1135
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 1139
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v0, "useUniversalPiece error:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return v1
.end method

.method private static useUniversalPiece(Lorg/json/JSONArray;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "\u795e\u5947\u6d77\u6d0b\ud83d\udc33\u4f7f\u7528[\u4e07\u80fd\u62fc\u56fe*"

    const/4 v1, 0x0

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1150
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->useUniversalPiece(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1151
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]\u8fce\u56de["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u5269\u4f59[\u4e07\u80fd\u62fc\u56fe*"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1154
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1157
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string p2, "useUniversalPiece error:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1160
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static useUniversalPiece()V
    .locals 10

    .line 1060
    const-string v0, "fishVOS"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "UNIVERSAL_PIECE"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryOceanPropList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1061
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1065
    :cond_0
    const-string v2, "oceanPropVOByTypeList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1067
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1068
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1069
    const-string v5, "holdsNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    if-lez v4, :cond_3

    if-eqz v6, :cond_3

    add-int/2addr v7, v5

    .line 1075
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOceanRpcCall;->queryFishList(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1077
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    invoke-static {v8, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    return-void

    .line 1081
    :cond_1
    const-string v8, "hasMore"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1083
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    return-void

    .line 1086
    :cond_2
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1087
    invoke-static {v6, v4}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece(Lorg/json/JSONArray;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v6

    move v6, v8

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1091
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "useUniversalPiece error:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 101
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u795e\u5947\u6d77\u6d0b:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 9

    .line 82
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 83
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "queryTaskList"

    const-string v5, "\u6d77\u6d0b\u4efb\u52a1"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 84
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "AutoAntOceanAntiepTaskList"

    const-string v6, "\u6d77\u6d0b\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    invoke-direct {v1, v5, v6, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AutoAntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 85
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "AntOceanAntiepTaskList"

    const-string v8, "\u6d77\u6d0b\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v1, v7, v8, v5, v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 86
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$CleanOceanType;->nickNames:[Ljava/lang/String;

    const-string v6, "cleanOceanType"

    const-string v7, "\u6e05\u7406\u6d77\u57df | \u52a8\u4f5c"

    invoke-direct {v1, v6, v7, v2, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 87
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$$ExternalSyntheticLambda3;-><init>()V

    const-string v6, "cleanOceanList"

    const-string v7, "\u6e05\u7406\u6d77\u57df | \u597d\u53cb\u5217\u8868"

    invoke-direct {v1, v6, v7, v2, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 88
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u4e07\u80fd\u62fc\u56fe | \u5236\u4f5c"

    const-string v5, "exchangeUniversalPiece"

    invoke-direct {v1, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 89
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u4e07\u80fd\u62fc\u56fe | \u4f7f\u7528"

    const-string v5, "useUniversalPiece"

    invoke-direct {v1, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 90
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u6f58\u591a\u62c9\u6d77\u57df"

    const-string v5, "replica"

    invoke-direct {v1, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->replica:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 91
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u6d77\u6d0b\u6478\u9c7c | \u5f00\u542f\u6478\u9c7c"

    const-string v5, "antfishEnable"

    invoke-direct {v1, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishEnable:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 92
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u6d77\u6d0b\u6478\u9c7c | \u6478\u9c7c\u4efb\u52a1"

    const-string v5, "antfishAutoTask"

    invoke-direct {v1, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishAutoTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 93
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u6d77\u6d0b\u6478\u9c7c | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    const-string v5, "AutoAntOceanFishBlackList"

    invoke-direct {v1, v5, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AutoAntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 94
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "AntOceanFishBlackList"

    const-string v6, "\u6478\u9c7c\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v1, v5, v6, v2, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 95
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u6d77\u6d0b\u6478\u9c7c | \u5151\u6362\u79d1\u5b66\u8bc1\u4e66"

    const-string v4, "exchangeProject"

    invoke-direct {v1, v4, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeProject:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 61
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "\u6d77\u6d0b"

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 111
    const-string v0, "BlackList::initAntOceanAntiep"

    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryOceanStatus()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AutoAntOceanAntiepTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->AutoAntOceanFishBlackList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishAutoTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->initAntOceanAntiepTaskListMap(ZZZZ)V

    .line 118
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryHomePage()V

    .line 123
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryTaskList()V

    .line 126
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->cleanOceanType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryUserRanking()V

    .line 129
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->exchangeUniversalPiece()V

    .line 132
    :cond_4
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->useUniversalPiece()V

    .line 137
    :cond_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->openWAIT_FOR_UNLOCK()V

    .line 139
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->replica:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->queryReplicaHome()V

    .line 144
    :cond_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->autocleanOcean(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishEnable:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->antfishRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 152
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;->TAG:Ljava/lang/String;

    const-string v2, "AntOcean.start.run err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-void
.end method
