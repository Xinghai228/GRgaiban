.class public Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;
.super Ljava/lang/Object;
.source "SesameAlchemy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SesameAlchemy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alchemy(ZZ)V
    .locals 5

    .line 110
    const-string v0, "SesameAlchemy::stageAward"

    const-string v1, "SesameAlchemy::timeLimited"

    const-string v2, "SesameAlchemy::alchemySign"

    const-wide/16 v3, 0x1f4

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 111
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->alchemySign()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 112
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 120
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    .line 121
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->timeLimitedTask()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 122
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 126
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->doAlchemyLoop()V

    :cond_4
    if-eqz p1, :cond_5

    .line 130
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    .line 131
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->claimStageAward()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 132
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 136
    :goto_1
    const-string p1, "alchemy err:"

    const-string v0, "SesameAlchemy"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static alchemySign()Z
    .locals 12

    .line 148
    const-string v0, "prize"

    const-string v1, "data"

    const-string v2, "alchemy"

    const-string v3, "SesameAlchemy"

    const-string v4, "\u829d\u9ebb\u70bc\u91d1\ud83d\udcc5\u7b7e\u5230#\u83b7\u5f97["

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->alchemyQueryCheckIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    .line 149
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 150
    invoke-static {v3, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    return v5

    .line 153
    :cond_0
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 154
    :cond_1
    const-string v9, "currentDateCheckInTaskVO"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    :goto_0
    const/4 v9, 0x1

    if-nez v6, :cond_2

    return v9

    .line 158
    :cond_2
    const-string v10, "status"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    const-string v11, "CAN_COMPLETE"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    return v9

    .line 162
    :cond_3
    const-string v10, "checkInDate"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    return v9

    .line 166
    :cond_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->zmCheckInCompleteTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 168
    invoke-static {v3, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 172
    const-string v2, "zmlNum"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "num"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 174
    const-string v0, "awardPoint"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 177
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v9

    :cond_8
    return v5

    :catchall_0
    move-exception v0

    .line 182
    const-string v1, "alchemySign err:"

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method private static claimStageAward()Z
    .locals 10

    .line 395
    const-string v0, "SesameAlchemy"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryEntryList()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    .line 396
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 397
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    return v1

    .line 400
    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 401
    :cond_1
    const-string v5, "entryList"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_0
    const/4 v5, 0x1

    if-nez v2, :cond_2

    return v5

    :cond_2
    const/4 v6, 0x0

    .line 405
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 406
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 407
    const-string v8, "ALCHEMY_STAGE_REWARD"

    const-string v9, "entryCode"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    .line 410
    :cond_3
    const-string v2, "nextDayAwardDTO"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 411
    const-string v6, "awardAvailable"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 414
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->claimAward()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 416
    invoke-static {v0, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u829d\u9ebb\u70bc\u91d1\ud83c\udfc6\u9636\u6bb5\u5956\u52b1#\u83b7\u5f97["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pointValue"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    return v5

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    return v5

    :catchall_0
    move-exception v2

    .line 423
    const-string v3, "claimStageAward err:"

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static doAlchemyLoop()V
    .locals 21

    .line 240
    const-string v0, "staminaCurrent"

    const-string v1, "alchemyNum"

    const-string v2, "data"

    const-string v3, "SesameAlchemy"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 241
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 242
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x0

    .line 249
    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 250
    const-string v9, "capReached"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    :cond_2
    if-gtz v8, :cond_3

    return-void

    :cond_3
    const/4 v9, -0x1

    .line 258
    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 259
    const-string v11, "staminaExhausted"

    invoke-virtual {v4, v11, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "\u4f53\u529b\u4e0d\u8db3#\u5269\u4f59\u4f53\u529b["

    if-nez v11, :cond_f

    if-nez v10, :cond_4

    goto/16 :goto_4

    .line 264
    :cond_4
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->useAlchemyItems()V

    .line 270
    const-string v11, "alchemyDailyCap"

    invoke-virtual {v4, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v13, v8, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    if-lez v8, :cond_c

    add-int/lit8 v20, v13, -0x1

    if-lez v13, :cond_c

    if-lez v9, :cond_5

    if-ltz v10, :cond_5

    if-ge v10, v9, :cond_5

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]#\u672c\u8f6e\u5df2\u70bc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21]\uff0c\u505c\u6b62"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 280
    :cond_5
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->alchemy()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 282
    invoke-static {v3, v13}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_2

    .line 285
    :cond_6
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 286
    const-string v13, "success"

    const/4 v5, 0x1

    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    if-lez v11, :cond_8

    .line 291
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    .line 292
    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    sub-int v6, v11, v13

    if-ltz v6, :cond_8

    if-ge v6, v8, :cond_8

    move v8, v6

    .line 298
    :cond_8
    const-string v6, "levelFull"

    const/4 v13, 0x0

    invoke-virtual {v7, v6, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    move-wide/from16 v11, v18

    const/4 v7, 0x1

    goto :goto_3

    .line 302
    :cond_9
    const-string v5, "goldNum"

    move v6, v11

    move-object v13, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v5, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v11, v18

    add-long v18, v11, v16

    add-int/lit8 v14, v14, 0x1

    .line 304
    const-string v5, "levelUp"

    const/4 v11, 0x0

    invoke-virtual {v7, v5, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v15, v15, 0x1

    :cond_a
    const/4 v5, -0x1

    add-int/2addr v8, v5

    .line 309
    const-string v12, "staminaUsedV2"

    if-lez v9, :cond_b

    goto :goto_1

    :cond_b
    const/4 v9, 0x5

    :goto_1
    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 310
    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move v11, v6

    move-object v12, v13

    move/from16 v13, v20

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    :goto_2
    move-wide/from16 v11, v18

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 313
    :goto_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 314
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 315
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 316
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :cond_d
    if-lez v14, :cond_e

    .line 319
    invoke-static {v4, v14, v11, v12, v15}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->summaryAlchemy(Lorg/json/JSONObject;IJI)V

    :cond_e
    if-eqz v7, :cond_10

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u6ee1\u7ea7#\u672c\u8f6e\u70bc\u91d1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21]\u540e\u505c\u6b62"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    :goto_4
    move-object v13, v12

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]\uff0c\u672c\u8f6e\u8df3\u8fc7\u70bc\u91d1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 325
    const-string v1, "doAlchemyLoop err:"

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_5
    return-void
.end method

.method private static doTaskList(Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 553
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 555
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 559
    :cond_1
    const-string v3, "sceneCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    const-string v4, "taskId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    const-string v5, "taskStatus"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 562
    const-string v6, "taskDisplayConfig"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    .line 563
    const-string v6, ""

    goto :goto_1

    :cond_2
    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 564
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    move-object v6, v4

    .line 569
    :cond_3
    const-string v7, "FINISHED"

    if-eqz p1, :cond_5

    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 570
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "COMPLETED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TO_RECEIVE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 571
    :cond_4
    invoke-static {v3, v4, v6}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 575
    :cond_5
    const-string v8, "RECEIVED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 578
    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 579
    invoke-static {v3, v4, v6}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 582
    :cond_7
    const-string v7, "TODO"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v7, 0x1f4

    if-eqz v5, :cond_a

    .line 590
    const-string v5, "rightsTimes"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 591
    const-string v9, "rightsTimesLimit"

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 592
    invoke-static {v5, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v9, :cond_9

    .line 596
    invoke-static {v5, v2, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v12

    .line 595
    invoke-static {v3, v4, v6, v12}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->finishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    .line 600
    :cond_8
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v11, :cond_a

    .line 603
    invoke-static {v3, v4, v6}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    :cond_a
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 608
    const-string v3, "doTaskList err:"

    const-string v4, "SesameAlchemy"

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private static exchangeManure(Lorg/json/JSONObject;II)V
    .locals 12

    .line 681
    const-string v0, "remainQuota"

    const-string v1, "SesameAlchemy"

    .line 0
    const-string v2, "#\u4eca\u65e5\u5269\u4f59\u989d\u5ea6["

    const-string v3, "\u70bc\u91d1\u91d1\u8c46\ud83d\udcb0\u829d\u9ebb\u7c92\u6362\u91d1\u8c46#\u6d88\u8017["

    const-string v4, "\u4eca\u65e5\u5df2\u5151"

    const-string v5, "\u6362\u91d1\u8c46\u670d\u52a1\u7aef\u5b57\u6bb5\u5f02\u5e38#beanReward="

    if-eqz p0, :cond_f

    .line 681
    :try_start_0
    const-string v6, "pageOpened"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 684
    :cond_0
    const-string v6, "currentManure"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 685
    const-string v8, "effectiveExchangeManure"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 686
    const-string v9, "beanReward"

    invoke-virtual {p0, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 687
    const-string v10, "minExchangeAmount"

    invoke-virtual {p0, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 688
    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v9, :cond_e

    if-gtz v10, :cond_1

    goto/16 :goto_3

    :cond_1
    if-lez v6, :cond_d

    if-gtz p0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    sub-int/2addr v6, p2

    if-gtz v6, :cond_4

    return-void

    .line 706
    :cond_4
    const-string p2, "ZHIMA"

    if-lez p1, :cond_6

    .line 707
    :try_start_1
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Status;->getGoldenBeanExchangeCountToday(Ljava/lang/String;)I

    move-result v5

    div-int/2addr v5, v9

    sub-int v11, p1, v5

    if-gtz v11, :cond_5

    .line 710
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u7c92\u8fbe\u4e0a\u9650"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u8df3\u8fc7\u6362\u91d1\u8c46"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-le v6, v11, :cond_6

    move v6, v11

    :cond_6
    if-lez v8, :cond_7

    if-le v6, v8, :cond_7

    goto :goto_0

    :cond_7
    move v8, v6

    :goto_0
    mul-int v8, v8, v9

    if-le v8, p0, :cond_8

    .line 723
    div-int/2addr p0, v9

    mul-int v8, p0, v9

    :cond_8
    if-ge v8, v10, :cond_9

    return-void

    .line 728
    :cond_9
    new-instance p0, Lorg/json/JSONObject;

    const-string p1, "lianjin"

    const-string v4, "20260901.01"

    invoke-static {p2, p1, v4, v8}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->manureExchange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    .line 729
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 730
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 734
    :cond_a
    const-string p1, "beanDelta"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-lez p1, :cond_b

    const-wide/32 v4, 0x7fffffff

    .line 736
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Status;->goldenBeanExchangeToday(Ljava/lang/String;I)V

    .line 738
    :cond_b
    const-string p1, "manureCost"

    invoke-virtual {p0, p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    .line 739
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u829d\u9ebb\u7c92]\u83b7\u5f97["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u91d1\u8c46]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p0, :cond_c

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_c
    const-string p0, ""

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 740
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    :goto_2
    return-void

    .line 691
    :cond_e
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#minExchangeAmount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u8df3\u8fc7"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 743
    const-string p1, "exchangeManure err:"

    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_4
    return-void
.end method

.method private static finishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 636
    const-string v0, "SesameAlchemy"

    .line 0
    const-string v1, "\u70bc\u91d1\u91d1\u8c46\ud83e\uddfe\u5b8c\u6210\u4efb\u52a1["

    .line 636
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "ZHIMA"

    const-string v4, "lianjin"

    const-string v5, "20260901.01"

    invoke-static {v3, v4, v5, p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->finishTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 p0, 0x1f4

    .line 637
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 638
    const-string p0, "GoldenBeansTaskList"

    invoke-static {p0, p2, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 639
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 644
    const-string p1, "finishTask err:"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static goldenBean(ZLjava/util/Set;ZII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZII)V"
        }
    .end annotation

    .line 436
    const-string v0, "taskList"

    const-string v1, "SesameAlchemy::zhimaSign"

    const-string v2, "SesameAlchemy"

    .line 0
    const-string v3, "\u70bc\u91d1\u91d1\u8c46\ud83c\udf31\u91d1\u8c46\u82d7\u6536\u53d6#\u83b7\u5f97["

    .line 436
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "ZHIMA"

    const-string v6, "lianjin"

    const-string v7, "20260901.01"

    invoke-static {v5, v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->index(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 437
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 438
    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 443
    :cond_0
    const-string v7, "sproutCollectedDelta"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u91d1\u8c46]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_4

    .line 450
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->syncGoldenBeanTaskList(Lorg/json/JSONObject;)V

    .line 452
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    .line 453
    const-string p0, "signInfo"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->zhimaSign(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 454
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 456
    :cond_2
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 459
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 460
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->doTaskList(Lorg/json/JSONArray;Ljava/util/Set;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 466
    const-string p0, "manureExchangeInfo"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->exchangeManure(Lorg/json/JSONObject;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 469
    const-string p1, "goldenBean err:"

    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {v2, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static isTransactionTask(Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    const-string v19, "\u8d2d\u7269\u91d1"

    const-string v20, "\u8fd8\u8d37"

    const-string v3, "\u4ed8\u6b3e"

    const-string v4, "\u4e0b\u5355"

    const-string v5, "\u8d2d\u4e70"

    const-string v6, "\u6d88\u8d39"

    const-string v7, "\u4ea4\u6613"

    const-string v8, "\u79df\u8d41"

    const-string v9, "\u79df\u8f66"

    const-string v10, "\u79df\u501f"

    const-string v11, "\u4fe1\u7528\u8d2d"

    const-string v12, "\u82b1\u5457"

    const-string v13, "\u5206\u671f"

    const-string v14, "\u501f\u6b3e"

    const-string v15, "\u8d37\u6b3e"

    const-string v16, "\u7f34\u8d39"

    const-string v17, "\u5145\u503c"

    const-string v18, "\u4e0b\u5355\u7acb\u51cf"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x12

    if-ge v3, v4, :cond_2

    .line 623
    aget-object v4, v2, v3

    .line 624
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static pointTreasureBox()V
    .locals 9

    .line 78
    const-string v0, "data"

    const-string v1, "SesameAlchemy"

    const-string v2, "\u829d\u9ebb\u79ef\u5206\ud83c\udf81\u5b9d\u7bb1#\u83b7\u5f97["

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryPointTreasureBox()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    .line 79
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 80
    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 84
    const-string v6, "hasBox"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    const-string v6, "WAIT_CLAIM"

    const-string v8, "status"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 90
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->openPointTreasureBox()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 92
    invoke-static {v1, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "rewardAmount"

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u829d\u9ebb\u7c92]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 97
    const-string v2, "pointTreasureBox err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 655
    const-string v0, "SesameAlchemy"

    .line 0
    const-string v1, "\u70bc\u91d1\u91d1\u8c46\ud83c\udf81\u9886\u53d6\u5956\u52b1["

    const/4 v2, 0x0

    .line 655
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "ZHIMA"

    const-string v5, "lianjin"

    const-string v6, "20260901.01"

    invoke-static {v4, v5, v6, p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->receiveTaskAward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 p0, 0x1f4

    .line 656
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 657
    const-string p0, "GoldenBeansTaskList"

    invoke-static {p0, p2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 658
    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 659
    const-string p0, "incAwardCount"

    invoke-virtual {v3, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]#\u83b7\u5f97["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u91d1\u8c46]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 664
    const-string p1, "receiveTaskAward err:"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v2
.end method

.method public static run(ZZZLjava/util/Set;ZIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZIIZ)V"
        }
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->alchemy(ZZ)V

    :cond_1
    if-nez p2, :cond_2

    if-eqz p4, :cond_3

    .line 60
    :cond_2
    invoke-static {p2, p3, p4, p5, p6}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->goldenBean(ZLjava/util/Set;ZII)V

    :cond_3
    if-eqz p7, :cond_4

    .line 63
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->pointTreasureBox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 66
    const-string p1, "run err:"

    const-string p2, "SesameAlchemy"

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p2, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static summaryAlchemy(Lorg/json/JSONObject;IJI)V
    .locals 9

    const-string v0, "#\u5347\u7ea7["

    const-string v1, "\u829d\u9ebb\u70bc\u91d1\u2697\ufe0f\u70bc\u91d1["

    if-nez p0, :cond_0

    return-void

    .line 375
    :cond_0
    :try_start_0
    const-string v2, "goldBalance"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 376
    const-string v2, "currentLevel"

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 377
    const-string v8, "zmlBalance"

    invoke-virtual {p0, v8, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 378
    const-string v8, "finishAlchemyCount"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b21]#\u83b7\u5f97["

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u91d1\u5e01]#\u4eca\u65e5\u7d2f\u8ba1["

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u6b21]"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    const-string p0, "]"

    if-lez p4, :cond_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u7ea7\u2192lv"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#\u91d1\u5e01\u4f59\u989d["

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]#\u829d\u9ebb\u7c92\u4f59\u989d["

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 383
    const-string p1, "summaryAlchemy err:"

    const-string p2, "SesameAlchemy"

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {p2, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static syncGoldenBeanTaskList(Lorg/json/JSONObject;)V
    .locals 6

    .line 479
    const-string v0, "BlackList::initAlchemyGB"

    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->load()V

    .line 483
    const-string v1, "taskList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 485
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 486
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 487
    :cond_1
    const-string v4, "taskDisplayConfig"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    .line 488
    const-string v4, ""

    goto :goto_2

    :cond_2
    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    .line 490
    new-array v5, v5, [Lorg/json/JSONObject;

    aput-object v3, v5, v1

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->save()Z

    .line 495
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 496
    const-string p0, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u70bc\u91d1\u91d1\u8c46\u4efb\u52a1\u5217\u8868(\u4e0e\u519c\u573a\u91d1\u8c46\u5171\u7528\u9ed1\u540d\u5355)"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 498
    const-string v0, "syncGoldenBeanTaskList err:"

    const-string v1, "SesameAlchemy"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static timeLimitedTask()Z
    .locals 13

    .line 195
    const-string v0, "data"

    const-string v1, "SesameAlchemy"

    const-string v2, "\u829d\u9ebb\u70bc\u91d1\u23f0\u9650\u65f6\u8865\u8d34["

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryTimeLimitedTask()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 196
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 197
    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return v3

    .line 200
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 201
    :cond_1
    const-string v7, "timeLimitedTaskVO"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_0
    const/4 v7, 0x1

    if-eqz v4, :cond_7

    .line 202
    const-string v8, "tomorrow"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    .line 205
    :cond_2
    const-string v8, "startHour"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 206
    const-string v10, "endHour"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 207
    const-string v10, "state"

    invoke-virtual {v4, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 208
    const-string v11, "templateId"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 209
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    if-eq v10, v7, :cond_3

    goto :goto_2

    .line 213
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ltz v8, :cond_5

    if-le v9, v8, :cond_5

    if-lt v10, v8, :cond_4

    if-lt v10, v9, :cond_5

    :cond_4
    return v7

    .line 217
    :cond_5
    const-string v8, "longTitle"

    const-string v9, "shortTitle"

    const-string v10, "\u9650\u65f6\u8865\u8d34"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->completeTimeLimitedTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 220
    invoke-static {v1, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 221
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const-string v5, "rewardAmount"

    if-eqz v0, :cond_6

    :try_start_1
    const-string v6, "zmlNum"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 224
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]#\u83b7\u5f97["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u829d\u9ebb\u7c92]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    return v7

    :catchall_0
    move-exception v0

    .line 228
    const-string v2, "timeLimitedTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method private static useAlchemyItems()V
    .locals 8

    .line 335
    const-string v0, "SesameAlchemy"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryAvailableItems()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    .line 336
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 337
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 340
    :cond_0
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 341
    :cond_1
    const-string v4, "items"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 345
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 346
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 350
    :cond_3
    const-string v6, "itemId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    const-string v7, "itemType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 355
    :cond_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->useItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 357
    invoke-static {v0, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u829d\u9ebb\u70bc\u91d1\ud83e\uddea\u4f7f\u7528\u9053\u5177["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 362
    const-string v2, "useAlchemyItems err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private static zhimaSign(Lorg/json/JSONObject;)Z
    .locals 8

    .line 510
    const-string v0, "SesameAlchemy"

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 513
    :try_start_0
    const-string v3, "todaySigned"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 516
    :cond_1
    const-string v3, "currentSignKey"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 520
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "ZHIMA"

    const-string v6, "lianjin"

    const-string v7, "20260901.01"

    invoke-static {v5, v6, v7, v3}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/GoldenBeanRpcCall;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 521
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 522
    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 526
    :cond_3
    const-string v3, "signList"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/16 v3, 0x64

    if-eqz p0, :cond_5

    const/4 v4, 0x0

    .line 528
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 529
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 530
    const-string v6, "today"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    const-string p0, "awardCount"

    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 536
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u70bc\u91d1\u91d1\u8c46\ud83c\udf81\u6bcf\u65e5\u7b7e\u5230#\u83b7\u5f97["

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u91d1\u8c46]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    .line 539
    const-string v1, "zhimaSign err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
