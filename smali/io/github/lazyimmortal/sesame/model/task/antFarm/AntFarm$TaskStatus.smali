.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

.field public static final enum FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

.field public static final enum RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

.field public static final enum TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;
    .locals 3

    const/4 v0, 0x3

    .line 4799
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4800
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const-string v1, "TODO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    const-string v1, "RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    .line 4799
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4799
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;
    .locals 1

    .line 4799
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;
    .locals 1

    .line 4799
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    return-object v0
.end method
