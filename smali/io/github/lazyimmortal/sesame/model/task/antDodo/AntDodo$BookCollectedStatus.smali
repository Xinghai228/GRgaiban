.class public final enum Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;
.super Ljava/lang/Enum;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookCollectedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

.field public static final enum COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

.field public static final enum NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;
    .locals 3

    const/4 v0, 0x2

    .line 1208
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1209
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    const-string v1, "NOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->NOT_COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->COMPLETED:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    .line 1208
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;
    .locals 1

    .line 1208
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;
    .locals 1

    .line 1208
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatus;->name()Ljava/lang/String;

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
