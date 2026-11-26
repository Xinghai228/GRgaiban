.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimalFeedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

.field public static final enum EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

.field public static final enum HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

.field public static final enum SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;
    .locals 3

    const/4 v0, 0x3

    .line 4754
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4755
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const-string v1, "HUNGRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const-string v1, "EATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    const-string v1, "SLEEPY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->SLEEPY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    .line 4754
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4754
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;
    .locals 1

    .line 4754
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;
    .locals 1

    .line 4754
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    return-object v0
.end method
