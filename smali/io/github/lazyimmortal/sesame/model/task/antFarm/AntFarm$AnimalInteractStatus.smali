.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimalInteractStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

.field public static final enum GOTOSTEAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

.field public static final enum HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

.field public static final enum STEALING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;
    .locals 3

    const/4 v0, 0x3

    .line 4758
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->GOTOSTEAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->STEALING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4759
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->HOME:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const-string v1, "GOTOSTEAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->GOTOSTEAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    const-string v1, "STEALING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->STEALING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    .line 4758
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;
    .locals 1

    .line 4758
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;
    .locals 1

    .line 4758
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalInteractStatus;

    return-object v0
.end method
