.class public final Lio/github/lazyimmortal/sesame/data/ModelConfig;
.super Ljava/lang/Object;
.source "ModelConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:Ljava/lang/String;

.field private final fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

.field private group:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    return-void
.end method

.method public constructor <init>(Lio/github/lazyimmortal/sesame/data/Model;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;-><init>()V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->code:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/Model;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/Model;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->group:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 35
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/Model;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/Model;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return v2

    :cond_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    return v2

    :cond_7
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getIcon()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_3
    return v2

    :cond_9
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object p1

    if-nez v1, :cond_a

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_4
    return v2

    :cond_b
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->group:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getModelField(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelField;

    return-object p1
.end method

.method public getModelFieldExt(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelField;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasModelField(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->fields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 9
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getIcon()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->code:Ljava/lang/String;

    return-void
.end method

.method public setGroup(Lio/github/lazyimmortal/sesame/data/ModelGroup;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->group:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelConfig;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelConfig(code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
