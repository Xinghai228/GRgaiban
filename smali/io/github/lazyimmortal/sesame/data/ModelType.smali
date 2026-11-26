.class public final enum Lio/github/lazyimmortal/sesame/data/ModelType;
.super Ljava/lang/Enum;
.source "ModelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/data/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/data/ModelType;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/github/lazyimmortal/sesame/data/ModelType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NORMAL:Lio/github/lazyimmortal/sesame/data/ModelType;

.field public static final enum TASK:Lio/github/lazyimmortal/sesame/data/ModelType;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 3

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/data/ModelType;

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelType;->NORMAL:Lio/github/lazyimmortal/sesame/data/ModelType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u666e\u901a\u6a21\u5757"

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/github/lazyimmortal/sesame/data/ModelType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->NORMAL:Lio/github/lazyimmortal/sesame/data/ModelType;

    .line 10
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "\u4efb\u52a1\u6a21\u5757"

    const-string v5, "TASK"

    invoke-direct {v0, v5, v2, v3, v4}, Lio/github/lazyimmortal/sesame/data/ModelType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    .line 6
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ModelType;->$values()[Lio/github/lazyimmortal/sesame/data/ModelType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->$VALUES:[Lio/github/lazyimmortal/sesame/data/ModelType;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->MAP:Ljava/util/Map;

    .line 27
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ModelType;->values()[Lio/github/lazyimmortal/sesame/data/ModelType;

    move-result-object v0

    .line 28
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 29
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ModelType;->MAP:Ljava/util/Map;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/data/ModelType;->code:Ljava/lang/Integer;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/ModelType;->code:Ljava/lang/Integer;

    .line 20
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/ModelType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(Ljava/lang/Integer;)Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 1

    .line 34
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 1

    .line 6
    const-class v0, Lio/github/lazyimmortal/sesame/data/ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 1

    .line 6
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->$VALUES:[Lio/github/lazyimmortal/sesame/data/ModelType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/data/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/data/ModelType;

    return-object v0
.end method
