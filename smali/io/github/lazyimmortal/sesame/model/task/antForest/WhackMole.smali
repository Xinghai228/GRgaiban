.class public Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;
.super Ljava/lang/Object;
.source "WhackMole.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;,
        Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameIntervalCalculator;,
        Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final EXEC_FLAG:Ljava/lang/String; = "forest::whackMole::executed"

.field private static final GAME_DURATION_MS:J = 0x2ee0L

.field private static final SOURCE:Ljava/lang/String; = "senlinguangchangdadishu"

.field private static final TAG:Ljava/lang/String; = "WhackMole"

.field private static volatile isRunning:Z = false

.field private static volatile moleCount:I = 0xf

.field private static final startTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile totalGames:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->isRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeWhackMole()Ljava/lang/Boolean;
    .locals 2

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->closeWhackMole()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "WhackMole"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$start$1(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;)V
    .locals 0

    .line 112
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startSuspend(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "WhackMole-Worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static runAggressiveMode()V
    .locals 12

    .line 225
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 226
    sget v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->totalGames:I

    const-wide/16 v1, 0x2ee0

    invoke-static {v1, v2, v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameIntervalCalculator;->calculateDynamicInterval(JI)J

    move-result-wide v9

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v11, 0x1

    .line 231
    :goto_0
    :try_start_0
    sget v3, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->totalGames:I

    if-gt v11, v3, :cond_2

    .line 232
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startSingleRound(I)Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    sget v3, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->totalGames:I

    if-ge v11, v3, :cond_1

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long v7, v1, v3

    .line 240
    sget v6, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->totalGames:I

    move-wide v3, v9

    move v5, v11

    invoke-static/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameIntervalCalculator;->calculateNextDelay(JIIJ)J

    move-result-wide v3

    .line 241
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 248
    const-string v4, "\u6fc0\u8fdb\u6a21\u5f0f\u542f\u52a8\u8f6e\u6b21\u5f02\u5e38:"

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 255
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 258
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 263
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;

    const-wide/16 v4, 0xc8

    .line 265
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 266
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->settleStandardRound(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v2, v3

    goto :goto_2

    :catch_2
    move-exception v4

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u7ed3\u7b97\u7b2c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->getRoundNumber()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5c40\u5f02\u5e38:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 268
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 274
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u68ee\u6797\u80fd\u91cf\u26a1\ufe0f[\u6fc0\u8fdb\u6a21\u5f0f"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5c40#\u603b\u8ba1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    return-void

    .line 245
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private static runCompatibleMode()V
    .locals 16

    .line 146
    const-string v0, "success"

    const-string v1, "senlinguangchangdadishu"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->oldstartWhackMole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    const-string v0, "resultDesc"

    const-string v1, "\u5f00\u59cb\u5931\u8d25"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    const-string v4, "moleInfo"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 156
    const-string v6, "token"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_9

    .line 157
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 161
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 163
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 164
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 165
    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 166
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v13, "bubbleId"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 174
    :cond_3
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 175
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :catchall_0
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v12, "g]"

    if-eqz v11, :cond_5

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14, v5, v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->oldwhackMole(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 178
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 180
    const-string v13, "energyAmount"

    invoke-virtual {v14, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v10, v10, 0x1

    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u68ee\u6797\u80fd\u91cf\u26a1\ufe0f[\u517c\u5bb9\u6253\u5730\u9f20:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    .line 183
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    const/16 v11, 0xc9

    .line 184
    invoke-virtual {v4, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 193
    :cond_5
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 195
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 196
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sget v9, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->moleCount:I

    if-lt v6, v9, :cond_6

    .line 204
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x16a8

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    .line 205
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_8

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 211
    :cond_8
    invoke-static {v5, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->oldsettlementWhackMole(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v1, "WhackMole"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 214
    const-string v1, "totalEnergy"

    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u68ee\u6797\u80fd\u91cf\u26a1\ufe0f[\u517c\u5bb9\u6a21\u5f0f\u5b8c\u6210(\u6253"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a)\u603b\u80fd\u91cf+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :cond_9
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u517c\u5bb9\u6a21\u5f0f\u51fa\u9519:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static setMoleCount(I)V
    .locals 0

    .line 105
    sput p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->moleCount:I

    return-void
.end method

.method public static setTotalGames(I)V
    .locals 0

    .line 98
    sput p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->totalGames:I

    return-void
.end method

.method private static settleStandardRound(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;)I
    .locals 4

    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->settlementWhackMole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    const-string v1, "WhackMole"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "totalEnergy"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ed3\u7b97\u7b2c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->getRoundNumber()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5c40\u5931\u8d25:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public static shutdown()V
    .locals 4

    .line 323
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 325
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static start(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;)V
    .locals 2

    .line 112
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static startSingleRound(I)Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;
    .locals 4

    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->startWhackMole()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v1, "WhackMole"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 289
    :cond_0
    const-string v1, "canPlayToday"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "token"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;

    invoke-direct {v2, v1, p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 290
    :cond_1
    const-string v1, "forest::whackMole::executed"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "\u4eca\u65e5\u6253\u5730\u9f20\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u542f\u52a8\u7b2c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5c40\u5f02\u5e38:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static startSuspend(Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;)V
    .locals 4

    .line 119
    const-string v0, "\u8fd0\u884c\u72b6\u6001\ud83c\udfae\u6253\u5730\u9f20\u5df2\u91cd\u7f6e"

    sget-boolean v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->isRunning:Z

    if-eqz v1, :cond_0

    .line 120
    const-string p0, "\u6b63\u5728\u8fd0\u884c\u23ed\ufe0f\u6253\u5730\u9f20\u6e38\u620f\u4e2d\uff0c\u8df3\u8fc7\u91cd\u590d\u542f\u52a8"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 123
    sput-boolean v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->isRunning:Z

    const/4 v2, 0x0

    .line 126
    :try_start_0
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode:[I

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->ordinal()I

    move-result p0

    aget p0, v3, p0

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->runAggressiveMode()V

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->runCompatibleMode()V

    .line 134
    :goto_0
    const-string p0, "forest::whackMole::executed"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 136
    :try_start_1
    const-string v1, "\u6253\u5730\u9f20\u5f02\u5e38:"

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    sput-boolean v2, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->isRunning:Z

    .line 139
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 138
    :goto_2
    sput-boolean v2, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;->isRunning:Z

    .line 139
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 140
    throw p0
.end method
