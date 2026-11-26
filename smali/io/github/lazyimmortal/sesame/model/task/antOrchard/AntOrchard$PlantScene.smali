.class public final enum Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;
.super Ljava/lang/Enum;
.source "AntOrchard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlantScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

.field public static final enum main:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

.field public static final enum yeb:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;


# instance fields
.field private final nickname:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;
    .locals 3

    const/4 v0, 0x2

    .line 1871
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->main:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->yeb:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1872
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    const/4 v1, 0x0

    const-string v2, "\u4e3b\u573a\u666f"

    const-string v3, "main"

    invoke-direct {v0, v3, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->main:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    const/4 v1, 0x1

    const-string v2, "\u4f59\u989d\u5b9d\u573a\u666f"

    const-string v3, "yeb"

    invoke-direct {v0, v3, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->yeb:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    .line 1871
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->$values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1877
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->nickname:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;
    .locals 1

    .line 1885
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    move-result-object v0

    return-object v0
.end method

.method public static getList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1892
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;
    .locals 1

    .line 1871
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;
    .locals 1

    .line 1871
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    return-object v0
.end method


# virtual methods
.method public nickname()Ljava/lang/String;
    .locals 1

    .line 1881
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->nickname:Ljava/lang/String;

    return-object v0
.end method
