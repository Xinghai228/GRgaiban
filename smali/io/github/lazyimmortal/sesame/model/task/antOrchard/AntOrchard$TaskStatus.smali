.class public final enum Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;
.super Ljava/lang/Enum;
.source "AntOrchard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

.field public static final enum FINISHED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

.field public static final enum RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

.field public static final enum TODO:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;
    .locals 3

    const/4 v0, 0x3

    .line 1904
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1905
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const-string v1, "TODO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    const-string v1, "RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->RECEIVED:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    .line 1904
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1904
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;
    .locals 1

    .line 1904
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;
    .locals 1

    .line 1904
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$TaskStatus;

    return-object v0
.end method
