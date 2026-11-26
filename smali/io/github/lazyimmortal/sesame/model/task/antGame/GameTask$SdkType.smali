.class public final enum Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
.super Ljava/lang/Enum;
.source "GameTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

.field public static final enum GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
    .locals 3

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v1, "GAMESAPI2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    .line 41
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->$values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
    .locals 1

    .line 41
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
    .locals 1

    .line 41
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    return-object v0
.end method
