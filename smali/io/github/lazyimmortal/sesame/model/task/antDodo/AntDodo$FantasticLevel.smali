.class public final enum Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;
.super Ljava/lang/Enum;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FantasticLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

.field public static final enum COMMON:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

.field public static final enum MAGIC:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

.field public static final enum RARE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;


# instance fields
.field public final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;
    .locals 3

    const/4 v0, 0x3

    .line 1230
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->COMMON:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->RARE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->MAGIC:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1231
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->COMMON:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const-string v1, "RARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->RARE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    const-string v1, "MAGIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->MAGIC:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    .line 1230
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->$values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1233
    const-string p1, "\u7a00\u6709"

    const-string p2, "\u795e\u5947"

    const-string v0, "\u666e\u901a"

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;
    .locals 1

    .line 1230
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;
    .locals 1

    .line 1230
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;

    return-object v0
.end method


# virtual methods
.method public nickName()Ljava/lang/String;
    .locals 2

    .line 1236
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
