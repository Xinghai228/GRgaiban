.class public Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;
.super Ljava/lang/Object;
.source "ForestChouChouLe.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ForestChouChouLe"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private confirmShareRecall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 347
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1, p2, p3, p4}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->confirmShareRecall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    const-string p1, "desc"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 350
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    const-string p3, "confirmShareRecall err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const-string p1, "FALSE end"

    return-object p1
.end method

.method private receiveHuntTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udf96\ufe0f["

    .line 318
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "task_entry"

    invoke-static {v2, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->receiveTaskAwardopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u83b7\u5f97\u62bd\u5956*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "incAwardCount"

    const/4 p3, 0x0

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 323
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    const-string p3, "receiveHuntTaskAward err:"

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private shareComponentRecall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 330
    const-string v0, "inviterInfoVo"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->shareComponentRecall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 332
    const-string p1, "\u89e3\u6790shareID\u5931\u8d25"

    return-object p1

    .line 334
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 335
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 336
    const-string p2, "userId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 339
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    const-string v0, "shareComponentRecall err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :cond_1
    const-string p1, "\u89e3\u6790userID\u5931\u8d25"

    return-object p1
.end method


# virtual methods
.method DoForestHuntHelp(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 268
    const-string v0, "::"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 272
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-static {p4}, Lio/github/lazyimmortal/sesame/util/Status;->getforestHuntHelpToday(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1c

    const/16 v6, 0x14

    if-le v4, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    const-string v4, "FOREST_NORMAL_DRAW_SHARE"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4O7FEYDgn0xx0OehP5jt9YINZOkxgPDkvWvkwkQXSDbZ77VUJcjlcZsjGio6MsAtmwxkxkx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_5

    const-string v4, "FOREST_ACTIVITY_DRAW_SHARE"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4O7FEYDgn0xx0OehP5jt9bxgpIW643h4FnWRjs9uZzng77VUJcjlcZsjGio6MsAtmwxkxkx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    :goto_1
    invoke-direct {p0, p3, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->shareComponentRecall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    const-string v6, "\u89e3\u6790userID\u5931\u8d25"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    :cond_2
    const-wide/16 v6, 0x5dc

    .line 293
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 295
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_3

    goto/16 :goto_0

    .line 298
    :cond_3
    invoke-direct {p0, p2, p3, v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->confirmShareRecall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 301
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68ee\u6797\u5bfb\u5b9d\ud83d\udc4a\u52a9\u529b["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    .line 308
    invoke-static {p4, v3, v1}, Lio/github/lazyimmortal/sesame/util/Status;->forestHuntHelpToday(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udfb0\ufe0f\u5b58\u5728\u9519\u8befusershareUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 311
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method chouChouLe(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->load()V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, "ANTFOREST_NORMAL_DRAW"

    const-string v3, "task_entry"

    invoke-static {v1, v2, v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->enterDrawActivityopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 38
    :cond_0
    const-string v1, "drawSceneGroups"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    const-string v3, "drawActivity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 43
    const-string v3, "activityId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    const-string v3, "sceneCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 47
    invoke-virtual/range {v4 .. v13}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->chouChouLescene(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method chouChouLescene(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 55
    const-string v5, "userVitalityInfoVO"

    const-string v6, "*"

    const-string v7, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udf81\u9886\u53d6["

    const-string v8, "_DRAW_SHARE"

    const-string v9, "blance"

    const-string v10, "drawAsset"

    const-string v11, "FOREST_ACTIVITY_DRAW_SHARE"

    const-string v12, "FOREST_NORMAL_DRAW_SHARE"

    const-string v13, "task_entry"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    .line 57
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_TASK"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->listTaskopengreen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    sget-object v14, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v14, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v15, "]"

    if-eqz v14, :cond_19

    .line 79
    :try_start_1
    const-string v14, "taskInfoList"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .line 80
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_18

    .line 81
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v17, v7

    .line 82
    const-string v7, "taskBaseInfo"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v18, v9

    .line 83
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v19, v10

    const-string v10, "bizInfo"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v26, v5

    .line 86
    const-string v5, "sceneCode"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v11

    .line 87
    const-string v11, "taskStatus"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v28, v12

    .line 88
    const-string v12, "taskType"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 89
    const-string v3, "taskRights"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    move/from16 v29, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 90
    :cond_0
    const-string v3, "rightsTimes"

    move/from16 v29, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v6, v3

    :goto_1
    const/4 v3, 0x1

    if-nez v0, :cond_1

    move-object/from16 v30, v14

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v30, v14

    .line 91
    const-string v14, "rightsTimesLimit"

    invoke-virtual {v0, v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    :goto_2
    const-string v14, "FINISHED"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "]\u83b7\u5f97\u62bd\u5956*"

    const-string v1, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udf96\ufe0f["

    if-eqz v14, :cond_4

    const-wide/16 v21, 0x7d0

    .line 95
    :try_start_2
    invoke-static/range {v21 .. v22}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 96
    new-instance v14, Lorg/json/JSONObject;

    invoke-static {v13, v5, v12}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->receiveTaskAwardopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v2, v14}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v2, "incAwardCount"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    :cond_2
    if-gt v0, v6, :cond_4

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v6, p4

    :goto_4
    move-object/from16 v20, v8

    :cond_3
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_4
    move-object/from16 v2, p9

    .line 108
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 109
    new-instance v1, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v21, "AntForestHuntTaskList"

    const-string v3, "desc"

    .line 110
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "taskJumpUrl"

    .line 112
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "targetUrl"

    .line 113
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v1

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v25}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v6, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskRequire"

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "taskProgress"

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskPlayType"

    const-string v3, "taskProdPlayType"

    .line 117
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "taskMode"

    .line 118
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    const-string v1, "ADBASICLIB"

    .line 120
    invoke-virtual {v0, v5, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->VERSION:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto/16 :goto_3

    .line 125
    :cond_5
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 127
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/Status;->getforestHuntHelpToday(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 128
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->size()I

    move-result v14

    if-ge v9, v14, :cond_6

    .line 129
    new-instance v9, Lorg/json/JSONObject;

    const-string v14, "prodPlayParam"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v7, "p2pSceneCode"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udfb0\ufe0f\u6267\u884c["

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v1

    const-string v1, "]\u52a9\u529b\u597d\u53cb["

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v2, v21

    .line 132
    :try_start_3
    invoke-virtual {v1, v4, v9, v7, v12}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->DoForestHuntHelp(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p2

    move-object/from16 v14, p3

    move-object v2, v1

    move-object/from16 v1, p0

    .line 137
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v20, 0x1

    add-int/lit8 v7, v7, -0x1

    move/from16 v14, v29

    if-ne v14, v7, :cond_c

    .line 138
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v29, v14

    const-string v14, "](\u8585\u7f8a\u6bdb\uff0c\u5982\u679c\u52a9\u529b\u7ed3\u679c\u4e0d\u8fd4\u56de\u6210\u529f\u8bf7\u5173\u95ed\u914d\u7f6e\u9879)"

    if-eqz v7, :cond_9

    :try_start_4
    const-string v7, "ANTFOREST_NORMAL_DRAW"

    move/from16 v21, v6

    move-object/from16 v6, p4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    invoke-static/range {v28 .. v28}, Lio/github/lazyimmortal/sesame/util/Status;->getforestHuntHelpToday(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v22, v0

    .line 140
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udfb0\ufe0f\u6267\u884c[\u666e\u901a\u573a\u666f]\u52a9\u529b\u597d\u53cb["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 143
    const-string v0, "FOREST_NORMAL_20250829_SHARE"

    move-object/from16 v7, v28

    invoke-virtual {v1, v4, v9, v0, v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->DoForestHuntHelp(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move/from16 v22, v0

    :cond_8
    move-object/from16 v7, v28

    goto :goto_7

    :cond_9
    move/from16 v22, v0

    move/from16 v21, v6

    move-object/from16 v7, v28

    move-object/from16 v6, p4

    .line 147
    :goto_7
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ANTFOREST_ACTIVITY_DRAW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 148
    invoke-static/range {v27 .. v27}, Lio/github/lazyimmortal/sesame/util/Status;->getforestHuntHelpToday(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v28, v7

    .line 149
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v0, v7, :cond_b

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68ee\u6797\u5bfb\u5b9d\ud83c\udfb0\ufe0f\u6267\u884c[\u6d3b\u52a8\u573a\u666f]\u52a9\u529b\u597d\u53cb["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 152
    const-string v0, "FOREST_NORMAL_20251024_SHARE"

    move-object/from16 v7, v27

    invoke-virtual {v1, v4, v9, v0, v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->DoForestHuntHelp(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v28, v7

    :cond_b
    move-object/from16 v7, v27

    goto :goto_8

    :cond_c
    move/from16 v22, v0

    move/from16 v21, v6

    move/from16 v29, v14

    move-object/from16 v7, v27

    move-object/from16 v6, p4

    .line 158
    :goto_8
    const-string v0, "NORMAL_DRAW_EXCHANGE_VITALITY"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v14, "TODO"

    if-eqz v0, :cond_11

    :try_start_5
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_11

    .line 162
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->queryVitalityStoreIndex()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v11, :cond_d

    return-void

    :cond_d
    move-object/from16 v11, v26

    .line 166
    :try_start_7
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    return-void

    .line 169
    :cond_e
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    const-string v14, "totalVitalityAmount"

    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v11, v26

    .line 172
    :goto_9
    :try_start_8
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    const-string v14, "chouChouLesceneEXCHANGE err:"

    invoke-static {v4, v14}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_a
    const/16 v4, 0x14

    if-ge v0, v4, :cond_f

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u68ee\u6797\u5bfb\u5b9d\ud83e\uddfe\u6d3b\u529b\u503c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e0d\u80fd\u5151\u6362#["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_b

    .line 180
    :cond_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v9, v6, v13, v5, v12}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->exchangeTimesFromTaskopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 182
    const-string v4, "times"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    :cond_10
    :goto_b
    move-object/from16 v27, v7

    move-object/from16 v20, v8

    move-object/from16 v26, v11

    goto/16 :goto_5

    :cond_11
    move-object/from16 v2, v26

    .line 190
    const-string v0, "FOREST_NORMAL_DRAW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const-string v3, "\u68ee\u6797\u5bfb\u5b9d\ud83e\uddfe\u5b8c\u6210["

    const-string v4, "AntForestHuntTaskList"

    const-wide/16 v23, 0x3e8

    if-nez v0, :cond_12

    :try_start_9
    const-string v0, "FOREST_ACTIVITY_DRAW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 192
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    move/from16 v0, v21

    move/from16 v11, v22

    const/4 v14, 0x1

    goto :goto_c

    :cond_13
    move/from16 v0, v21

    move/from16 v11, v22

    invoke-static {v0, v11}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v14

    :goto_c
    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v14, :cond_16

    .line 194
    invoke-static/range {v23 .. v24}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    move-object/from16 v27, v7

    .line 197
    const-string v7, "XLIGHT"

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 198
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v20, v8

    invoke-static {v12, v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->finishTask4Chouchoule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    move-object/from16 v20, v8

    .line 200
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v12, v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->finishTaskopengreen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    :goto_e
    invoke-static {v4, v10, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 204
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_5

    .line 207
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v0, v11, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 210
    invoke-direct {v1, v5, v12, v10}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->receiveHuntTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, v20

    move-object/from16 v7, v27

    goto :goto_d

    :cond_16
    move-object/from16 v27, v7

    goto/16 :goto_4

    :cond_17
    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-object/from16 v20, v8

    move/from16 v0, v21

    move/from16 v2, v22

    .line 214
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    invoke-static/range {v23 .. v24}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 217
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v12, v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->finishTaskopengreen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {v4, v10, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 220
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 222
    invoke-static {v0, v2, v3}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 223
    invoke-direct {v1, v5, v12, v10}, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->receiveHuntTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v0, v29, 0x1

    move-object/from16 v4, p6

    move-object v3, v6

    move-object v2, v9

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v5, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v14, v30

    move v6, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_12

    :cond_18
    move-object v6, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object v9, v2

    goto :goto_10

    :cond_19
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object v9, v2

    move-object v6, v3

    .line 230
    :goto_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 231
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v9, v6, v13}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->enterDrawActivityopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v2, v19

    .line 233
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v3, v18

    .line 234
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_11
    if-lez v0, :cond_1c

    .line 237
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v6, v13, v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->drawopengreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ForestChouChouLe;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 239
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    const-string v5, "prizeVO"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 242
    const-string v5, "prizeName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    const-string v7, "prizeNum"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v16

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]#["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 246
    const-string v7, "g\u80fd\u91cf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 247
    sget-object v5, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->addData(Lio/github/lazyimmortal/sesame/util/Statistics$DataType;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_1a
    move-object/from16 v17, v8

    move-object/from16 v16, v10

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v10, v16

    move-object/from16 v8, v17

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_11

    :catch_1
    move-exception v0

    .line 259
    :goto_12
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1c
    return-void
.end method
