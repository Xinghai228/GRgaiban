.class public final enum Lio/github/lazyimmortal/sesame/data/RunType;
.super Ljava/lang/Enum;
.source "RunType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/data/RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/data/RunType;

.field public static final enum DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/github/lazyimmortal/sesame/data/RunType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

.field public static final enum PACKAGE:Lio/github/lazyimmortal/sesame/data/RunType;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 3

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/data/RunType;

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->PACKAGE:Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u5df2\u5173\u95ed"

    const-string v4, "DISABLE"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/github/lazyimmortal/sesame/data/RunType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    .line 13
    new-instance v0, Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "\u5df2\u6fc0\u6d3b"

    const-string v5, "MODEL"

    invoke-direct {v0, v5, v2, v3, v4}, Lio/github/lazyimmortal/sesame/data/RunType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

    .line 15
    new-instance v0, Lio/github/lazyimmortal/sesame/data/RunType;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "\u5df2\u52a0\u8f7d"

    const-string v5, "PACKAGE"

    invoke-direct {v0, v5, v2, v3, v4}, Lio/github/lazyimmortal/sesame/data/RunType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->PACKAGE:Lio/github/lazyimmortal/sesame/data/RunType;

    .line 8
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RunType;->$values()[Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->$VALUES:[Lio/github/lazyimmortal/sesame/data/RunType;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->MAP:Ljava/util/Map;

    .line 32
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RunType;->values()[Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object v0

    .line 33
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 34
    sget-object v4, Lio/github/lazyimmortal/sesame/data/RunType;->MAP:Ljava/util/Map;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/data/RunType;->code:Ljava/lang/Integer;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/RunType;->code:Ljava/lang/Integer;

    .line 25
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/RunType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(Ljava/lang/Integer;)Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 1

    .line 39
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/RunType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 1

    .line 8
    const-class v0, Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/RunType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/data/RunType;
    .locals 1

    .line 8
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->$VALUES:[Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/data/RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/data/RunType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RunType;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RunType;->name:Ljava/lang/String;

    return-object v0
.end method
