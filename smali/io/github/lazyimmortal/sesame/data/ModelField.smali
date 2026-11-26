.class public Lio/github/lazyimmortal/sesame/data/ModelField;
.super Ljava/lang/Object;
.source "ModelField.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field protected defaultValue:Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field protected volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/reflect/Type;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0, p1}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>()V

    .line 54
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->code:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->description:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;->setObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;-><init>()V

    .line 63
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->code:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->name:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->defaultValue:Ljava/lang/Object;

    .line 66
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->description:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;->setObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 141
    const-string p1, "\u65e0\u914d\u7f6e\u9879"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/data/ModelField;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/data/ModelField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelField;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValueType()Ljava/lang/reflect/Type;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDefaultValue()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

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

.method public fromConfigValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 103
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/data/ModelField;->toConfigValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 80
    const-string v0, "DEFAULT"

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueType()Ljava/lang/reflect/Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 131
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sget v1, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    sget v1, Lio/github/lazyimmortal/sesame/R$drawable;->button:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x800013

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x96

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 v1, 0xb4

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 141
    new-instance v1, Lio/github/lazyimmortal/sesame/data/ModelField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/github/lazyimmortal/sesame/data/ModelField$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 24
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValueType()Ljava/lang/reflect/Type;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDescription()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDefaultValue()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

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

.method public reset()V
    .locals 2

    .line 121
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->defaultValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    return-void

    .line 126
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->code:Ljava/lang/String;

    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->fromConfigValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->name:Ljava/lang/String;

    return-void
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->reset()V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->valueType:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/ModelField;->value:Ljava/lang/Object;

    return-void
.end method

.method public toConfigValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelField(valueType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/ModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
