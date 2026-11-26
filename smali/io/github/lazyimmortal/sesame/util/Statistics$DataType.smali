.class public final enum Lio/github/lazyimmortal/sesame/util/Statistics$DataType;
.super Ljava/lang/Enum;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/util/Statistics$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum TIME:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

.field public static final enum WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;
    .locals 3

    const/4 v0, 0x6

    .line 204
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->TIME:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 205
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->TIME:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "COLLECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "HELPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "WATERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "WATEREDCOUNT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    const-string v1, "WATERINGCOUNT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    .line 204
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->$values()[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->$VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/util/Statistics$DataType;
    .locals 1

    .line 204
    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;
    .locals 1

    .line 204
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->$VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    return-object v0
.end method
