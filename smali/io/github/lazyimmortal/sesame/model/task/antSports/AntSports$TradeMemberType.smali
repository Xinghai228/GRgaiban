.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$TradeMemberType;
.super Ljava/lang/Object;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TradeMemberType"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NOT_TRADE:I = 0x2

.field public static final TRADE:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3033
    const-string v0, "\u62a2\u8d2d\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u62a2\u8d2d\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u62a2\u8d2d"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$TradeMemberType;->nickNames:[Ljava/lang/String;

    return-void
.end method
