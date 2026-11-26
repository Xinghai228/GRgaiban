.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimalBuff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

.field public static final enum ACCELERATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

.field public static final enum INJURED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

.field public static final enum NONE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;
    .locals 3

    const/4 v0, 0x3

    .line 4750
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->ACCELERATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->INJURED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->NONE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4751
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const-string v1, "ACCELERATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->ACCELERATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const-string v1, "INJURED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->INJURED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->NONE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    .line 4750
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4750
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;
    .locals 1

    .line 4750
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;
    .locals 1

    .line 4750
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalBuff;

    return-object v0
.end method
