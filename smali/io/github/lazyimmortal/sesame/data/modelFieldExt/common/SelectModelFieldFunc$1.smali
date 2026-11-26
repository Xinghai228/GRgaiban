.class Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;
.super Ljava/lang/Object;
.source "SelectModelFieldFunc.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$-CC;->newMapInstance()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$1;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
