.class public Lio/github/lazyimmortal/sesame/entity/AlipayReserve;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "AlipayReserve.java"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayReserve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 15
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->name:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayReserve;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    .line 22
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    new-instance v3, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;

    .line 28
    const-string v2, "reserve"

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->icon:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->getList()Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->list:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
