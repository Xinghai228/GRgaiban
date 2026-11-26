.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalWay;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendBackAnimalWay"
.end annotation


# static fields
.field public static final HIT:I = 0x0

.field public static final NORMAL:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4738
    const-string v0, "\u653b\u51fb"

    const-string v1, "\u5e38\u89c4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SendBackAnimalWay;->nickNames:[Ljava/lang/String;

    return-void
.end method
