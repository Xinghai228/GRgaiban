.class public Lio/github/lazyimmortal/sesame/entity/FriendWatch;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "FriendWatch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FriendWatch"


# instance fields
.field private allGet:I

.field public bodyText:Ljava/lang/String;

.field private dailyAverage:J

.field private dayGet:I

.field public delete:Z

.field private fourWeekAverage:J

.field public hasShield:Z

.field public headImageUrl:Ljava/lang/String;

.field private monthGet:I

.field private startTime:Ljava/lang/String;

.field public statsExtraText:Ljava/lang/String;

.field public statsIntroText:Ljava/lang/String;

.field private thisWeekAverage:J

.field private threeWeekAverage:J

.field public titleText:Ljava/lang/String;

.field private twoWeekAverage:J

.field private week1Get:I

.field private week2Get:I

.field private week3Get:I

.field private weekGet:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 68
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->id:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->name:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized addPkDailyCollectedEnergy(Ljava/lang/String;I)V
    .locals 7

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 380
    :cond_0
    :try_start_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readDailyEnergyJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 382
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p1, "addPkDailyCollectedEnergy skip: daily file damaged"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit v0

    return-void

    .line 385
    :cond_1
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v2

    .line 386
    const-string v3, "date"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 387
    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v2, "pkEnergy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    :cond_2
    const-string v2, "pkEnergy"

    const-string v3, "pkEnergy"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 391
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeDailyEnergyJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 393
    :try_start_3
    sget-object p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v1, "addPkDailyCollectedEnergy err:"

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    :goto_0
    monitor-exit v0

    return-void

    .line 377
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static calculateDailyAverage(IJ)J
    .locals 2

    int-to-double v0, p0

    .line 307
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDaysSince(J)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static calculateWeeklyAverage([IIJ)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 313
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 314
    aget v3, p0, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 317
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekStartMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, -0x7

    const/4 v2, 0x6

    .line 318
    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 319
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-double p2, v0

    .line 320
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDaysSince(J)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static declared-synchronized friendWatch(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 403
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p1, "friendWatch skip: currentUid\u4e3a\u7a7a"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit v0

    return-void

    .line 408
    :cond_0
    :try_start_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 411
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p1, "friendWatch skip: \u7edf\u8ba1\u6587\u4ef6\u635f\u574f\u4e14\u65e0\u5907\u4efd"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    monitor-exit v0

    return-void

    .line 415
    :cond_1
    :try_start_2
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 417
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 421
    :cond_2
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 423
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 424
    const-string v5, "name"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string p2, "allGet"

    invoke-virtual {v3, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    const-string p2, "startTime"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string p2, "startTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 428
    :cond_3
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 430
    const-string v5, "name"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    :cond_4
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object p2

    .line 433
    const-string v5, "dayGetDate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 435
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 436
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 438
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 439
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_5

    const/4 v5, 0x1

    .line 440
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v8, v5, :cond_5

    const/4 v5, 0x6

    .line 441
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v6, v5, :cond_5

    goto :goto_1

    .line 443
    :cond_5
    const-string v5, "dayGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    :goto_1
    const-string v5, "dayGetDate"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekStartMillis(Ljava/util/Calendar;)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->rollWeek(Lorg/json/JSONObject;J)Z

    .line 448
    const-string p2, "dayGet"

    const-string v5, "dayGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    const-string p2, "weekGet"

    const-string v5, "weekGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 450
    const-string p2, "monthGet"

    const-string v5, "monthGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    const-string p2, "allGet"

    const-string v5, "allGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v3, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 455
    :try_start_3
    sget-object p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p2, "friendWatch err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 458
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static getBakFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v1, "friendWatch.json.bak"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDailyEnergyBakFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 159
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v1, "friendEnergyDaily.json.bak"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDailyEnergyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v1, "friendEnergyDaily.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDaysSince(J)J
    .locals 5

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 290
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 291
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 292
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 293
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 295
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 296
    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 297
    invoke-virtual {v4, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 298
    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 300
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 301
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-long p0, p1

    .line 302
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-long/2addr v1, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v1, p0

    const-wide/16 p0, 0x1

    add-long/2addr v1, p0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDontCollectSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 529
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 533
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 534
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 537
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    const-string p0, "modelFieldsMap"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 543
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 549
    :cond_3
    const-string v3, "dontCollectList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 553
    :cond_4
    const-string p0, "value"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v1, 0x0

    .line 555
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 556
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 558
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 565
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v2, "getDontCollectSet err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-object v0
.end method

.method private static getEffectiveStartMillis(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)J
    .locals 5

    .line 266
    const-string v0, "startTimeMillis"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-gtz p0, :cond_0

    .line 267
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 269
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, p0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    cmp-long p0, v3, v1

    if-gtz p0, :cond_1

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_1
    if-eqz p2, :cond_2

    .line 280
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v0, p0, v3

    if-lez v0, :cond_2

    .line 281
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_2
    return-wide v3
.end method

.method public static declared-synchronized getList(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/FriendWatch;",
            ">;"
        }
    .end annotation

    const-class v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v1

    .line 710
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 711
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 712
    monitor-exit v1

    return-object v2

    .line 715
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 717
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v3, "getList skip: \u7edf\u8ba1\u6587\u4ef6\u635f\u574f\u4e14\u65e0\u5907\u4efd"

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 718
    monitor-exit v1

    return-object v2

    .line 721
    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->load(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 724
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekStartMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 725
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 726
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 730
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object v9

    .line 731
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getUserMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v9, :cond_2

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_3

    .line 738
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 740
    :cond_3
    invoke-static {v10, v4, v5}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->rollWeek(Lorg/json/JSONObject;J)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v7, 0x1

    .line 743
    :cond_4
    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 744
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 746
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 747
    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 748
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 751
    :cond_5
    :try_start_3
    const-string v13, "name"

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    .line 756
    :catchall_0
    :cond_6
    :try_start_4
    new-instance v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    invoke-direct {v13, v8, v12}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v12, "startTime"

    const-string v14, "\u65e0"

    invoke-virtual {v10, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->startTime:Ljava/lang/String;

    .line 758
    const-string v12, "dayGet"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dayGet:I

    .line 759
    const-string v12, "weekGet"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    .line 760
    const-string v12, "week1Get"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week1Get:I

    .line 761
    const-string v12, "week2Get"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week2Get:I

    .line 762
    const-string v12, "week3Get"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week3Get:I

    .line 763
    const-string v12, "monthGet"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->monthGet:I

    .line 764
    const-string v12, "allGet"

    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    if-eqz v9, :cond_7

    .line 765
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendTime()Ljava/lang/Long;

    move-result-object v12

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    .line 766
    :goto_1
    iget-object v14, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->startTime:Ljava/lang/String;

    invoke-static {v10, v14, v12}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getEffectiveStartMillis(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v14

    .line 767
    iget v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    move/from16 v16, v7

    invoke-static {v12, v14, v15}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->calculateDailyAverage(IJ)J

    move-result-wide v6

    iput-wide v6, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dailyAverage:J

    .line 768
    iget v6, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    iget v7, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week1Get:I

    iget v12, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week2Get:I

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week3Get:I

    filled-new-array {v6, v7, v12, v11}, [I

    move-result-object v6

    const/4 v7, 0x1

    .line 769
    invoke-static {v6, v7, v14, v15}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->calculateWeeklyAverage([IIJ)J

    move-result-wide v11

    iput-wide v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->thisWeekAverage:J

    const/4 v7, 0x2

    .line 770
    invoke-static {v6, v7, v14, v15}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->calculateWeeklyAverage([IIJ)J

    move-result-wide v11

    iput-wide v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->twoWeekAverage:J

    const/4 v7, 0x3

    .line 771
    invoke-static {v6, v7, v14, v15}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->calculateWeeklyAverage([IIJ)J

    move-result-wide v11

    iput-wide v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->threeWeekAverage:J

    const/4 v7, 0x4

    .line 772
    invoke-static {v6, v7, v14, v15}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->calculateWeeklyAverage([IIJ)J

    move-result-wide v6

    iput-wide v6, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->fourWeekAverage:J

    .line 774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f00\u59cb\u7edf\u8ba1\u65f6\u95f4:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->startTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n\u65e5\u6536:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dayGet:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u6708\u6536:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->monthGet:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u603b\u6536:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u65e5\u5747:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dailyAverage:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "\n\u672c\u5468:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u4e0a\u5468:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week1Get:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u4e0a\u4e0a\u5468:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week2Get:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u4e0a\u4e0a\u4e0a\u5468:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week3Get:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 780
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    const-string v12, "shieldEndTime"

    const-wide/16 v14, 0x0

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    invoke-virtual {v10, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v5, v3, v20

    if-lez v5, :cond_8

    .line 785
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v5, v12, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 786
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n\u4fdd\u62a4\u7f69:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 788
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 789
    iput-boolean v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->hasShield:Z

    .line 791
    :cond_8
    const-string v3, "totalEnergy"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nta\u7684\u603b\u80fd\u91cf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "totalEnergy"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 795
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v9, :cond_d

    .line 799
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFullName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->titleText:Ljava/lang/String;

    .line 801
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 802
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getRegisterTime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getRegisterTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-lez v12, :cond_a

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\u66f4\u6539\u65f6\u95f4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getRegisterTime()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 805
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_a
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendTime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-lez v12, :cond_b

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u6210\u4e3a\u597d\u53cb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendTime()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v4

    .line 812
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getIsDelete()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    .line 814
    iput-boolean v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    .line 816
    :cond_c
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->headImageUrl:Ljava/lang/String;

    .line 818
    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->icon:Ljava/lang/String;

    .line 821
    :cond_d
    iput-object v6, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->statsIntroText:Ljava/lang/String;

    .line 822
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_e
    const-string v3, ""

    :goto_2
    iput-object v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->statsExtraText:Ljava/lang/String;

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->bodyText:Ljava/lang/String;

    .line 824
    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v16

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    if-eqz v7, :cond_10

    move-object/from16 v3, p0

    .line 829
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 832
    :cond_10
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 848
    :try_start_5
    sget-object v3, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v4, "FriendWatch getList: "

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 851
    :goto_3
    monitor-exit v1

    return-object v2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public static declared-synchronized getTodayCollectedTotal(Ljava/lang/String;)J
    .locals 17

    const-class v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v1

    .line 325
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    .line 326
    monitor-exit v1

    return-wide v2

    .line 328
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 330
    monitor-exit v1

    return-wide v2

    .line 332
    :cond_1
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 335
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 336
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    cmp-long v13, v7, v10

    if-lez v13, :cond_2

    .line 337
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v7, 0x6

    .line 338
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 341
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-wide v13, v10

    const/4 v7, 0x0

    .line 342
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 343
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 347
    :cond_3
    const-string v15, "dayGetDate"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 348
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 349
    const-string v15, "dayGet"

    invoke-virtual {v8, v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v9, v8

    add-long/2addr v13, v9

    goto :goto_2

    .line 350
    :cond_4
    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    .line 352
    const-string v9, "dayGet"

    invoke-virtual {v8, v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v9, v9

    add-long/2addr v13, v9

    .line 355
    :try_start_3
    const-string v9, "dayGetDate"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    :catch_0
    :cond_5
    :goto_2
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v5, p0

    .line 362
    :try_start_4
    invoke-static {v5, v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_7
    move-object/from16 v5, p0

    .line 364
    :goto_3
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readDailyEnergyJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_8

    .line 366
    monitor-exit v1

    return-wide v2

    .line 368
    :cond_8
    :try_start_5
    const-string v2, "date"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 369
    const-string v2, "pkEnergy"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long/2addr v13, v2

    .line 371
    :cond_9
    monitor-exit v1

    return-wide v13

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private static getWeekStartMillis(Ljava/util/Calendar;)J
    .locals 2

    .line 211
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x7

    .line 212
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    rem-int/2addr v1, v0

    const/4 v0, 0x6

    neg-int v1, v1

    .line 213
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 215
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 216
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 217
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 218
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$getList$0(Lio/github/lazyimmortal/sesame/entity/FriendWatch;Lio/github/lazyimmortal/sesame/entity/FriendWatch;)I
    .locals 2

    .line 833
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    iget-boolean v1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 836
    :cond_1
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    iget v1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v1, v0

    return v1

    .line 839
    :cond_2
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->monthGet:I

    iget v1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->monthGet:I

    if-eq v0, v1, :cond_3

    sub-int/2addr v1, v0

    return v1

    .line 842
    :cond_3
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    iget v1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    if-eq v0, v1, :cond_4

    sub-int/2addr v1, v0

    return v1

    .line 845
    :cond_4
    iget p1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dayGet:I

    iget p0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dayGet:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static declared-synchronized load()Ljava/lang/Boolean;
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    const/4 v1, 0x1

    .line 699
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static readDailyEnergyJo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 163
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyEnergyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 168
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    .line 171
    :try_start_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyEnergyBakFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :catchall_0
    :goto_0
    return-object v0
.end method

.method private static readJo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 137
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 142
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 146
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->restoreFromBak(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static resolveName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 636
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static restoreFromBak(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "\u7edf\u8ba1\u6587\u4ef6\u635f\u574f, \u5df2\u7528\u5907\u4efd\u6062\u590d: "

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getBakFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 192
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    .line 197
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static rollWeek(Lorg/json/JSONObject;J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    const-string v0, "weekStart"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-gtz v6, :cond_0

    .line 228
    invoke-virtual {p0, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return v5

    :cond_0
    const/4 v1, 0x0

    cmp-long v2, p1, v3

    if-gtz v2, :cond_1

    return v1

    .line 235
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 236
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x0

    .line 238
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/4 v4, 0x4

    cmp-long v8, v6, p1

    if-gez v8, :cond_2

    if-ge v3, v4, :cond_2

    const/4 v4, 0x6

    const/4 v6, 0x7

    .line 239
    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_2
    const-string v2, "weekGet"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 245
    const-string v7, "week1Get"

    invoke-virtual {p0, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 246
    const-string v9, "week2Get"

    invoke-virtual {p0, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 247
    const-string v11, "week3Get"

    invoke-virtual {p0, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    filled-new-array {v6, v8, v10, v12}, [I

    move-result-object v6

    .line 249
    new-array v8, v4, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    sub-int v12, v10, v3

    if-ltz v12, :cond_3

    if-ge v3, v4, :cond_3

    .line 253
    aget v12, v6, v12

    aput v12, v8, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 256
    :cond_4
    aget v1, v8, v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    aget v1, v8, v5

    invoke-virtual {p0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 258
    aget v1, v8, v1

    invoke-virtual {p0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x3

    .line 259
    aget v1, v8, v1

    invoke-virtual {p0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {p0, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return v5
.end method

.method public static declared-synchronized save()V
    .locals 1

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 573
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized unload()V
    .locals 1

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 704
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized updateDay()V
    .locals 15

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 646
    monitor-exit v0

    return-void

    .line 648
    :cond_0
    :try_start_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 649
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v5

    if-nez v9, :cond_1

    const/4 v2, 0x0

    goto :goto_3

    .line 656
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 657
    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x6

    .line 658
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 659
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x2

    .line 660
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 661
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v3, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_2
    move v14, v8

    move v8, v2

    move v2, v14

    :goto_3
    if-nez v8, :cond_6

    .line 664
    monitor-exit v0

    return-void

    .line 666
    :cond_6
    :try_start_2
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekStartMillis(Ljava/util/Calendar;)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 668
    :try_start_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_7

    .line 670
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v2, "updateDay skip: \u7edf\u8ba1\u6587\u4ef6\u635f\u574f\u4e14\u65e0\u5907\u4efd"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    monitor-exit v0

    return-void

    .line 673
    :cond_7
    :try_start_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v6

    .line 674
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 675
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 676
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 677
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 678
    invoke-static {v10, v3, v4}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->rollWeek(Lorg/json/JSONObject;J)Z

    const-string v11, "dayGetDate"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 679
    const-string v11, "dayGet"

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 680
    const-string v11, "dayGetDate"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    if-eqz v2, :cond_9

    .line 682
    const-string v11, "monthGet"

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    :cond_9
    const-string v11, "startTime"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 685
    const-string v11, "startTime"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    const-string v11, "startTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 688
    :cond_a
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 690
    :cond_b
    invoke-static {v1, v5}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 692
    :try_start_5
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v3, "friendWatchNewWeek err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 695
    :goto_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public static declared-synchronized updateEnergySummation(Lorg/json/JSONObject;)I
    .locals 15

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    const/4 v1, 0x0

    .line 579
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 581
    monitor-exit v0

    return v1

    .line 583
    :cond_0
    :try_start_1
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    .line 585
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v2, "updateEnergySummation skip: \u7edf\u8ba1\u6587\u4ef6\u635f\u574f\u4e14\u65e0\u5907\u4efd"

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 586
    monitor-exit v0

    return v1

    .line 589
    :cond_1
    :try_start_2
    const-string v4, "friendRanking"

    const-string v5, "totalDatas"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v5, v8, :cond_9

    .line 590
    :try_start_3
    aget-object v8, v4, v5

    .line 591
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v9, 0x0

    .line 595
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 596
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 597
    const-string v11, "energySummation"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_3

    .line 600
    :cond_3
    const-string v11, "userId"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 601
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    .line 604
    :cond_4
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    .line 607
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 608
    const-string v12, "name"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    const-string v12, "startTime"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v12, "startTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 611
    const-string v12, "dayGet"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 612
    const-string v12, "weekGet"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 613
    const-string v12, "monthGet"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 614
    const-string v12, "allGet"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 615
    invoke-virtual {v3, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 616
    :cond_5
    const-string v12, "name"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 618
    const-string v12, "name"

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    :cond_6
    :goto_2
    const-string v11, "totalEnergy"

    const-string v12, "energySummation"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move v1, v7

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    .line 626
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception p0

    .line 629
    :goto_5
    :try_start_4
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v3, "updateEnergySummation err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v2, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v7, v1

    .line 632
    :cond_a
    :goto_6
    monitor-exit v0

    return v7

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static declared-synchronized updateShield(Ljava/lang/String;J)V
    .locals 7

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 499
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_0
    :try_start_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 505
    monitor-exit v0

    return-void

    .line 507
    :cond_1
    :try_start_2
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    .line 509
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 510
    const-string v4, "name"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v4, "allGet"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v4, "startTime"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v4, "startTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 515
    :cond_2
    const-string v4, "shieldEndTime"

    invoke-virtual {v3, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 516
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 519
    :try_start_3
    sget-object p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p2, "updateShield err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static declared-synchronized waterFriendWatch(Ljava/lang/String;Z)V
    .locals 8

    const-class v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    monitor-enter v0

    .line 465
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p1, "waterFriendWatch skip: currentUid\u4e3a\u7a7a"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit v0

    return-void

    .line 470
    :cond_0
    :try_start_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->readJo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 472
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string p1, "waterFriendWatch skip: \u7edf\u8ba1\u6587\u4ef6\u635f\u574f\u4e14\u65e0\u5907\u4efd"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit v0

    return-void

    .line 475
    :cond_1
    :try_start_2
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 478
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 479
    const-string v5, "name"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v5, "allGet"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    const-string v5, "startTime"

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v5, "startTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    if-eqz p1, :cond_3

    .line 484
    const-string p1, "wateredCount"

    goto :goto_0

    :cond_3
    const-string p1, "wateringCount"

    .line 485
    :goto_0
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 489
    :try_start_3
    sget-object p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->TAG:Ljava/lang/String;

    const-string v1, "waterFriendWatch err:"

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 492
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static writeDailyEnergyJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyEnergyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    .line 182
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyEnergyBakFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method

.method private static writeJo(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendWatchFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    .line 206
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getBakFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I
    .locals 2

    .line 122
    move-object v0, p1

    check-cast v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    .line 123
    iget v1, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    iget v0, v0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    if-le v1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ge v1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_1
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I

    move-result p1

    return p1
.end method

.method public getAllGet()I
    .locals 1

    .line 97
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->allGet:I

    return v0
.end method

.method public getDailyAverage()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dailyAverage:J

    return-wide v0
.end method

.method public getDayGet()I
    .locals 1

    .line 73
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->dayGet:I

    return v0
.end method

.method public getFourWeekAverage()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->fourWeekAverage:J

    return-wide v0
.end method

.method public getMonthGet()I
    .locals 1

    .line 93
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->monthGet:I

    return v0
.end method

.method public getThisWeekAverage()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->thisWeekAverage:J

    return-wide v0
.end method

.method public getThreeWeekAverage()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->threeWeekAverage:J

    return-wide v0
.end method

.method public getTwoWeekAverage()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->twoWeekAverage:J

    return-wide v0
.end method

.method public getWeek1Get()I
    .locals 1

    .line 81
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week1Get:I

    return v0
.end method

.method public getWeek2Get()I
    .locals 1

    .line 85
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week2Get:I

    return v0
.end method

.method public getWeek3Get()I
    .locals 1

    .line 89
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->week3Get:I

    return v0
.end method

.method public getWeekGet()I
    .locals 1

    .line 77
    iget v0, p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->weekGet:I

    return v0
.end method
