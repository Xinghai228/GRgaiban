.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$DonateCharityCoinType;
.super Ljava/lang/Object;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DonateCharityCoinType"
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final ONE:I = 0x1

.field public static final ZERO:I

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3024
    const-string v0, "\u6350\u8d60\u4e00\u4e2a\u9879\u76ee"

    const-string v1, "\u6350\u8d60\u6240\u6709\u9879\u76ee"

    const-string v2, "\u4e0d\u6350\u8d60"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$DonateCharityCoinType;->nickNames:[Ljava/lang/String;

    return-void
.end method
