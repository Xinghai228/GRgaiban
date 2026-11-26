.class public Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;
.super Ljava/lang/Object;
.source "ModelFieldShowDto.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private configValue:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private expandKey:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toShowDto(Lio/github/lazyimmortal/sesame/data/ModelField;)Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;)",
            "Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;"
        }
    .end annotation

    .line 27
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;-><init>()V

    .line 28
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setCode(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setType(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getExpandKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setExpandKey(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setConfigValue(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->setDescription(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getExpandKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getExpandKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_d

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :goto_5
    return v2

    :cond_e
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->configValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandKey()Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->expandKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 8
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getCode()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getExpandKey()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    const/16 v3, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getDescription()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->code:Ljava/lang/String;

    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->configValue:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->description:Ljava/lang/String;

    return-void
.end method

.method public setExpandKey(Ljava/lang/Object;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->expandKey:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelFieldShowDto(code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expandKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getExpandKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
