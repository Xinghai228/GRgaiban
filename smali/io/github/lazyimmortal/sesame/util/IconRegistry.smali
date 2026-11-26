.class public Lio/github/lazyimmortal/sesame/util/IconRegistry;
.super Ljava/lang/Object;
.source "IconRegistry.java"


# static fields
.field public static final SCOPE_ANCIENT_TREE:Ljava/lang/String; = "ancientTree"

.field public static final SCOPE_ANIMAL:Ljava/lang/String; = "animal"

.field public static final SCOPE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCOPE_COOPERATE:Ljava/lang/String; = "cooperate"

.field public static final SCOPE_MALL_ITEM:Ljava/lang/String; = "mallItem"

.field public static final SCOPE_MARATHON:Ljava/lang/String; = "marathon"

.field public static final SCOPE_RESERVE:Ljava/lang/String; = "reserve"

.field public static final SCOPE_TREE:Ljava/lang/String; = "tree"

.field public static final SCOPE_VITALITY_BENEFIT:Ljava/lang/String; = "vitalityBenefit"

.field private static file:Ljava/io/File;

.field private static final iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureLoaded()V
    .locals 2

    .line 33
    sget-boolean v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-boolean v1, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->load()V

    const/4 v1, 0x1

    .line 37
    sput-boolean v1, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private static file()Ljava/io/File;
    .locals 3

    .line 46
    sget-object v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/FileUtil;->MAIN_DIRECTORY_FILE:Ljava/io/File;

    const-string v2, "iconRegistry.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->file:Ljava/io/File;

    .line 49
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->file:Ljava/io/File;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 79
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->ensureLoaded()V

    .line 83
    sget-object v1, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized load()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    .line 55
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->readDisk()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    :try_start_2
    sput-boolean v2, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 57
    :try_start_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 61
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 59
    :try_start_4
    sput-boolean v2, Lio/github/lazyimmortal/sesame/util/IconRegistry;->loaded:Z

    .line 60
    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public static prefetch()V
    .locals 2

    .line 114
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->predownload(Ljava/util/Collection;)V

    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 89
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->ensureLoaded()V

    .line 93
    sget-object v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static readDisk()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 66
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->file()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v2, Lio/github/lazyimmortal/sesame/util/IconRegistry$1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/util/IconRegistry$1;-><init>()V

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized saveAndPrefetch()V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/IconRegistry;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->ensureLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->readDisk()Ljava/util/Map;

    move-result-object v1

    .line 102
    sget-object v2, Lio/github/lazyimmortal/sesame/util/IconRegistry;->iconMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 103
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 104
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->file()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 107
    :try_start_2
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->prefetch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
