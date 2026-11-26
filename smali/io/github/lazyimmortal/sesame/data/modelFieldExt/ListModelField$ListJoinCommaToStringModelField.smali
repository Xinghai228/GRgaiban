.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;
.super Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;
.source "ListModelField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListJoinCommaToStringModelField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getConfigValue()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, ","

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->reset()V

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 64
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 65
    aget-object p1, p1, v2

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_1
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_3
    :goto_1
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->value:Ljava/lang/Object;

    return-void
.end method
