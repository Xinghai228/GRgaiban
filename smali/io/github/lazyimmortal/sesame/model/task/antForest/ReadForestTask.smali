.class public final Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;
.super Ljava/lang/Object;
.source "ReadForestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2021003114652763"

.field private static final DONE_FLAG:Ljava/lang/String; = "Forest::readForest"

.field private static final FINISHED_KEY:Ljava/lang/String; = "finished_books"

.field private static final PREF_NAME:Ljava/lang/String; = "sesame_forest_read"

.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final TOTAL_FALLBACK:I = 0x96

.field private static final VERSION:Ljava/lang/String; = "0.2.2410251510.53"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static autoReadBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 158
    const-string v4, "0.2.2410251510.53"

    invoke-static {v0, v3, v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->getChapter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->parseData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    .line 160
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz v5, :cond_e

    .line 166
    const-string v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 167
    const-string v12, "next_id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    const-string v13, "name"

    const-string v14, "\u672a\u77e5"

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 170
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 172
    :cond_1
    const-string v13, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6["

    if-ne v8, v6, :cond_4

    .line 173
    invoke-static {v2, v0, v11}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->readEnergyProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;

    move-result-object v8

    .line 174
    iget-boolean v14, v8, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->hasData:Z

    if-nez v14, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u521d\u59cb\u8fdb\u5ea6\u67e5\u8be2\u5931\u8d25,\u8df3\u8fc7\u6b64\u4e66"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 178
    :cond_2
    iget v14, v8, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    iget v15, v8, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->total:I

    if-lt v14, v15, :cond_3

    .line 179
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 181
    :cond_3
    iget v8, v8, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    .line 183
    :cond_4
    sget-object v14, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->RANDOM:Ljava/util/Random;

    const/16 v15, 0x29c

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/lit16 v15, v15, 0x14d

    invoke-static {v0, v11, v15, v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->updateReadingTime(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    invoke-static {v0, v11, v5, v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->setReadRecently(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v15, 0x3e8

    .line 185
    invoke-static/range {v15 .. v16}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 186
    invoke-static {v2, v0, v11}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->readEnergyProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;

    move-result-object v5

    .line 187
    iget-boolean v11, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->hasData:Z

    const/4 v15, 0x5

    if-eqz v11, :cond_8

    .line 189
    iget v10, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    sub-int/2addr v10, v8

    .line 190
    const-string v11, "/"

    if-lez v10, :cond_5

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]\u8fdb\u5ea6("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->total:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\u83b7\u5f97\u80fd\u91cf"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "g"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_1

    .line 194
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]\u8fdb\u5ea6\u540c\u6b65: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->total:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    .line 197
    :goto_1
    iget v6, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    iget v10, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->total:I

    if-lt v6, v10, :cond_6

    .line 198
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    if-lt v9, v15, :cond_7

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u8fde\u7eed5\u7ae0\u65e0\u80fd\u91cf\u589e\u52a0\uff0c\u53ef\u80fd\u8fbe\u5230\u6b64\u4e66\u4e0a\u9650\uff0c\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 202
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]\u8fdb\u5ea6\u67e5\u8be2\u5931\u8d25,\u7ee7\u7eed\u9605\u8bfb\u4e0b\u4e00\u7ae0(\u80fd\u91cf\u7d2f\u8ba1\u5230\u4e0b\u6b21\u8bb0\u5f55)"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-lt v10, v15, :cond_9

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u8fde\u7eed5\u7ae0\u8fdb\u5ea6\u67e5\u8be2\u5931\u8d25,\u7f51\u7edc\u5f02\u5e38,\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 211
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 214
    :cond_9
    :goto_2
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "null"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "0"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    const/16 v6, 0x7d2

    .line 218
    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x3e8

    int-to-long v13, v6

    invoke-static {v13, v14}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 219
    invoke-static {v0, v12, v2, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->getChapter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->parseData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_b

    .line 221
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 223
    :cond_b
    iget-boolean v11, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->hasData:Z

    if-eqz v11, :cond_c

    .line 224
    iget v5, v5, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    move v8, v5

    :cond_c
    move-object v5, v6

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_d
    :goto_3
    move-object/from16 v2, p3

    move-object/from16 v4, p4

    .line 215
    invoke-static {v2, v4, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->markFinished(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 227
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static execute()V
    .locals 12

    .line 41
    const-string v0, "2021003114652763"

    const-string v1, "Forest::readForest"

    const-string v2, "0.2.2410251510.53"

    const-string v3, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6"

    const-string v4, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u767b\u5f55\u5931\u8d25: "

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 43
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u672a\u83b7\u53d6\u5230\u5e94\u7528\u4e0a\u4e0b\u6587\uff0c\u81ea\u52a8\u9605\u8bfb\u4efb\u52a1\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    const-string v0, "\u81ea\u52a8\u9605\u8bfb\u4efb\u52a1\u4eca\u65e5\u5df2\u6267\u884c\uff0c\u8df3\u8fc7"

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    const-string v6, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u5f00\u59cb\u6267\u884c\u81ea\u52a8\u9605\u8bfb\u4efb\u52a1(\u591a\u672c\u8fde\u8bfb\u6a21\u5f0f)"

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 52
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->getAlipayMiniMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->setMiniMark(Ljava/lang/String;)V

    .line 55
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->loadCachedToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isTokenValid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 57
    const-string v0, "\u590d\u7528\u7f13\u5b58token"

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->getAuthCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6authCode\u4e3a\u7a7a\uff0c\u81ea\u52a8\u9605\u8bfb\u4efb\u52a1\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_3
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    const-string v7, "miniMark\u4e3a\u7a7a\uff0c\u7ee7\u7eed\u5c1d\u8bd5\u767b\u5f55"

    invoke-static {v3, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_4
    invoke-static {v0, v6, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u767b\u5f55\u5931\u8d25: \u8fd4\u56de\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v0, "code"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0x7d0

    if-eq v0, v7, :cond_6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_6
    const-string v0, "data"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    .line 80
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u767b\u5f55\u5931\u8d25: \u7f3a\u5c11token"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_7
    const-string v4, "token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u767b\u5f55\u5931\u8d25: token\u4e3a\u7a7a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_8
    invoke-static {v5, v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->saveCachedToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->userScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->loadFinishedBooks(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 93
    :goto_1
    invoke-static {v7, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->getIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->selectFreeBook(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_9

    .line 95
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u9996\u9875\u6682\u65e0\u66f4\u591a\u672a\u8bfb\u514d\u8d39\u4e66\u7c4d"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_9
    const-string v8, "book_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v9, "name"

    const-string v10, "\u672a\u77e5"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    const-wide/16 v10, 0x7d0

    if-eqz v9, :cond_a

    .line 101
    const-string v6, ""

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_1

    .line 104
    :cond_a
    invoke-static {v8, v6, v7, v5, v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->autoReadBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    .line 105
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 106
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u81ea\u52a8\u9605\u8bfb\u4efb\u52a1\u5b8c\u6210\uff0c\u5df2\u83b7\u5f97\u4eca\u65e5\u6ee1\u989d\u80fd\u91cf"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_b
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 110
    const-string v0, "\u68ee\u6797\u9605\u8bfb\ud83d\udcd6\u68c0\u6d4b\u5230\u5f53\u524d\u65e0\u6cd5\u83b7\u5f97\u9605\u8bfb\u80fd\u91cf\uff0c\u7ec8\u6b62\u4efb\u52a1\u6d41\u7a0b"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_c
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 119
    const-string v1, "execute err:"

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

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

.method private static isTokenValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 293
    :try_start_0
    const-string v1, "0.2.2410251510.53"

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->checkToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x7d0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static loadCachedToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 302
    const-string v0, ""

    .line 0
    const-string v1, "token_"

    .line 302
    :try_start_0
    const-string v2, "sesame_forest_read"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->userScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static loadFinishedBooks(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "finished_books_"

    .line 263
    const-string v1, "{}"

    .line 265
    :try_start_0
    const-string v2, "sesame_forest_read"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    .line 270
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 272
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static markFinished(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "finished_books_"

    .line 279
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 282
    const-string p3, "\u672a\u77e5"

    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string p2, "sesame_forest_read"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 284
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->userScope()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 286
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static parseData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 255
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/16 v2, 0x7d0

    if-eq p0, v2, :cond_1

    return-object v1

    .line 259
    :cond_1
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static readEnergyProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 235
    :try_start_0
    const-string v2, "0.2.2410251510.53"

    invoke-static {p0, v2, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestRpcCall;->checkEnergy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v2, 0x3e8

    .line 238
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 241
    :goto_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x96

    if-eqz p1, :cond_1

    .line 242
    new-instance p0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;

    invoke-direct {p0, v0, v0, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;-><init>(ZII)V

    return-object p0

    .line 244
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    .line 246
    new-instance p0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;

    invoke-direct {p0, v0, v0, p2}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;-><init>(ZII)V

    return-object p0

    .line 248
    :cond_2
    new-instance p1, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;

    const-string v0, "current"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "total"

    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0, p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;-><init>(ZII)V

    return-object p1
.end method

.method private static saveCachedToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "token_"

    .line 310
    :try_start_0
    const-string v1, "sesame_forest_read"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->userScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static selectFreeBook(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 130
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 135
    :cond_1
    const-string v4, "block_resource"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 139
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 140
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 144
    :cond_3
    const-string v6, "book_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    const-string v7, "price"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0.00"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 146
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    return-object v5

    .line 149
    :cond_4
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v1
.end method

.method private static userScope()Ljava/lang/String;
    .locals 3

    .line 316
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "default"

    goto :goto_0

    :cond_0
    const-string v1, "[^0-9A-Za-z_-]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
