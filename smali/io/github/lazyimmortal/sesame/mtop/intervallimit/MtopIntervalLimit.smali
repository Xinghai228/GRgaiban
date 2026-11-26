.class public Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;
.super Ljava/lang/Object;
.source "MtopIntervalLimit.java"


# static fields
.field private static final DEFAULT_LIMIT:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

.field private static final MTOP_LIMIT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->DEFAULT_LIMIT:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addIntervalLimit(Ljava/lang/String;Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addIntervalLimit(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    invoke-direct {v2, p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addIntervalLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, p1, v3, v4}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/FixedOrRangeIntervalLimit;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearIntervalLimit()V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static enterIntervalLimit(Ljava/lang/String;)V
    .locals 5

    .line 46
    sget-object v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    if-nez p0, :cond_0

    .line 48
    sget-object p0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->DEFAULT_LIMIT:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    .line 50
    :cond_0
    monitor-enter p0

    .line 51
    :try_start_0
    invoke-interface {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;->getInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;->getTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 53
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;->setTime(Ljava/lang/Long;)V

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized updateIntervalLimit(Ljava/lang/String;Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized updateIntervalLimit(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/mtop/intervallimit/MtopIntervalLimit;->MTOP_LIMIT_MAP:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    invoke-direct {v2, p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
