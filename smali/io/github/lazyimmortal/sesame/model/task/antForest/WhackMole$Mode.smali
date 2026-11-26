.class public final enum Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;
.super Ljava/lang/Enum;
.source "WhackMole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

.field public static final enum AGGRESSIVE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

.field public static final enum COMPATIBLE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;
    .locals 3

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->COMPATIBLE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->AGGRESSIVE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    const-string v1, "COMPATIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->COMPATIBLE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    .line 47
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    const-string v1, "AGGRESSIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->AGGRESSIVE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    .line 45
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->$values()[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;
    .locals 1

    .line 45
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;
    .locals 1

    .line 45
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    return-object v0
.end method
