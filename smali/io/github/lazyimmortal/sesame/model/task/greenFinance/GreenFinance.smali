.class public Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "GreenFinance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GreenFinance"


# instance fields
.field private greenFinanceDonation:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinanceLsbg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinanceLscg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinanceLswl:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinanceLsxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinancePointFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private greenFinanceWdxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private batchSelfCollect(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca\u6536\u96c6\u83b7\u5f97"

    .line 132
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->batchSelfCollect(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    .line 134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    const-string p1, "success"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    const-string p1, "result"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "totalCollectPoint"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".batchSelfCollect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resultDesc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 142
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v1, "batchSelfCollect err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private batchStealFriend()V
    .locals 17

    .line 371
    const-string v0, "collectFlag"

    const-string v1, "success"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canGreenFinancePointFriend()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    :try_start_1
    iget-object v3, v2, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinancePointFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v4, 0x0

    .line 377
    :goto_0
    :try_start_2
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryRankingList(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    .line 378
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 379
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    const-string v0, "\u7eff\u8272\u7ecf\u8425\ud83d\ude4b\uff0c\u597d\u53cb\u91d1\u5e01\u5de1\u67e5\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 384
    :cond_1
    const-string v4, "result"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 385
    const-string v5, "lastPage"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    const-string v0, "\u7eff\u8272\u7ecf\u8425\ud83d\ude4b\uff0c\u597d\u53cb\u91d1\u5e01\u5de1\u67e5\u5b8c\u6210"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->greenFinancePointFriend()V

    return-void

    .line 390
    :cond_2
    const-string v5, "nextStartIndex"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 391
    const-string v6, "rankingList"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    .line 392
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 393
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 394
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 397
    :cond_3
    const-string v8, "uid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_3

    .line 401
    :cond_4
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryGuestIndexPoints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    .line 402
    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 403
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "resultDesc"

    if-nez v9, :cond_5

    .line 405
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".batchStealFriend.queryGuestIndexPoints"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 408
    :cond_5
    const-string v9, "result.pointDetailList"

    invoke-static {v12, v9}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPathObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    if-nez v9, :cond_6

    goto/16 :goto_3

    .line 412
    :cond_6
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v14, 0x0

    .line 413
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 414
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 415
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 416
    const-string v3, "bsnId"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 419
    :cond_8
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 422
    :cond_9
    invoke-static {v12, v8}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->batchSteal(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 424
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".batchStealFriend.batchSteal"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 429
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7eff\u8272\u7ecf\u8425\ud83e\udd29\u6536["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "nickName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "result.totalCollectPoint"

    .line 430
    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPath(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u91d1\u5e01"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_b
    move v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 433
    :try_start_4
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_c
    move-object/from16 v2, p0

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    .line 438
    :goto_5
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v3, "batchStealFriend err:"

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private behaviorTick()V
    .locals 5

    .line 183
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLsxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x5dc

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 184
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 185
    const-string v0, "lsxd"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->doTick(Ljava/lang/String;)V

    .line 186
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 189
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLscg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 191
    const-string v0, "lscg"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->doTick(Ljava/lang/String;)V

    .line 192
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 195
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLswl:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 197
    const-string v0, "lswl"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->doTick(Ljava/lang/String;)V

    .line 198
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 201
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLsbg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 203
    const-string v0, "lsbg"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->doTick(Ljava/lang/String;)V

    .line 204
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 207
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceWdxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 209
    const-string v0, "wdxd"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->doTick(Ljava/lang/String;)V

    .line 210
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :cond_4
    return-void
.end method

.method private calculateDeductions(II)[I
    .locals 5

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 453
    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1

    :cond_0
    int-to-double v1, p1

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    div-double/2addr v1, v3

    .line 456
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/lit16 v1, p2, 0xc8

    sub-int v1, p1, v1

    .line 460
    rem-int/lit8 v2, v1, 0x64

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x63

    .line 462
    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x64

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v2, 0xc8

    :cond_2
    if-ge v2, v1, :cond_3

    sub-int/2addr p1, v2

    .line 469
    div-int/lit16 p2, p1, 0xc8

    .line 471
    :cond_3
    filled-new-array {p2, v2}, [I

    move-result-object p1

    return-object p1
.end method

.method private doTick(Ljava/lang/String;)V
    .locals 9

    .line 221
    const-string v0, "success"

    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryUserTickItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".doTick.queryUserTickItem"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resultDesc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 229
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 230
    const-string v4, "Y"

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    const-string v4, "behaviorCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->submitTick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    .line 234
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 235
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "title"

    const-string v7, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca["

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 237
    :try_start_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v8, "result.result"

    invoke-static {v5, v8}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPath(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 241
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u6253\u5361\u6210\u529f"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u6253\u5361\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 245
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v1, "doTick err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private donation()V
    .locals 13

    .line 254
    const-string v0, "]"

    const-string v1, "success"

    .line 0
    const-string v2, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca1\u5929\u5185\u8fc7\u671f\u7684\u91d1\u5e01["

    .line 254
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceDonation:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x1

    .line 258
    :try_start_0
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryExpireMcaPoint(J)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 259
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 260
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "resultDesc"

    if-nez v3, :cond_1

    .line 262
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".donation.queryExpireMcaPoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_1
    const-string v3, "result.expirePoint.amount"

    invoke-static {v6, v3}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPath(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "-?\\d+(\\.\\d+)?"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 269
    :cond_2
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v3, v8, v10

    if-gtz v3, :cond_3

    return-void

    .line 274
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryAllDonationProjectNew()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".donation.queryAllDonationProjectNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_4
    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 283
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 284
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 285
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "mcaDonationProjectResult.[0]"

    invoke-static {v6, v10}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPathObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    if-nez v6, :cond_5

    goto :goto_1

    .line 290
    :cond_5
    const-string v10, "projectId"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_1

    .line 294
    :cond_6
    const-string v11, "projectName"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    double-to-int v2, v8

    .line 296
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->calculateDeductions(II)[I

    move-result-object v2

    .line 297
    const-string v5, "200"

    const/4 v6, 0x0

    .line 298
    :goto_2
    aget v8, v2, v4

    if-ge v6, v8, :cond_b

    .line 299
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 300
    invoke-virtual {v3, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 301
    aget v10, v2, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v6, v10, :cond_8

    .line 302
    aget v5, v2, v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    :cond_8
    invoke-static {v8, v5}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->donation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    .line 305
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 306
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".donation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca\u6210\u529f\u6350\u52a9["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u91d1\u5e01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 314
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v2, "donation err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method private prizes()V
    .locals 9

    .line 324
    const-string v0, "success"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canGreenFinancePrizesMap()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 327
    :cond_0
    const-string v1, "CP14664674"

    .line 328
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->queryPrizes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "resultDesc"

    if-nez v2, :cond_1

    .line 331
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".prizes.queryPrizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_1
    const-string v2, "result.prizes"

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPathObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 336
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 337
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 338
    const-string v6, "bizTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 341
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 342
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getWeekNumber(Ljava/util/Date;)I

    move-result v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getWeekNumber(Ljava/util/Date;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 344
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->greenFinancePrizesMap()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->campTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".prizes.campTrigger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_4
    const-string v0, "result.prizes.[0]"

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPathObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    return-void

    .line 359
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7eff\u8272\u7ecf\u8425\ud83c\udf6c\u8bc4\u7ea7\u5956\u54c1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "prizeName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "price"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 361
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v2, "prizes err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private signIn(Ljava/lang/String;)V
    .locals 4

    .line 154
    const-string v0, "success"

    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->signInQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "resultDesc"

    if-nez v1, :cond_0

    .line 157
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".signIn.signInQuery"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_0
    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 161
    const-string v2, "isTodaySignin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 164
    :cond_1
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->signInTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 165
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    const-string p1, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca\u7b7e\u5230\u6210\u529f"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".signIn.signInTrigger"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 173
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v1, "signIn err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 64
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u7eff\u8272\u7ecf\u8425:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 5

    .line 51
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 52
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "greenFinanceLsxd"

    const-string v4, "\u6253\u5361 | \u7eff\u8272\u884c\u52a8"

    invoke-direct {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLsxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 53
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6253\u5361 | \u7eff\u8272\u91c7\u8d2d"

    const-string v4, "greenFinanceLscg"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLscg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 54
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6253\u5361 | \u7eff\u8272\u529e\u516c"

    const-string v4, "greenFinanceLsbg"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLsbg:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 55
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6253\u5361 | \u7eff\u8272\u9500\u552e"

    const-string v4, "greenFinanceWdxd"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceWdxd:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 56
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6253\u5361 | \u7eff\u8272\u7269\u6d41"

    const-string v4, "greenFinanceLswl"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceLswl:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 57
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6536\u53d6 | \u597d\u53cb\u91d1\u5e01"

    const-string v4, "greenFinancePointFriend"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinancePointFriend:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 58
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6350\u52a9 | \u5feb\u8fc7\u671f\u91d1\u5e01"

    const-string v4, "greenFinanceDonation"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->greenFinanceDonation:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 46
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "\u7ecf\u8425"

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 73
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->greenFinanceIndex()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v2, "resultDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    const-string v1, "greenFinanceSigned"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v0, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca\u672a\u5f00\u901a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    const-string v1, "mcaGreenLeafResult"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    const-string v1, "greenLeafList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 87
    const-string v1, ""

    .line 88
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 90
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 91
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->batchSelfCollect(Lorg/json/JSONArray;)V

    .line 96
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    const-string v5, "bsnId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 100
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->batchSelfCollect(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 103
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v2, "index err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_5
    :goto_3
    const-string v0, "PLAY102632271"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->signIn(Ljava/lang/String;)V

    .line 109
    const-string v0, "PLAY102232206"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->signIn(Ljava/lang/String;)V

    .line 111
    const-string v0, "0836"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isNowAfterOrCompareTimeStr(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->behaviorTick()V

    .line 115
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->batchStealFriend()V

    .line 118
    :cond_6
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->donation()V

    .line 120
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->prizes()V

    .line 122
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinance;->TAG:Ljava/lang/String;

    const-string v1, "\u7eff\u8272\u7ecf\u8425\ud83d\udcca"

    const-string v2, "AP13159535"

    invoke-static {v2, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/greenFinance/GreenFinanceRpcCall;->doTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 123
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    return-void
.end method
