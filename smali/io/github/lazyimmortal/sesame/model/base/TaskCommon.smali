.class public Lio/github/lazyimmortal/sesame/model/base/TaskCommon;
.super Ljava/lang/Object;
.source "TaskCommon.java"


# static fields
.field public static volatile IS_AFTER_6AM:Ljava/lang/Boolean;

.field public static volatile IS_AFTER_8AM:Ljava/lang/Boolean;

.field public static volatile IS_ENERGY_TIME:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    .line 10
    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_AFTER_6AM:Ljava/lang/Boolean;

    .line 12
    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_AFTER_8AM:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update()V
    .locals 4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getEnergyTime()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->checkInTimeRange(Ljava/lang/Long;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "0600"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_AFTER_6AM:Ljava/lang/Boolean;

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "0800"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_AFTER_8AM:Ljava/lang/Boolean;

    return-void
.end method
