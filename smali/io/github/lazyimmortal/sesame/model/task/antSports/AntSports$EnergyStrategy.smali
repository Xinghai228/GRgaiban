.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$EnergyStrategy;
.super Ljava/lang/Object;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnergyStrategy"
.end annotation


# static fields
.field public static final CONSERVE:I = 0x1

.field public static final MAXIMIZE:I = 0x2

.field public static final NONE:I

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2990
    const-string v0, "\u4fdd\u5b88\u7b56\u7565"

    const-string v1, "\u6700\u5927\u5316\u6536\u76ca"

    const-string v2, "\u4e0d\u64cd\u4f5c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$EnergyStrategy;->nickNames:[Ljava/lang/String;

    return-void
.end method
