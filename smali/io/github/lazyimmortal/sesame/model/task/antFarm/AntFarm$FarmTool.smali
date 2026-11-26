.class Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FarmTool"
.end annotation


# instance fields
.field public toolCount:I

.field public toolHoldLimit:I

.field public toolId:Ljava/lang/String;

.field public toolType:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$ToolType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;)V
    .locals 0

    .line 4807
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$FarmTool;-><init>()V

    return-void
.end method
