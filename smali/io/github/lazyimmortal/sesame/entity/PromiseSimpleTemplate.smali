.class public Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "PromiseSimpleTemplate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;->name:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    new-instance v3, Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lio/github/lazyimmortal/sesame/entity/PromiseSimpleTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
