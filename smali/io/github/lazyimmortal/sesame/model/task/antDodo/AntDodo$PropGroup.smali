.class public final enum Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;
.super Ljava/lang/Enum;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

.field public static final enum ADD_COLLECT_TO_FRIEND_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

.field public static final enum COLLECT_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

.field public static final enum COLLECT_HISTORY_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

.field public static final enum UNIVERSAL_CARD:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;


# instance fields
.field public final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;
    .locals 3

    const/4 v0, 0x4

    .line 1181
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->COLLECT_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->COLLECT_HISTORY_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->ADD_COLLECT_TO_FRIEND_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->UNIVERSAL_CARD:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1182
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const-string v1, "COLLECT_ANIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->COLLECT_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const-string v1, "COLLECT_HISTORY_ANIMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->COLLECT_HISTORY_ANIMAL:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const-string v1, "ADD_COLLECT_TO_FRIEND_LIMIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->ADD_COLLECT_TO_FRIEND_LIMIT:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    const-string v1, "UNIVERSAL_CARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->UNIVERSAL_CARD:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    .line 1181
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->$values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1184
    const-string p1, "\u62bd\u597d\u53cb\u5361\u9053\u5177"

    const-string p2, "\u4e07\u80fd\u5361\u9053\u5177"

    const-string v0, "\u62bd\u5361\u9053\u5177"

    const-string v1, "\u5386\u53f2\u56fe\u9274\u968f\u673a\u5361\u9053\u5177"

    filled-new-array {v0, v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;
    .locals 1

    .line 1181
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;
    .locals 1

    .line 1181
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;

    return-object v0
.end method


# virtual methods
.method public nickName()Ljava/lang/String;
    .locals 2

    .line 1187
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$PropGroup;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
