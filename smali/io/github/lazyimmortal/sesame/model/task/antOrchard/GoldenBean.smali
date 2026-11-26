.class public Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;
.super Ljava/lang/Object;
.source "GoldenBean.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoldenBean"

.field private static final TASK_ID_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_TYPE_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->TASK_TYPE_BLACKLIST:Ljava/util/Set;

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->TASK_ID_BLACKLIST:Ljava/util/Set;

    .line 58
    const-string v2, "GAME_ZH"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "KUAISHOU"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v2, "XIANSHANGZHIFU"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v2, "XIANXIAZHIFU"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v2, "YUEBAO"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v2, "XIAOXIDINGYUE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v2, "WAKUANG"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "MANURE_EXCHANGE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGrabbedIds(Ljava/util/Set;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 593
    :cond_0
    :try_start_0
    const-string v0, "grabbedItemIds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 595
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 596
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 120
    const-string p0, "null"

    return-object p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "...(\u622a\u65ad)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static collectFloatingBeans()V
    .locals 8

    .line 131
    const-string v0, "floatingBeans"

    const-string v1, "GoldenBean"

    :try_start_0
    const-string v2, "\"FLOATING_BEANS\""

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->sync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 136
    :cond_0
    const-string v2, "data"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 137
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_6

    .line 141
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 147
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 151
    :cond_3
    const-string v5, "assetId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 155
    :cond_4
    const-string v6, "outBizTypeDesc"

    const-string v7, "\u6d6e\u52a8\u91d1\u8c46"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v7, "beanCount"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 157
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->collect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {v1, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u91d1\u8c46\u593a\u5b9d\ud83e\uded8\u6d6e\u52a8\u91d1\u8c46["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]#\u83b7\u5f97["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u91d1\u8c46]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v4, 0x1f4

    .line 163
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 167
    const-string v2, "collectFloatingBeans err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private static dbg(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u91d1\u8c46\u8c03\u8bd5\uff5c"

    .line 880
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private doTaskList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Set;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 644
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_12

    .line 646
    :try_start_0
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    move-object/from16 v8, p3

    move/from16 v21, v11

    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_d

    .line 651
    :cond_1
    const-string v1, "sceneCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 652
    const-string v1, "taskId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 653
    const-string v1, "taskStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    const-string v2, "rightsTimes"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 655
    const-string v2, "rightsTimesLimit"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 656
    const-string v2, "taskDisplayConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_2

    move-object v4, v13

    goto :goto_3

    .line 657
    :cond_2
    const-string v2, "title"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v4, v2

    .line 659
    :goto_3
    const-string v15, "desc"

    const-string v3, ""

    if-nez v14, :cond_3

    move-object v2, v3

    goto :goto_4

    :cond_3
    :try_start_1
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-nez v14, :cond_4

    move-object/from16 v18, v3

    goto :goto_5

    .line 660
    :cond_4
    const-string v10, "targetUrl"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    .line 663
    :goto_5
    const-string v10, "FINISHED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "COMPLETED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "TO_RECEIVE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 664
    :cond_5
    invoke-direct {v7, v12, v13, v4, v9}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->goldenBeansReceiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-gt v5, v6, :cond_6

    goto :goto_1

    .line 672
    :cond_6
    const-string v10, "TODO"

    if-eqz v14, :cond_8

    :try_start_2
    const-string v8, "GAME_ZH"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v21, v11

    :try_start_3
    const-string v11, "type"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 674
    const-string v8, "GoldenBeansTaskList"

    invoke-static {v4, v2, v8}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_6
    move-object/from16 v8, p3

    goto/16 :goto_2

    .line 677
    :cond_7
    invoke-static {v13, v14, v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->handleGameTaskByReport(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_9

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v21, v11

    :goto_7
    move-object/from16 v8, p3

    goto/16 :goto_b

    :cond_8
    move/from16 v21, v11

    :cond_9
    move-object/from16 v8, p3

    .line 682
    :try_start_4
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 683
    new-instance v3, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v15, "GoldenBeansTaskList"

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v3, v13}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    .line 686
    invoke-virtual {v1, v6, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "taskRequire"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v11, 0x0

    .line 687
    :try_start_5
    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "taskProgress"

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "taskPlayType"

    const-string v3, "taskProdPlayType"

    .line 688
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "taskMode"

    .line 689
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "babafarm"

    .line 691
    invoke-virtual {v0, v12, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "20260803.01"

    .line 692
    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto/16 :goto_d

    :cond_a
    const/4 v11, 0x0

    .line 695
    const-string v0, "RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_d

    .line 700
    :cond_b
    const-string v0, "GOLDEN_BEAN_TASK_CHANGYONGFANGWEN"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 701
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->handleChangYongFangWen(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 704
    :cond_c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v16, 0x1f4

    if-nez v0, :cond_e

    if-le v5, v6, :cond_d

    goto :goto_8

    .line 718
    :cond_d
    invoke-static/range {v16 .. v17}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V

    goto :goto_d

    .line 706
    :cond_e
    :goto_8
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v0

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v0, :cond_11

    if-nez v14, :cond_f

    move-object/from16 v18, v3

    goto :goto_a

    .line 709
    :cond_f
    invoke-virtual {v14, v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    .line 710
    :goto_a
    invoke-static {v6, v5, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v20, v3

    move-object v3, v13

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v19

    .line 708
    invoke-direct/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->goldenBeansFinishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_d

    :cond_10
    move-object/from16 v2, v22

    .line 713
    invoke-direct {v7, v12, v13, v2, v9}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->goldenBeansReceiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 714
    invoke-static/range {v16 .. v17}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v10, v10, 0x1

    move-object v4, v2

    move/from16 v6, v18

    move-object/from16 v3, v20

    move/from16 v5, v23

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v21, v11

    :goto_b
    const/4 v11, 0x0

    .line 720
    :goto_c
    const-string v1, "GoldenBean"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v8, p1

    move v11, v0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method private static exchangeManure(Lorg/json/JSONObject;II)V
    .locals 11

    .line 437
    const-string v0, "remainQuota"

    const-string v1, "GoldenBean"

    .line 0
    const-string v2, "#\u4eca\u65e5\u5269\u4f59\u989d\u5ea6["

    const-string v3, "\u91d1\u8c46\u593a\u5b9d\ud83d\udcb0\u80a5\u6599\u6362\u91d1\u8c46#\u6d88\u8017["

    const-string v4, "\u4eca\u65e5\u5df2\u5151"

    if-nez p0, :cond_0

    return-void

    .line 441
    :cond_0
    :try_start_0
    const-string v5, "farmOpened"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "pageOpened"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 446
    :cond_1
    const-string v5, "effectiveExchangeManure"

    const-string v7, "currentManure"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 447
    const-string v7, "minExchangeAmount"

    const/16 v9, 0x320

    invoke-virtual {p0, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 448
    invoke-virtual {p0, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    sub-int/2addr v5, p1

    .line 456
    const-string p1, "FARM"

    if-lez p2, :cond_4

    .line 457
    :try_start_1
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->getGoldenBeanExchangeCountToday(Ljava/lang/String;)I

    move-result v8

    sub-int v10, p2, v8

    if-gtz v10, :cond_3

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u80a5\u6599\u8fbe\u4e0a\u9650"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u8df3\u8fc7\u6362\u91d1\u8c46"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-le v5, v10, :cond_4

    move v5, v10

    :cond_4
    if-le v5, v9, :cond_5

    goto :goto_0

    :cond_5
    move v9, v5

    :goto_0
    if-ge v9, v7, :cond_6

    return-void

    .line 476
    :cond_6
    invoke-static {v9}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->manureExchange(I)Ljava/lang/String;

    move-result-object p2

    .line 477
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 482
    :cond_7
    const-string p2, "manureCost"

    invoke-virtual {v4, p2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 483
    const-string v5, "beanReward"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 485
    const-string v5, "beanDelta"

    int-to-long v6, p2

    int-to-long v8, p0

    mul-long v6, v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-lez p2, :cond_8

    .line 487
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Status;->goldenBeanExchangeToday(Ljava/lang/String;I)V

    :cond_8
    const/4 p0, -0x1

    .line 489
    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u80a5\u6599]\u83b7\u5f97["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\u91d1\u8c46]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p0, :cond_9

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_9
    const-string p0, ""

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_a
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 494
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static extractNumber(Ljava/lang/String;)I
    .locals 1

    .line 276
    :try_start_0
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static fortuneDraw(Lorg/json/JSONObject;)V
    .locals 7

    .line 392
    const-string v0, "GoldenBean::fortuneDraw"

    .line 0
    const-string v1, "["

    const-string v2, "\u91d1\u8c46\u593a\u5b9d\ud83d\udd2e\u6c42\u7b7e\u593a\u5b9d#"

    .line 392
    const-string v3, "GoldenBean"

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v5, "todayDrawn"

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 397
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->fortuneDraw()Ljava/lang/String;

    move-result-object p0

    .line 402
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    const-string p0, "resultCode"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 405
    const-string v6, "SUCCESS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "100"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultDesc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "memo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 407
    const-string v6, "\u5df2\u62bd"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\u5df2\u5b8c\u6210"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\u5df2\u9886"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 408
    :cond_2
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_3
    invoke-static {v3, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    return-void

    .line 415
    :cond_4
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 416
    const-string p0, "beanDelta"

    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 418
    const-string v0, "fortuneType"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    const-string v4, ""

    if-eqz v0, :cond_5

    .line 420
    :try_start_1
    const-string v5, "typeName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 422
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u83b7\u5f97["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u91d1\u8c46]"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 425
    :goto_2
    invoke-static {v3, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static gameCenter(Lorg/json/JSONObject;)V
    .locals 10

    .line 802
    const-string v0, "GoldenBean"

    :try_start_0
    const-string v1, "showGameCenter"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 805
    :cond_0
    const-string v1, "gameCenterDrawRightsCount"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, p0, 0x5

    :goto_0
    if-lez p0, :cond_8

    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_8

    .line 812
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->drawGameCenterAward(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 816
    const-string p0, "gameCenterDrawAwardList"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 818
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 819
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 820
    const-string v8, "GOLDEN_BEAN"

    const-string v9, "awardType"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 821
    const-string v8, "awardCount"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v6, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 825
    :cond_4
    const-string p0, "gameCenterDrawRights"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    const-string v1, "quotaCanUse"

    if-nez p0, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    :goto_2
    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    .line 828
    :cond_6
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 829
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7838\u51fa\u91d1\u8c46\ud83c\udf96\ufe0f"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u8c46[\u5269\u86cb"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u4e2a]#["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    .line 830
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p0, v5

    goto :goto_4

    :cond_7
    add-int/lit8 p0, p0, -0x1

    :goto_4
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 837
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method private static getTodayAwardCount(Lorg/json/JSONObject;)I
    .locals 5

    const/16 v0, 0x64

    .line 373
    :try_start_0
    const-string v1, "signList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 375
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 376
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 377
    const-string v4, "today"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const-string p0, "awardCount"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method private goldenBeansFinishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 728
    const-string p4, "GoldenBean"

    .line 0
    const-string v0, "\u519c\u573a\u91d1\u8c46\ud83e\uddfe\u5b8c\u6210\u4efb\u52a1["

    const/4 v1, 0x0

    .line 728
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 729
    const-string p1, "GoldenBeansTaskList"

    invoke-static {p1, p3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 731
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->isGoldenBeanTaskClosed(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 734
    :cond_0
    invoke-static {p4, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 739
    const-string p2, "goldenBeansFinishTask err:"

    invoke-static {p4, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {p4, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method private goldenBeansReceiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 747
    const-string v0, "GoldenBean"

    .line 0
    const-string v1, "\u519c\u573a\u91d1\u8c46\ud83c\udf81\u9886\u53d6\u5956\u52b1["

    const/4 v2, 0x0

    .line 747
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 748
    const-string p1, "GoldenBeansTaskList"

    invoke-static {p1, p3, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 750
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->isGoldenBeanTaskClosed(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    .line 753
    :cond_0
    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 754
    const-string p1, "incAwardCount"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]#\u83b7\u5f97"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 759
    const-string p2, "goldenBeansReceiveTaskAward err:"

    invoke-static {v0, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v2
.end method

.method private static handleChangYongFangWen(Ljava/lang/String;)V
    .locals 5

    .line 218
    const-string v0, "GoldenBean::changYongFangWen"

    const-string v1, "GoldenBean"

    .line 0
    const-string v2, "\u91d1\u8c46\u593a\u5b9d\ud83c\udfe0\u5e38\u7528\u6765\u8bbf["

    .line 218
    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->indexFromHome()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const-string v3, "receptionAwardCount"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u83b7\u5f97["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u91d1\u8c46]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 230
    const-string v0, "handleChangYongFangWen err:"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static handleGameTaskByReport(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    const-string p1, "GoldenBean::game_"

    const/4 v0, 0x0

    .line 241
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 246
    :cond_0
    const-string v1, "\u5bf9\u5bf9\u78b0\u4e50\u56ed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 248
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->extractNumber(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 249
    :cond_1
    const-string v1, "\u68ee\u6797\u5c0f\u8f66\u8f66"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 251
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->extractNumber(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 252
    :cond_2
    const-string v1, "\u68ee\u6797\u6551\u63f4\u961f"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 254
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->extractNumber(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 261
    :goto_0
    invoke-virtual {v1, p2, v3}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->report(Ljava/lang/String;I)V

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    return v2

    .line 255
    :cond_3
    const-string p0, "\u519c\u573a\u4e0a\u8f66\u8f66"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "\u91d1\u8c46\u4e50\u56ed"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2

    :catchall_0
    move-exception p0

    .line 264
    const-string p1, "handleGameTaskByReport err:"

    const-string p2, "GoldenBean"

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p2, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static isGoldenBeanTaskClosed(Lorg/json/JSONObject;)Z
    .locals 3

    .line 767
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "isSuccess"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorMsg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorMessage"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resultDesc"

    .line 771
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "memo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 772
    const-string v0, "\u5df2\u5b8c\u7ed3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5df2\u5b8c\u6210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5df2\u9886"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private static marketingPopup()V
    .locals 8

    .line 178
    const-string v0, "marketingPopupTask"

    const-string v1, "GoldenBean"

    const-string v2, "\u91d1\u8c46\u593a\u5b9d\u23eb\u9650\u65f6\u52a0\u91cf["

    const-string v3, "GoldenBean::popup_"

    :try_start_0
    const-string v4, "\"MARKETING_POPUP\""

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->sync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v1, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 183
    :cond_0
    const-string v4, "data"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 184
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 186
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_5

    .line 188
    const-string v0, "TODO"

    const-string v4, "taskStatus"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 191
    :cond_2
    const-string v0, "taskId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 195
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 196
    const-string v3, "taskDisplayConfig"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const-string v4, "\u9650\u65f6\u52a0\u91cf"

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v6, "title"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    :goto_0
    const-string v3, "MARKETING_POPUP_CLICKED"

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->trigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v6, 0x1f4

    .line 200
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V

    .line 201
    const-string v3, "sceneCode"

    const-string v6, "GOLDEN_BEAN_MASTER_TASK"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {v1, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]#\u83b7\u5f97["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "incAwardCount"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u91d1\u8c46]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 207
    const-string v2, "marketingPopup err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static miner()V
    .locals 22

    .line 504
    const-string v0, "progress"

    const-string v1, "taskProgress"

    const-string v2, "currentLevel"

    const-string v3, "GoldenBean"

    const-string v4, "GoldenBean::minerDone"

    :try_start_0
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->minerIndex()Ljava/lang/String;

    move-result-object v5

    .line 508
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-static {v3, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 513
    :cond_1
    const-string v5, "minerInfo"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 518
    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 519
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 520
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    const-string v8, "remainingTimes"

    const/4 v9, 0x0

    if-nez v7, :cond_3

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :goto_0
    const-string v11, "canGrab"

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7, v11, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-lez v10, :cond_e

    if-eqz v7, :cond_e

    if-nez v6, :cond_5

    goto/16 :goto_7

    .line 535
    :cond_5
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    const-string v13, "currentLevelIndex"

    if-nez v5, :cond_6

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 537
    :goto_2
    invoke-static {v12, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->addGrabbedIds(Ljava/util/Set;Lorg/json/JSONObject;)V

    add-int/lit8 v5, v10, 0xa

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    :goto_3
    if-lez v10, :cond_c

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    add-int/lit8 v18, v5, -0x1

    if-lez v5, :cond_c

    .line 541
    const-string v5, "items"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v12}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->pickBestBean(Lorg/json/JSONArray;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_6

    .line 545
    :cond_7
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v9, "BEAN"

    invoke-static {v9, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->minerGrab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-static {v3, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-wide/16 v20, 0x1f4

    if-nez v5, :cond_8

    .line 549
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V

    :goto_4
    move/from16 v5, v18

    const/4 v9, 0x0

    goto :goto_3

    .line 552
    :cond_8
    const-string v5, "baseReward"

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "extraReward"

    invoke-virtual {v9, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-long v5, v5

    add-long/2addr v15, v5

    add-int/lit8 v17, v17, 0x1

    .line 556
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 557
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 558
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    .line 562
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 563
    invoke-virtual {v7, v11, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v5, :cond_a

    move v9, v14

    goto :goto_5

    .line 565
    :cond_a
    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v9, v19

    :goto_5
    if-eq v9, v14, :cond_b

    .line 568
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 569
    invoke-static {v12, v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->addGrabbedIds(Ljava/util/Set;Lorg/json/JSONObject;)V

    move v14, v9

    .line 571
    :cond_b
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sleep(J)V

    goto :goto_4

    :cond_c
    :goto_6
    move-wide v0, v15

    move/from16 v2, v17

    if-gtz v10, :cond_d

    .line 574
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    :cond_d
    if-lez v2, :cond_10

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u91d1\u8c46\u593a\u5b9d\u26cf\ufe0f\u91d1\u732b\u77ff\u5de5#\u4e0b\u94a9["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21]\u83b7\u5f97["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u8c46]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    :goto_7
    if-gtz v10, :cond_f

    .line 526
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    .line 581
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_8
    return-void
.end method

.method private static parseTaskType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 781
    :try_start_0
    const-string v0, "spmExtend"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 783
    const-string v1, "iepTaskTracer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    const-string v1, "taskType:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x9

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7e

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 788
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    .line 793
    :catchall_0
    :cond_1
    const-string v0, "taskId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pickBestBean(Lorg/json/JSONArray;Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 615
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 616
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 620
    :cond_1
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEAN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    const-string v5, "itemId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 624
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 627
    :cond_3
    const-string v6, "beanValue"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v3, :cond_4

    move v3, v4

    move-object v0, v5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static playGame()V
    .locals 4

    .line 849
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->queryGameCenterList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 850
    const-string v1, "gameCenterDrawRights"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    .line 852
    const-string v3, "usedQuota"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 853
    const-string v3, "quotaLimit"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 857
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const-string v1, "\u91d1\u8c46\u4e50\u56ed"

    invoke-virtual {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->report(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 861
    const-string v1, "GoldenBean"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static sign(Lorg/json/JSONObject;)V
    .locals 4

    .line 341
    const-string v0, "GoldenBean"

    .line 0
    const-string v1, "\u91d1\u8c46\u593a\u5b9d\ud83c\udf81\u6bcf\u65e5\u7b7e\u5230#\u83b7\u5f97"

    if-nez p0, :cond_0

    return-void

    .line 345
    :cond_0
    :try_start_0
    const-string v2, "todaySigned"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 349
    :cond_1
    const-string v2, "currentSignKey"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 354
    :cond_2
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 360
    :cond_3
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->getTodayAwardCount(Lorg/json/JSONObject;)I

    move-result p0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u91d1\u8c46"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 364
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static sleep(J)V
    .locals 0

    .line 867
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private static summary(Lorg/json/JSONObject;)V
    .locals 6

    .line 295
    const-string v0, "sproutInfo"

    .line 296
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const-string v2, "beanDelta"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    .line 301
    const-string v1, "goldenBeanSproutInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 311
    :cond_1
    const-string v1, "jarInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const v2, 0x1869f

    if-eqz v1, :cond_2

    .line 315
    const-string v4, "currentProgress"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 316
    const-string v5, "jarCapacity"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 317
    const-string v5, "jarCount"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 318
    const-string v5, "jarFull"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 321
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 323
    const-string v1, "pendingBeans"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 325
    :cond_3
    const-string v0, "taskAwardToReceive"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    sub-int/2addr v2, v4

    .line 326
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public run(ZLjava/util/Set;ZZII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII)V"
        }
    .end annotation

    .line 79
    const-string v0, "farmTaskList"

    const-string v1, "taskList"

    const-string v2, "GoldenBean"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->index()Ljava/lang/String;

    move-result-object v3

    .line 80
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->summary(Lorg/json/JSONObject;)V

    .line 87
    const-string v3, "signInfo"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->sign(Lorg/json/JSONObject;)V

    .line 88
    const-string v3, "fortuneDrawInfo"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->fortuneDraw(Lorg/json/JSONObject;)V

    .line 89
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->collectFloatingBeans()V

    .line 90
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->miner()V

    if-eqz p1, :cond_2

    .line 93
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->marketingPopup()V

    .line 95
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "\u91d1\u8c46"

    invoke-direct {p0, p1, v1, p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->doTaskList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Set;)V

    .line 98
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "\u80a5\u6599"

    invoke-direct {p0, p1, v0, p2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->doTaskList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 103
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->gameCenter(Lorg/json/JSONObject;)V

    .line 104
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->playGame()V

    :cond_3
    if-eqz p4, :cond_4

    .line 107
    const-string p1, "manureExchangeInfo"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, p5, p6}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBean;->exchangeManure(Lorg/json/JSONObject;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 111
    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
