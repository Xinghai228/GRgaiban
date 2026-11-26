.class public final enum Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;
.super Ljava/lang/Enum;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

.field public static final enum NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

.field public static final enum REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

.field public static final enum REACH_USER_HOLD_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;
    .locals 3

    const/4 v0, 0x3

    .line 4849
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_USER_HOLD_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4850
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const-string v1, "NO_ENOUGH_POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const-string v1, "REACH_LIMIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    const-string v1, "REACH_USER_HOLD_LIMIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->REACH_USER_HOLD_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    .line 4849
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    .line 4852
    const-string v0, "\u5151\u6362\u8fbe\u5230\u4e0a\u9650"

    const-string v1, "\u8fbe\u5230\u7528\u6237\u6301\u6709\u4e0a\u9650"

    const-string v2, "\u4e50\u56ed\u5e01\u4e0d\u8db3"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;
    .locals 1

    .line 4849
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;
    .locals 1

    .line 4849
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;

    return-object v0
.end method


# virtual methods
.method public nickName()Ljava/lang/String;
    .locals 2

    .line 4855
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ItemStatus;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
