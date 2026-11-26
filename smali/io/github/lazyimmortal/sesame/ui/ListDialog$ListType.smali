.class public final enum Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;
.super Ljava/lang/Enum;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/ui/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

.field public static final enum CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

.field public static final enum RADIO:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

.field public static final enum SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;
    .locals 3

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->RADIO:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const-string v1, "RADIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->RADIO:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const-string v1, "CHECK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const-string v1, "SHOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    .line 86
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->$values()[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->$VALUES:[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;
    .locals 1

    .line 86
    const-class v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;
    .locals 1

    .line 86
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->$VALUES:[Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-object v0
.end method
