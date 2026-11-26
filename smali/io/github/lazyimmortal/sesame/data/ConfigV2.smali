.class public Lio/github/lazyimmortal/sesame/data/ConfigV2;
.super Ljava/lang/Object;
.source "ConfigV2.java"


# static fields
.field public static final INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

.field private static final TAG:Ljava/lang/String; = "ConfigV2"

.field private static lastSyncedText:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private static loadedUserId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private static final valueBaseline:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private init:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private final modelFieldsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelFields;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->valueBaseline:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    return-void
.end method

.method private static captureBaseline()V
    .locals 7

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v4, :cond_1

    .line 383
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 384
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->fieldKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->stableValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_2
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->valueBaseline:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 389
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static collectChangedFields()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 398
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v4, :cond_1

    .line 400
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 403
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->fieldKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    sget-object v6, Lio/github/lazyimmortal/sesame/data/ConfigV2;->valueBaseline:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 405
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->stableValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->copyFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static copyFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 461
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/util/LinkedHashSet;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 464
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Ljava/util/LinkedHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 467
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 470
    :cond_2
    instance-of v0, p0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    if-eqz v0, :cond_3

    .line 471
    check-cast p0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    .line 472
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/KVNode;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/KVNode;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/github/lazyimmortal/sesame/entity/KVNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method private static fieldKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isModify(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 153
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->valueBaseline:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->collectChangedFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 165
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    .line 169
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    .line 173
    :cond_3
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->isRewriteLossless(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 174
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static declared-synchronized load(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ConfigV2;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "\u590d\u5236\u65b0\u914d\u7f6e: "

    const-string v2, "\u521d\u59cb\u65b0\u914d\u7f6e: "

    const-string v3, "\u8865\u5145\u65b0\u589e\u5b57\u6bb5\u5e76\u683c\u5f0f\u5316\u914d\u7f6e: "

    const-string v4, "\u590d\u5236\u65b0\u914d\u7f6e: "

    const-string v5, "\u521d\u59cb\u65b0\u914d\u7f6e: "

    const-string v6, "\u914d\u7f6e\u6587\u4ef6\u7f3a\u5931\u6062\u590d\u267b\ufe0f\u5df2\u4ece\u5907\u4efd\u6062\u590d: "

    const-string v7, "\u91cd\u7f6e\u914d\u7f6e: "

    const-string v8, "\u914d\u7f6e\u635f\u574f\u6062\u590d\u267b\ufe0f\u5df2\u4ece\u5907\u4efd\u6062\u590d: "

    const-string v9, "\u91cd\u7f6e\u914d\u7f6e: "

    const-string v10, "\u52a0\u8f7d\u914d\u7f6e: "

    const-class v11, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    monitor-enter v11

    .line 226
    :try_start_0
    sget-object v12, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    const-string v13, "\u5f00\u59cb\u52a0\u8f7d\u914d\u7f6e"

    invoke-static {v12, v13}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v13, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 231
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    :try_start_2
    const-string v13, "\u9ed8\u8ba4"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    :cond_0
    :try_start_3
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    :try_start_4
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object v16

    if-nez v16, :cond_1

    move-object v13, v1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getShowName()Ljava/lang/String;

    move-result-object v13

    .line 242
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 244
    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    sget-object v4, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 248
    :cond_2
    invoke-static {v1, v15, v13}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->restoreFromBackup(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object v6

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 253
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v5

    sget-object v6, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {v2, v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_1

    .line 259
    :cond_4
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->setModelFieldsMap(Ljava/util/Map;)V

    .line 260
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->unload()V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    .line 268
    :goto_2
    :try_start_5
    sget-object v2, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v15, :cond_5

    .line 271
    invoke-static {v1, v15, v13}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->restoreFromBackup(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->setModelFieldsMap(Ljava/util/Map;)V

    .line 277
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->unload()V

    if-eqz v15, :cond_6

    .line 279
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    .line 283
    :cond_6
    :goto_3
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->setInit(Z)V

    if-eqz v15, :cond_7

    .line 285
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 286
    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->toSaveStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->mergeKeepingSourceKeys(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 288
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->isSameData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 289
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {v5, v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    .line 294
    :cond_7
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, ""

    :cond_8
    sput-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->loadedUserId:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 295
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_9
    move-object v14, v2

    :goto_4
    sput-object v14, Lio/github/lazyimmortal/sesame/data/ConfigV2;->lastSyncedText:Ljava/lang/String;

    .line 296
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->captureBaseline()V

    .line 297
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    const-string v2, "\u52a0\u8f7d\u914d\u7f6e\u7ed3\u675f"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 298
    monitor-exit v11

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private static mergeDiskChanges(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 422
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 423
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->lastSyncedText:Ljava/lang/String;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 426
    :cond_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 427
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->lastSyncedText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 430
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->collectChangedFields()Ljava/util/Map;

    move-result-object v1

    .line 432
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    sget-object v3, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    sput-object p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->lastSyncedText:Ljava/lang/String;

    .line 436
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->captureBaseline()V

    .line 437
    const-string p0, "\u914d\u7f6e\u5df2\u88ab\u5176\u4ed6\u8fdb\u7a0b\u66f4\u65b0\uff0c\u672c\u8fdb\u7a0b\u65e0\u6539\u52a8\uff0c\u5df2\u91cd\u8f7d\u5e76\u8df3\u8fc7\u5199\u5165"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 440
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 442
    sget-object v3, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/data/ModelFields;

    if-nez v3, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    .line 443
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/data/ModelField;

    :goto_2
    if-eqz v2, :cond_4

    .line 445
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/github/lazyimmortal/sesame/data/ModelField;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 448
    :cond_6
    const-string p0, "\u914d\u7f6e\u5df2\u88ab\u5176\u4ed6\u8fdb\u7a0b\u66f4\u65b0\uff0c\u5df2\u5408\u5e76\u672c\u8fdb\u7a0b\u6539\u52a8\u540e\u518d\u4fdd\u5b58"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_7
    :goto_3
    return v0

    :catchall_0
    move-exception p0

    .line 450
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return v0
.end method

.method private static restoreFromBackup(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 320
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->findLatestBackupFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 324
    :cond_0
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    sget-object p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5907\u4efd\u5185\u5bb9\u4e3a\u7a7a\uff0c\u8df3\u8fc7: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v0

    .line 330
    :cond_1
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    sget-object v5, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    invoke-static {v3, p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    .line 332
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5907\u4efd\u6062\u590d\u6210\u529f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#\u5907\u4efd\u6587\u4ef6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    move-exception v3

    .line 336
    :try_start_2
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5907\u4efd\u635f\u574f\uff0c\u5c1d\u8bd5\u4e0a\u4e00\u4efd: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    return v0

    :catchall_1
    move-exception p0

    .line 342
    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return v0
.end method

.method public static declared-synchronized save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    const-string p1, "\u4fdd\u5b58\u914d\u7f6e: "

    const-string v0, "\u914d\u7f6e\u4fdd\u5b58\u8df3\u8fc7#\u5185\u5b58\u914d\u7f6e\u5c5e\u4e8e["

    const-class v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 184
    :goto_0
    sget-object v3, Lio/github/lazyimmortal/sesame/data/ConfigV2;->loadedUserId:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->loadedUserId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u9ed8\u8ba4"

    goto :goto_1

    :cond_1
    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->loadedUserId:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]#\u62d2\u7edd\u5199\u5165["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v2, "\u9ed8\u8ba4"

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 186
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    .line 189
    :cond_3
    :try_start_1
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->valueBaseline:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->collectChangedFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    .line 193
    :cond_4
    :try_start_2
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->mergeDiskChanges(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object p0

    .line 197
    :cond_5
    :try_start_3
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 200
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->mergeKeepingSourceKeys(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object v0, v2

    .line 207
    :cond_7
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    const-string p0, "\u9ed8\u8ba4"

    .line 209
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->setDefaultConfigV2File(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 211
    :cond_8
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->setConfigV2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_9

    .line 216
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->backupConfigV2WithRolling(Ljava/lang/String;)V

    .line 217
    sput-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->lastSyncedText:Ljava/lang/String;

    .line 218
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->captureBaseline()V

    .line 221
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 222
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static stableValueText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 355
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 362
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 367
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 375
    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized unload()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 303
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    :cond_2
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


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isInit()Z

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isInit()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getModelFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelFields;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    return-object v0
.end method

.method public hasModelField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hasModelFields(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 24
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    const/16 v1, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->init:Z

    return v0
.end method

.method public setInit(Z)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 24
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->init:Z

    return-void
.end method

.method public setModelFieldsMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelFields;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    .line 59
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 61
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v1

    .line 62
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/lazyimmortal/sesame/data/ModelFields;

    if-eqz v4, :cond_3

    .line 64
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 65
    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v6, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 70
    invoke-virtual {v5, v6}, Lio/github/lazyimmortal/sesame/data/ModelField;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 81
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 83
    :goto_2
    invoke-virtual {v3, v5}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 88
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V

    .line 89
    invoke-virtual {v3, v4}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    goto :goto_3

    .line 92
    :cond_4
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->modelFieldsMap:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public toSaveStr()Ljava/lang/String;
    .locals 1

    .line 348
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigV2(init="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modelFieldsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
