.class public final enum Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;
.super Ljava/lang/Enum;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

.field public static final enum DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

.field public static final enum MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

.field public static final enum YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;
    .locals 3

    const/4 v0, 0x3

    .line 200
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 201
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const-string v1, "YEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const-string v1, "MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    const-string v1, "DAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    .line 200
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->$values()[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->$VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;
    .locals 1

    .line 200
    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;
    .locals 1

    .line 200
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->$VALUES:[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    return-object v0
.end method
