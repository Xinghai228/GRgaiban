.class public Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;
.super Ljava/lang/Object;
.source "FarmOrnamentsIdMap.java"


# static fields
.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final readOnlyIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->idMap:Ljava/util/Map;

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->readOnlyIdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->idMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
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

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->readOnlyIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized load(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFarmOrnamentsIdMapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap$1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap$1;-><init>()V

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 37
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->idMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
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

.method public static declared-synchronized save(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->idMap:Ljava/util/Map;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFarmOrnamentsIdMapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
