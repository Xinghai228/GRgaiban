.class public Lio/github/lazyimmortal/sesame/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 19
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 24
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 28
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 29
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 30
    array-length v0, p0

    if-ne v0, v2, :cond_3

    .line 31
    aget-object p0, p0, v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 34
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 35
    array-length v0, p0

    if-ne v0, v2, :cond_3

    .line 36
    aget-object p0, p0, v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirstParamClass(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getParamClass(Ljava/lang/reflect/Method;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstParamType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getParamType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getGenerics(Ljava/lang/Class;)[Ljava/lang/reflect/ParameterizedType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->toParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 134
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 135
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->toParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_2
    new-array p0, v2, [Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/ParameterizedType;

    return-object p0
.end method

.method public static getParamClass(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getParamClasses(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getParamClasses(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getParamType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/Type;
    .locals 1

    .line 61
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getParamTypes(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getParamTypes(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getReturnClass(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTypeArgument(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 1

    .line 91
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->toParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs hasTypeVariable([Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 150
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 153
    aget-object v3, p0, v2

    .line 154
    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isUnknown(Ljava/lang/reflect/Type;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 145
    instance-of p0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->toParameterizedType(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static toParameterizedType(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 109
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 110
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    .line 112
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 113
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TypeUtil;->getGenerics(Ljava/lang/Class;)[Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    .line 114
    array-length v0, p0

    if-le v0, p1, :cond_1

    .line 115
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
