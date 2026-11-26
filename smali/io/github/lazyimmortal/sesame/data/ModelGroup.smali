.class public final enum Lio/github/lazyimmortal/sesame/data/ModelGroup;
.super Ljava/lang/Enum;
.source "ModelGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/data/ModelGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum BASE:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum FARM:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MEMBER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum ORCHARD:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum SPORTS:Lio/github/lazyimmortal/sesame/data/ModelGroup;

.field public static final enum STALL:Lio/github/lazyimmortal/sesame/data/ModelGroup;


# instance fields
.field final code:Ljava/lang/String;

.field final icon:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 3

    const/16 v0, 0x8

    .line 8
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/data/ModelGroup;

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->BASE:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FARM:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->STALL:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->ORCHARD:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->SPORTS:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MEMBER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/data/ModelGroup;->OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v6, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v4, "\u57fa\u7840"

    const-string v5, "svg/group/base.svg"

    const-string v1, "BASE"

    const/4 v2, 0x0

    const-string v3, "BASE"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lio/github/lazyimmortal/sesame/data/ModelGroup;->BASE:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 12
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v11, "\u68ee\u6797"

    const-string v12, "svg/group/forest.svg"

    const-string v8, "FOREST"

    const/4 v9, 0x1

    const-string v10, "FOREST"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 13
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v5, "\u5e84\u56ed"

    const-string v6, "svg/group/farm.svg"

    const-string v2, "FARM"

    const/4 v3, 0x2

    const-string v4, "FARM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FARM:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 14
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v11, "\u65b0\u6751"

    const-string v12, "svg/group/stall.svg"

    const-string v8, "STALL"

    const/4 v9, 0x3

    const-string v10, "STALL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->STALL:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 15
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v5, "\u519c\u573a"

    const-string v6, "svg/group/orchard.svg"

    const-string v2, "ORCHARD"

    const/4 v3, 0x4

    const-string v4, "ORCHARD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->ORCHARD:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 16
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v11, "\u8fd0\u52a8"

    const-string v12, "svg/group/sports.svg"

    const-string v8, "SPORTS"

    const/4 v9, 0x5

    const-string v10, "SPORTS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->SPORTS:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 17
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v5, "\u4f1a\u5458"

    const-string v6, "svg/group/member.svg"

    const-string v2, "MEMBER"

    const/4 v3, 0x6

    const-string v4, "MEMBER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MEMBER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 18
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    const-string v11, "\u5176\u4ed6"

    const-string v12, "svg/group/other.svg"

    const-string v8, "OTHER"

    const/4 v9, 0x7

    const-string v10, "OTHER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/github/lazyimmortal/sesame/data/ModelGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 8
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->$values()[Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->$VALUES:[Lio/github/lazyimmortal/sesame/data/ModelGroup;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MAP:Ljava/util/Map;

    .line 38
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->values()[Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 40
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MAP:Ljava/util/Map;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/data/ModelGroup;->code:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->code:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->name:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->icon:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 45
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getByCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 8
    const-class v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 8
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->$VALUES:[Lio/github/lazyimmortal/sesame/data/ModelGroup;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/data/ModelGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->name:Ljava/lang/String;

    return-object v0
.end method
