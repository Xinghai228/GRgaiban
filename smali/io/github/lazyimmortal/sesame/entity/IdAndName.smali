.class public abstract Lio/github/lazyimmortal/sesame/entity/IdAndName;
.super Ljava/lang/Object;
.source "IdAndName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
        ">;"
    }
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field private pinyin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iconTextOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_4

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 p0, 0x80

    if-ge v2, p0, :cond_1

    .line 62
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I
    .locals 4

    .line 71
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->getPinyin()Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->getPinyin()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I

    move-result p1

    return p1
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "iconText"
    .end annotation

    .line 46
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, ""

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->iconTextOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/util/ArrayList;
    .locals 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->pinyin:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/HanziToPinyin;->getInstance()Lio/github/lazyimmortal/sesame/util/HanziToPinyin;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->pinyin:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;

    .line 35
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->pinyin:Ljava/util/ArrayList;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->pinyin:Ljava/util/ArrayList;

    return-object v0
.end method
