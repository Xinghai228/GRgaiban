.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$TrainItemType;
.super Ljava/lang/Object;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrainItemType"
.end annotation


# static fields
.field public static final BALLET:I = 0x1

.field public static final BARBELL:I = 0x3

.field public static final MUD:I = 0x6

.field public static final NONE:I = 0x0

.field public static final SANDBAG:I = 0x2

.field public static final SKATE:I = 0x5

.field public static final YANGKO:I = 0x4

.field public static final itemTypes:[Ljava/lang/String;

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3046
    const-string v5, "\u73a9\u6ed1\u677f"

    const-string v6, "\u8e29\u6ce5\u5751"

    const-string v0, "\u4e0d\u8bad\u7ec3"

    const-string v1, "\u8df3\u82ad\u857e"

    const-string v2, "\u6253\u6c99\u5305"

    const-string v3, "\u4e3e\u6760\u94c3"

    const-string v4, "\u626d\u79e7\u6b4c"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$TrainItemType;->nickNames:[Ljava/lang/String;

    .line 3047
    const-string v6, "skate"

    const-string v7, "mud"

    const-string v1, ""

    const-string v2, "ballet"

    const-string v3, "sandbag"

    const-string v4, "barbell"

    const-string v5, "yangko"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$TrainItemType;->itemTypes:[Ljava/lang/String;

    return-void
.end method
