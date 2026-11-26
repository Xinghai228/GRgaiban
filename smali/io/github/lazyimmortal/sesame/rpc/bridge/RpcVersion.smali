.class public final enum Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
.super Ljava/lang/Enum;
.source "RpcVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NEW:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

.field public static final enum OLD:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;


# instance fields
.field final code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 3

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->OLD:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->NEW:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    const-string v1, "OLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->OLD:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    .line 12
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    const-string v1, "NEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->NEW:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    .line 8
    invoke-static {}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->$values()[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->$VALUES:[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->MAP:Ljava/util/Map;

    .line 26
    invoke-static {}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->values()[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    move-result-object v0

    .line 27
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 28
    sget-object v4, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->MAP:Ljava/util/Map;

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->code:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->code:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 33
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 8
    const-class v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 8
    sget-object v0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->$VALUES:[Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;->code:Ljava/lang/String;

    return-object v0
.end method
