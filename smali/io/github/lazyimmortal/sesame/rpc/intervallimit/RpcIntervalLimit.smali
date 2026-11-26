.class public Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;
.super Ljava/lang/Object;
.source "RpcIntervalLimit.java"


# static fields
.field private static final defaultIntervalLimit:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

.field private static final intervalLimitMap:Ljava/util/Map;
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

    .line 11
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->defaultIntervalLimit:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->intervalLimitMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addIntervalLimit(Ljava/lang/String;Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;)V
    .locals 5

    const-string v0, "\u65b9\u6cd5\uff1a"

    const-string v1, "\u65b9\u6cd5\uff1a"

    const-class v2, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;

    monitor-enter v2

    .line 20
    :try_start_0
    sget-object v3, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->intervalLimitMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v2

    return-void

    .line 21
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u95f4\u9694\u9650\u5236\u5df2\u5b58\u5728"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u95f4\u9694\u9650\u5236\u5df2\u5b58\u5728"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addIntervalLimit(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;

    monitor-enter v0

    .line 16
    :try_start_0
    new-instance v1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->addIntervalLimit(Ljava/lang/String;Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
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

    const-class v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->intervalLimitMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
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

    .line 36
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->intervalLimitMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    if-nez p0, :cond_0

    .line 38
    sget-object p0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->defaultIntervalLimit:Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;

    .line 40
    :cond_0
    monitor-enter p0

    .line 41
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

    .line 43
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;->setTime(Ljava/lang/Long;)V

    .line 46
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

    const-class v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->intervalLimitMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
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
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/DefaultIntervalLimit;-><init>(Ljava/lang/Integer;)V

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->updateIntervalLimit(Ljava/lang/String;Lio/github/lazyimmortal/sesame/rpc/intervallimit/IntervalLimit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
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
