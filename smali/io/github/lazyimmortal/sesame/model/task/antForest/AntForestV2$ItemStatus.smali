.class public final enum Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;
.super Ljava/lang/Enum;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum HAS_NEVER_EXPIRE_DRESS:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum NO_ENOUGH_STOCK:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum SECKILL_HAS_END:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final enum SECKILL_NOT_BEGIN:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;
    .locals 3

    const/4 v0, 0x6

    .line 6318
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->NO_ENOUGH_STOCK:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->SECKILL_NOT_BEGIN:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->SECKILL_HAS_END:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->HAS_NEVER_EXPIRE_DRESS:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 6319
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "NO_ENOUGH_POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->NO_ENOUGH_POINT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "NO_ENOUGH_STOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->NO_ENOUGH_STOCK:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "REACH_LIMIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->REACH_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "SECKILL_NOT_BEGIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->SECKILL_NOT_BEGIN:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "SECKILL_HAS_END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->SECKILL_HAS_END:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    const-string v1, "HAS_NEVER_EXPIRE_DRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->HAS_NEVER_EXPIRE_DRESS:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    .line 6318
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    .line 6321
    const-string v5, "\u79d2\u6740\u5df2\u7ed3\u675f"

    const-string v6, "\u4e0d\u9650\u65f6\u76ae\u80a4"

    const-string v1, "\u6d3b\u529b\u503c\u4e0d\u8db3"

    const-string v2, "\u5e93\u5b58\u91cf\u4e0d\u8db3"

    const-string v3, "\u5151\u6362\u8fbe\u4e0a\u9650"

    const-string v4, "\u79d2\u6740\u672a\u5f00\u59cb"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;
    .locals 1

    .line 6318
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;
    .locals 1

    .line 6318
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;

    return-object v0
.end method


# virtual methods
.method public nickName()Ljava/lang/String;
    .locals 2

    .line 6324
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ItemStatus;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
