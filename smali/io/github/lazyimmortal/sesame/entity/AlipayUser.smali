.class public Lio/github/lazyimmortal/sesame/entity/AlipayUser;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "AlipayUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->name:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayUser;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/AlipayUser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/entity/AlipayUser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getList(Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getList(Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AlipayUser;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getUserMap()Ljava/util/Map;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    .line 27
    :try_start_0
    invoke-interface {p0, v3}, Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;->apply(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v4, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->icon:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 34
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$getList$0(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x1

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
