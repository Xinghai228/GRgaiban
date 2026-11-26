.class public final enum Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;
.super Ljava/lang/Enum;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathCompleteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

.field public static final enum COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

.field public static final enum INTERRUPT:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

.field public static final enum JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

.field public static final enum NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

.field public static final enum NOT_JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;
    .locals 3

    const/4 v0, 0x5

    .line 2997
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->NOT_JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->INTERRUPT:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2998
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const-string v1, "NOT_JOIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->NOT_JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const-string v1, "JOIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->JOIN:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const-string v1, "NOT_COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    const-string v1, "INTERRUPT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->INTERRUPT:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    .line 2997
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2997
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;
    .locals 1

    .line 2997
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;
    .locals 1

    .line 2997
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$PathCompleteStatus;

    return-object v0
.end method
