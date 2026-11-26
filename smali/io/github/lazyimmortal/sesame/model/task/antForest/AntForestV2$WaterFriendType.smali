.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$WaterFriendType;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WaterFriendType"
.end annotation


# static fields
.field public static final WATER_00:I = 0x0

.field public static final WATER_10:I = 0x1

.field public static final WATER_18:I = 0x2

.field public static final WATER_33:I = 0x3

.field public static final WATER_66:I = 0x4

.field public static final nickNames:[Ljava/lang/String;

.field public static final waterEnergy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6346
    const-string v0, "\u6d47\u6c3433\u514b"

    const-string v1, "\u6d47\u6c3466\u514b"

    const-string v2, "\u4e0d\u6d47\u6c34"

    const-string v3, "\u6d47\u6c3410\u514b"

    const-string v4, "\u6d47\u6c3418\u514b"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$WaterFriendType;->nickNames:[Ljava/lang/String;

    const/16 v0, 0x21

    const/16 v1, 0x42

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x12

    .line 6347
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$WaterFriendType;->waterEnergy:[I

    return-void
.end method
