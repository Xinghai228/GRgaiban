.class public Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;
.super Ljava/lang/Object;
.source "MiniGameTaskListMap.java"


# static fields
.field private static final BARE_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final BRACKET_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final BRACKET_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final COMMON_GAME_TASK_WHITELIST:[Ljava/lang/String;

.field private static final GAME_TASK_BLACKLIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile loaded:Z

.field private static final readOnlyIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    .line 34
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->readOnlyIdMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->loaded:Z

    .line 45
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->COMMON_GAME_TASK_WHITELIST:[Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->GAME_TASK_BLACKLIST:Ljava/util/Map;

    .line 60
    const-string v2, "AntFarmDoFarmTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "AntFarmDrawMachineTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "AntOrchardTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "AntOrchardDrawTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "AntForestVitalityTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "AntForestHuntTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "MonopolyTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "AntOceanAntiepTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "AntOceanFishBlackList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "AntStallTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "AntDodoTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "GoldenBeansTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "MemberCreditSesameTaskList"

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "AntSportsTaskList"

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "[(\uff08]\\s*\\d+\\s*/\\s*(\\d+)\\s*[)\uff09]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BRACKET_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "\\d+\\s*/\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BARE_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "[(\uff08]\\s*(\\d+)\\s*[)\uff09]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BRACKET_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u6e38\u620f\u4efb\u52a1\ud83d\udd31\u6536\u96c6["

    const-class v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v1

    .line 314
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 315
    sget-object v2, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 321
    monitor-exit v1

    return-void

    .line 323
    :cond_1
    :try_start_1
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->save()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\u6765\u6e90["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 301
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-static {p2, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->resolveIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->saveIcons()V

    .line 309
    :cond_0
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
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

.method private static backfillIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 202
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->getIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 206
    :cond_0
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->resolveIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5b

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 209
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->resolveIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    sget-object p1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->saveIcons()V

    .line 217
    :cond_2
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static cleanPlaceholder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 178
    const-string v0, "\\{[^{}]*\\}"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 374
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
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

.method private static containsKeyword(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static ensureLoaded()V
    .locals 2

    .line 378
    sget-boolean v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->loaded:Z

    if-nez v0, :cond_1

    .line 379
    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 380
    :try_start_0
    sget-boolean v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->loaded:Z

    if-nez v1, :cond_0

    .line 381
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->load()V

    const/4 v1, 0x1

    .line 382
    sput-boolean v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->loaded:Z

    .line 384
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

.method public static get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 293
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 222
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 223
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 224
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 287
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 288
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->readOnlyIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getOptions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/CustomOption;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    new-instance v5, Lio/github/lazyimmortal/sesame/entity/CustomOption;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/github/lazyimmortal/sesame/entity/CustomOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->backfillIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lio/github/lazyimmortal/sesame/entity/CustomOption;->icon:Ljava/lang/String;

    .line 194
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 92
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->GAME_TASK_BLACKLIST:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->containsKeyword(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGameTask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 97
    sget-object p0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->COMMON_GAME_TASK_WHITELIST:[Ljava/lang/String;

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->containsKeyword(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "||"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized load()V
    .locals 6

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 337
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 338
    sget-object v2, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getMiniGameTaskListMapFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    new-instance v3, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap$1;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap$1;-><init>()V

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 344
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 346
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getMiniGameTaskIconMapFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    new-instance v2, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap$2;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap$2;-><init>()V

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 350
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    sget-object v4, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 356
    :try_start_2
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :cond_2
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

.method public static name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 136
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->readableDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 137
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BRACKET_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BARE_PROGRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->BRACKET_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readableDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    .line 144
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 145
    :goto_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 149
    :cond_1
    :try_start_0
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    :cond_2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 155
    check-cast v0, Ljava/util/Map;

    .line 156
    const-string v3, "baseDesc"

    const-string v4, "desc"

    const-string v5, "description"

    const-string v6, "subTitle"

    const-string v7, "text"

    const-string v8, "content"

    const-string v9, "title"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    .line 157
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 158
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 159
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->cleanPlaceholder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 164
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->cleanPlaceholder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 168
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->cleanPlaceholder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-object p0
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 330
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->ensureLoaded()V

    .line 331
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->save()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
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

.method private static resolveIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 229
    const-string v0, ""

    if-eqz p0, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 233
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "AntOrchardTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "AntOceanAntiepTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "AntForestHuntTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "GoldenBeansTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "MonopolyTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "MemberCreditSesameTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "AntForestVitalityTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "AntDodoTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "AntOceanFishBlackList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "AntStallTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "AntFarmChickenChefTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "AntFarmDrawMachineTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_c
    const-string v1, "AntOrchardDrawTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_d
    const-string v1, "AntMemberTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "AntFarmDoFarmTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_f
    const-string v1, "AntSportsTaskList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    .line 244
    :pswitch_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 253
    :pswitch_2
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 271
    :pswitch_3
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 256
    :pswitch_4
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 274
    :pswitch_5
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 250
    :pswitch_6
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 268
    :pswitch_7
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 262
    :pswitch_8
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 265
    :pswitch_9
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 241
    :pswitch_a
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 238
    :pswitch_b
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 247
    :pswitch_c
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 280
    :pswitch_d
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 235
    :pswitch_e
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 277
    :pswitch_f
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    :goto_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    move-object v0, p0

    :cond_11
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x71420df7 -> :sswitch_f
        -0x4a98d9bf -> :sswitch_e
        -0x3e5695dc -> :sswitch_d
        -0x175a1cb5 -> :sswitch_c
        -0xa17b697 -> :sswitch_b
        -0x49e95df -> :sswitch_a
        -0x24edf04 -> :sswitch_9
        0x2561678e -> :sswitch_8
        0x2d7bc3a0 -> :sswitch_7
        0x36fe43e9 -> :sswitch_6
        0x3b0eeace -> :sswitch_5
        0x42b9c232 -> :sswitch_4
        0x5a3a9cfd -> :sswitch_3
        0x5e17a35a -> :sswitch_2
        0x78cad1c7 -> :sswitch_1
        0x7dec87e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized save()Z
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 361
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->idMap:Ljava/util/Map;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getMiniGameTaskListMapFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    .line 362
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->saveIcons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized saveIcons()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;

    monitor-enter v0

    .line 368
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->iconMap:Ljava/util/Map;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getMiniGameTaskIconMapFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    .line 369
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->predownload(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
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
