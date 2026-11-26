.class public Lio/github/lazyimmortal/sesame/entity/WalkPath;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "WalkPath.java"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/WalkPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 19
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->id:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->name:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/WalkPath;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    .line 25
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    new-instance v3, Lio/github/lazyimmortal/sesame/entity/WalkPath;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lio/github/lazyimmortal/sesame/entity/WalkPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    return-object v0
.end method

.method public static getThemeListFromRpc()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/WalkPath;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    .line 35
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSportsRpcCall;->queryThemeList()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    const-string v1, "themeList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 43
    const-string v3, "themeId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "themeName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    sget-object v4, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    new-instance v5, Lio/github/lazyimmortal/sesame/entity/WalkPath;

    invoke-direct {v5, v3, v2}, Lio/github/lazyimmortal/sesame/entity/WalkPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    const-string v1, "\u83b7\u53d6\u4e3b\u9898\u5217\u8868\u5931\u8d25:"

    const-string v2, "WalkPath"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/WalkPath;->getList()Ljava/util/List;

    const/4 v0, 0x0

    .line 60
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/WalkPath;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/WalkPath;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/WalkPath;->list:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
