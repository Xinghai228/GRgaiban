.class public final enum Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;
.super Ljava/lang/Enum;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "neverlandTaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

.field public static final enum DISABLED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

.field public static final enum EXPIRED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

.field public static final enum FINISHED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

.field public static final enum TODO:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;
    .locals 3

    const/4 v0, 0x4

    .line 2981
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->EXPIRED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->DISABLED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2982
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const-string v1, "TODO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const-string v1, "EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->EXPIRED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->DISABLED:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    .line 2981
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2981
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;
    .locals 1

    .line 2981
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;
    .locals 1

    .line 2981
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$neverlandTaskStatus;

    return-object v0
.end method
