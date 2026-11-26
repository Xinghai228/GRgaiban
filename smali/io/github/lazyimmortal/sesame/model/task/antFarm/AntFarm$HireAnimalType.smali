.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$HireAnimalType;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HireAnimalType"
.end annotation


# static fields
.field public static final HIRE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOT_HIRE:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4819
    const-string v0, "\u96c7\u4f63\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u96c7\u4f63\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u96c7\u4f63\u5c0f\u9e21"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$HireAnimalType;->nickNames:[Ljava/lang/String;

    return-void
.end method
