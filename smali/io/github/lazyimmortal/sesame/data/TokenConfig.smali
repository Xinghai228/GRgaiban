.class public Lio/github/lazyimmortal/sesame/data/TokenConfig;
.super Ljava/lang/Object;
.source "TokenConfig.java"


# static fields
.field public static final INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

.field private static final TAG:Ljava/lang/String; = "TokenConfig"


# instance fields
.field private final answerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final customWalkPathIdQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dishImageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private init:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    return-void
.end method

.method public static addCustomWalkPathIdQueue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 63
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkDishImage(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    const-string v1, "BEFORE_MEALS"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    const-string v2, "AFTER_MEALS"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 150
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    .line 150
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static clearCustomWalkPathIdQueue()Ljava/lang/Boolean;
    .locals 2

    .line 68
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    .line 69
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 71
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static clearDishImage()Ljava/lang/Boolean;
    .locals 1

    .line 140
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 141
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 77
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getToday()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 79
    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v2, v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCustomWalkPathId(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 50
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDishImageCount()I
    .locals 1

    .line 135
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->load()Lio/github/lazyimmortal/sesame/data/TokenConfig;

    .line 136
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public static getRandomDishImage()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 120
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->checkDishImage(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method static synthetic lambda$saveAnswer$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 98
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized load()Lio/github/lazyimmortal/sesame/data/TokenConfig;
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getTokenConfigFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    sget-object v4, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->TAG:Ljava/lang/String;

    const-string v4, "\u683c\u5f0f\u5316Token\u914d\u7f6e"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "\u683c\u5f0f\u5316Token\u914d\u7f6e"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->unload()V

    .line 174
    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->TAG:Ljava/lang/String;

    const-string v3, "\u521d\u59cbToken\u914d\u7f6e"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "\u521d\u59cbToken\u914d\u7f6e"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 179
    :try_start_2
    sget-object v3, Lio/github/lazyimmortal/sesame/data/TokenConfig;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    const-string v4, "\u91cd\u7f6eToken\u914d\u7f6e"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "\u91cd\u7f6eToken\u914d\u7f6e"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :try_start_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->unload()V

    .line 184
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 186
    :catch_0
    :try_start_4
    sget-object v1, Lio/github/lazyimmortal/sesame/data/TokenConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_1
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->setInit(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public static save()Ljava/lang/Boolean;
    .locals 1

    .line 156
    const-string v0, "\u4fdd\u5b58Token\u914d\u7f6e"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->setTokenConfigFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static saveAnswer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 83
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getToday()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 85
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    .line 91
    iget-object v3, v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v3, v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_1

    .line 97
    iget-object p0, v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lio/github/lazyimmortal/sesame/data/TokenConfig$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1}, Lio/github/lazyimmortal/sesame/data/TokenConfig$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;Ljava/util/function/Predicate;)Z

    goto :goto_1

    .line 101
    :cond_1
    iget-object p0, v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 102
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    :cond_3
    :goto_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    return-void
.end method

.method public static saveDishImage(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->checkDishImage(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    .line 128
    iget-object v1, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->save()Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public static toSaveStr()Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized unload()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/TokenConfig;

    new-instance v3, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/data/TokenConfig;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->updateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 197
    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/data/TokenConfig;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/data/TokenConfig;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->isInit()Z

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->isInit()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getCustomWalkPathIdQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getCustomWalkPathIdQueue()Ljava/util/Queue;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getAnswerList()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getAnswerList()Ljava/util/Map;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getDishImageList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getDishImageList()Ljava/util/Set;

    move-result-object p1

    if-nez v1, :cond_8

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    return v0
.end method

.method public getAnswerList()Ljava/util/Map;
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

    .line 44
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->answerList:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomWalkPathIdQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->customWalkPathIdQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public getDishImageList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->dishImageList:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 30
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getCustomWalkPathIdQueue()Ljava/util/Queue;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getAnswerList()Ljava/util/Map;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    const/16 v2, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getDishImageList()Ljava/util/Set;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->init:Z

    return v0
.end method

.method public setInit(Z)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 30
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/data/TokenConfig;->init:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenConfig(init="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customWalkPathIdQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getCustomWalkPathIdQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answerList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getAnswerList()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dishImageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getDishImageList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
