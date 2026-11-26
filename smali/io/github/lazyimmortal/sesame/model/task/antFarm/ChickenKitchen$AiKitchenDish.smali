.class final Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;
.super Ljava/lang/Object;
.source "ChickenKitchen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AiKitchenDish"
.end annotation


# instance fields
.field private highestScore:I

.field private final ingredientIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->ingredientIds:Ljava/util/List;

    .line 62
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->highestScore:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I
    .locals 0

    .line 56
    iget p0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->highestScore:I

    return p0
.end method

.method static synthetic access$002(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;I)I
    .locals 0

    .line 56
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->highestScore:I

    return p1
.end method

.method static synthetic access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->ingredientIds:Ljava/util/List;

    return-object p0
.end method
