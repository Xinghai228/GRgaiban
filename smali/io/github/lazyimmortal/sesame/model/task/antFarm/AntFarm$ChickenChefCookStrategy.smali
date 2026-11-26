.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ChickenChefCookStrategy;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChickenChefCookStrategy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MASTERY:I = 0x0

.field public static final RANDOM:I = 0x2

.field public static final RICHNESS:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4867
    const-string v0, "\u4e30\u5bcc\u4f18\u5148"

    const-string v1, "\u968f\u673a\u5236\u4f5c"

    const-string v2, "\u7cbe\u901a\u4f18\u5148"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ChickenChefCookStrategy;->nickNames:[Ljava/lang/String;

    return-void
.end method
