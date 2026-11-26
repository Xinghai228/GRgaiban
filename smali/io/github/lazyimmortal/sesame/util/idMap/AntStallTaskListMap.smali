.class public Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;
.super Ljava/lang/Object;
.source "AntStallTaskListMap.java"


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

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->readOnlyIdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    sget-object p1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 34
    :cond_1
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
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

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
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

    .line 21
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->readOnlyIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized load()V
    .locals 6

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getAntStallTaskListMapFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    new-instance v2, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap$1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap$1;-><init>()V

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 49
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    sget-object v4, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    :try_start_2
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static declared-synchronized save()Z
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->idMap:Ljava/util/Map;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getAntStallTaskListMapFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 62
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->predownload(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
