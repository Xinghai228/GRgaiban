.class public final enum Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;
.super Ljava/lang/Enum;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

.field public static final enum DOING:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

.field public static final enum END:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

.field public static final enum NOT_START:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;


# instance fields
.field public final nickNames:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;
    .locals 3

    const/4 v0, 0x3

    .line 1191
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->NOT_START:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->DOING:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->END:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1192
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const-string v1, "NOT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->NOT_START:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const-string v1, "DOING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->DOING:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->END:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    .line 1191
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->$values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1194
    const-string p1, "\u8fdb\u884c\u4e2d"

    const-string p2, "\u5df2\u7ed3\u675f"

    const-string v0, "\u672a\u5f00\u542f"

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->nickNames:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;
    .locals 1

    .line 1191
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;
    .locals 1

    .line 1191
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 1201
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->NOT_START:Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public nickName()Ljava/lang/String;
    .locals 2

    .line 1197
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->nickNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatus;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
