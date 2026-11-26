.class public final enum Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;
.super Ljava/lang/Enum;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MedalGenerationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

.field public static final enum CAN_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

.field public static final enum CAN_NOT_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

.field public static final enum GENERATED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;


# instance fields
.field public final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;
    .locals 3

    const/4 v0, 0x3

    .line 1216
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_NOT_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->GENERATED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1217
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const-string v1, "CAN_NOT_GENERATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_NOT_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const-string v1, "CAN_GENERATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->CAN_GENERATE:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    const-string v1, "GENERATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->GENERATED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    .line 1216
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1219
    const-string p1, "\u5df2\u96c6\u9f50"

    const-string p2, "\u5df2\u5408\u6210"

    const-string v0, "\u6536\u96c6\u4e2d"

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;
    .locals 1

    .line 1216
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;
    .locals 1

    .line 1216
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1226
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public nickName()Ljava/lang/String;
    .locals 2

    .line 1222
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatus;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
