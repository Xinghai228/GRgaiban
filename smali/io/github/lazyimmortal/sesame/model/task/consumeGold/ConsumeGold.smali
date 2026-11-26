.class public Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "ConsumeGold.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsumeGold"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private consumeGoldIndex()V
    .locals 9

    .line 134
    const-string v0, "promoAdvertisementInfo"

    const-string v1, "success"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->consumeGoldIndex()Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    const-string v2, "homePromoInfoDTO"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    const-string v3, "homePromoTokenDTOList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 141
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 142
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 143
    const-string v7, "tokenType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string v8, "CONSUME_GOLD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    const-string v5, "tokenLeftAmount"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_3

    :goto_1
    if-ge v3, v5, :cond_3

    .line 150
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->promoTrigger()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    const-string v4, "homePromoPrizeInfoDTO"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    const-string v4, "quantity"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8d5a\u6d88\u8d39\u91d1\ud83d\udcb0[\u62955\u5e01\u62bd]#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 158
    const-string v4, "outBizNo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->advertisement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 166
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v2, "queryTreasureBox err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private signinCalendar()V
    .locals 4

    .line 173
    const-string v0, "success"

    .line 0
    const-string v1, "\u6d88\u8d39\u91d1\u7b7e\u5230\ud83d\udcb0["

    .line 173
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->signinCalendar()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "isSignInToday"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->openBoxAward()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "amount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u5e01]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 186
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v2, "signinCalendar err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private taskV2Index(Ljava/lang/String;)V
    .locals 7

    .line 58
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->taskV2Index(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    const-string v0, "taskList"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    const-string v4, "extInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 65
    const-string v4, "taskStatus"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    const-string v6, "actionBizId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v6, "TO_RECEIVE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-direct {p0, v3, v5}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2TriggerReceive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_0
    const-string v5, "NONE_SIGNUP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 71
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2TriggerSignUp(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 73
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2TriggerSend(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 75
    :cond_1
    const-string v5, "SIGNUP_COMPLETE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2TriggerSend(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 81
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    goto :goto_3

    .line 83
    :cond_4
    const-string p1, "resultDesc"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 87
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v1, "taskV2Index err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private taskV2TriggerReceive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u8d5a\u6d88\u8d39\u91d1\ud83d\udcb0["

    .line 94
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->taskV2TriggerReceive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string p1, "success"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    const-string p1, "receiveAmount"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]#"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 101
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v0, "taskV2TriggerReceive err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private taskV2TriggerSend(Ljava/lang/String;)V
    .locals 2

    .line 121
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->taskV2TriggerSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string p1, "success"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 127
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v1, "taskV2TriggerSend err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private taskV2TriggerSignUp(Ljava/lang/String;)V
    .locals 2

    .line 108
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGoldRpcCall;->taskV2TriggerSignUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    const-string p1, "success"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 114
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v1, "taskV2TriggerSignUp err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 6

    .line 32
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getInstance()Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    move-result-object v0

    const-string v2, "consumeGold"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x1499700

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 1

    .line 27
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 22
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "\u6d88\u8d39\u91d1"

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 41
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->getInstance()Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    move-result-object v0

    const-string v1, "consumeGold"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->signinCalendar()V

    .line 43
    const-string v0, "CG_TASK_LIST"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    .line 44
    const-string v0, "HOME_NAVIGATION"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    .line 45
    const-string v0, "CG_SIGNIN_AD_FEEDS"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    .line 46
    const-string v0, "SURPRISE_TASK"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    .line 47
    const-string v0, "CG_BROWSER_AD_FEEDS"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->taskV2Index(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->consumeGoldIndex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 50
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/consumeGold/ConsumeGold;->TAG:Ljava/lang/String;

    const-string v2, "start.run err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
