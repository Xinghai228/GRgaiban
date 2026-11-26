.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubAnimalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

.field public static final enum GUEST:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

.field public static final enum NORMAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

.field public static final enum PIRATE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

.field public static final enum WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;
    .locals 3

    const/4 v0, 0x4

    .line 4762
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->NORMAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->GUEST:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->PIRATE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4763
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->NORMAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const-string v1, "GUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->GUEST:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const-string v1, "PIRATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->PIRATE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    const-string v1, "WORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    .line 4762
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;
    .locals 1

    .line 4762
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;
    .locals 1

    .line 4762
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    return-object v0
.end method
