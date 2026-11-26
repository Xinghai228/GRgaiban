.class public final enum Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;
.super Ljava/lang/Enum;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

.field public static final enum AVAILABLE:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

.field public static final enum INSUFFICIENT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

.field public static final enum ROBBED:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

.field public static final enum WAITING:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;
    .locals 3

    const/4 v0, 0x4

    .line 6243
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->AVAILABLE:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->WAITING:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->INSUFFICIENT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->ROBBED:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6247
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->AVAILABLE:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    .line 6251
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const-string v1, "WAITING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->WAITING:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    .line 6255
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const-string v1, "INSUFFICIENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->INSUFFICIENT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    .line 6259
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    const-string v1, "ROBBED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->ROBBED:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    .line 6243
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;
    .locals 1

    .line 6243
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;
    .locals 1

    .line 6243
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    return-object v0
.end method
