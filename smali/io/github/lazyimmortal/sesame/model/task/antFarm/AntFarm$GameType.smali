.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

.field public static final enum flyGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

.field public static final gameNames:[Ljava/lang/CharSequence;

.field public static final enum hitGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

.field public static final enum jumpGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

.field public static final enum starGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;
    .locals 3

    const/4 v0, 0x4

    .line 4776
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->starGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->jumpGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->flyGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->hitGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 4777
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const-string v1, "starGame"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->starGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const-string v1, "jumpGame"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->jumpGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const-string v1, "flyGame"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->flyGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const-string v1, "hitGame"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->hitGame:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    .line 4776
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    const/4 v0, 0x4

    .line 4779
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "\u661f\u661f\u7403"

    aput-object v1, v0, v2

    const-string v1, "\u767b\u5c71\u8d5b"

    aput-object v1, v0, v3

    const-string v1, "\u98de\u884c\u8d5b"

    aput-object v1, v0, v4

    const-string v1, "\u6b22\u4e50\u63cd\u5c0f\u9e21"

    aput-object v1, v0, v5

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->gameNames:[Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4776
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;
    .locals 1

    .line 4776
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;
    .locals 1

    .line 4776
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;

    return-object v0
.end method


# virtual methods
.method public gameName()Ljava/lang/CharSequence;
    .locals 2

    .line 4782
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->gameNames:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$GameType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
