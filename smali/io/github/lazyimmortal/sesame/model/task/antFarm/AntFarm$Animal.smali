.class Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Animal"
.end annotation


# instance fields
.field public animalBuff:Ljava/lang/String;

.field public animalFeedStatus:Ljava/lang/String;

.field public animalId:Ljava/lang/String;

.field public animalInteractStatus:Ljava/lang/String;

.field public beHiredEndTime:Ljava/lang/Long;

.field public consumeSpeed:Ljava/lang/Double;

.field public currentFarmId:Ljava/lang/String;

.field public currentFarmMasterUserId:Ljava/lang/String;

.field public foodHaveEatten:Ljava/lang/Double;

.field public locationType:Ljava/lang/String;

.field public masterFarmId:Ljava/lang/String;

.field public startEatTime:Ljava/lang/Long;

.field public subAnimalType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V
    .locals 0

    .line 4786
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$Animal;-><init>()V

    return-void
.end method
