.class public Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "AlipayMonopolyTaskList.java"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 16
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->icon:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    .line 24
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    sget-object v2, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    new-instance v3, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->getList()Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 34
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object p0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->list:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
