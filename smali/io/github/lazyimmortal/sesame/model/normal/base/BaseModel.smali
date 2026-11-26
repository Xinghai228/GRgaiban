.class public Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;
.super Lio/github/lazyimmortal/sesame/data/Model;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$TimedTaskModel;
    }
.end annotation


# static fields
.field public static backupConfigDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field public static backupLogDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private static batteryPerm:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static checkInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

.field private static debugMode:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static enableOnGoing:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static energyTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

.field private static execAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

.field private static maxGameTaskSubmitPerDay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private static miniGameTaskDisallowList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private static newRpc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static recordLog:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static rpcRequestList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

.field private static rpcRequestTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private static showToast:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static stayAwake:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static timedTaskModel:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private static timeoutRestart:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private static toastOffsetY:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private static waitWhenException:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

.field private static wakenAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/Model;-><init>()V

    return-void
.end method

.method public static destroyData()V
    .locals 1

    .line 170
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->clear()V

    .line 171
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->clear()V

    .line 172
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->clear()V

    .line 173
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->clear()V

    .line 174
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->clear()V

    .line 175
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->clear()V

    .line 176
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->clear()V

    .line 177
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->clear()V

    .line 178
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->clear()V

    .line 179
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->clear()V

    .line 180
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->clear()V

    .line 181
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->clear()V

    .line 182
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->clear()V

    .line 183
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->clear()V

    .line 184
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->clear()V

    .line 185
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->clear()V

    .line 186
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->clear()V

    .line 187
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->clear()V

    .line 188
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->clear()V

    .line 189
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->clear()V

    .line 190
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->clear()V

    .line 191
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->clear()V

    .line 192
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->clear()V

    .line 193
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getBackupConfigDays()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
    .locals 1

    .line 50
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->backupConfigDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    return-object v0
.end method

.method public static getBackupLogDays()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
    .locals 1

    .line 52
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->backupLogDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    return-object v0
.end method

.method public static getBatteryPerm()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 74
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->batteryPerm:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getCheckInterval()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;
    .locals 1

    .line 36
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->checkInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    return-object v0
.end method

.method public static getDebugMode()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 56
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->debugMode:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getEnableOnGoing()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 82
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->enableOnGoing:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getEnergyTime()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;
    .locals 1

    .line 42
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->energyTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    return-object v0
.end method

.method public static getExecAtTimeList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;
    .locals 1

    .line 38
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->execAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    return-object v0
.end method

.method public static getMaxGameTaskSubmitPerDay()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
    .locals 1

    .line 63
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->maxGameTaskSubmitPerDay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    return-object v0
.end method

.method public static getMiniGameTaskDisallowList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;
    .locals 1

    .line 67
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->miniGameTaskDisallowList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    return-object v0
.end method

.method public static getNewRpc()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 54
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->newRpc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getRecordLog()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 76
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->recordLog:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getRpcRequestList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;
    .locals 1

    .line 70
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->rpcRequestList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    return-object v0
.end method

.method public static getRpcRequestTaskList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;
    .locals 1

    .line 72
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->rpcRequestTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    return-object v0
.end method

.method public static getShowToast()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 78
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->showToast:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getStayAwake()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 34
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->stayAwake:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getTimedTaskModel()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;
    .locals 1

    .line 44
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->timedTaskModel:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    return-object v0
.end method

.method public static getTimeoutRestart()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 46
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->timeoutRestart:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public static getToastOffsetY()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
    .locals 1

    .line 80
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->toastOffsetY:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    return-object v0
.end method

.method public static getWaitWhenException()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;
    .locals 1

    .line 48
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->waitWhenException:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    return-object v0
.end method

.method public static getWakenAtTimeList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;
    .locals 1

    .line 40
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->wakenAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    return-object v0
.end method

.method public static initData()V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static initRpcRequest()V
    .locals 2

    .line 211
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->load()V

    .line 212
    const-string v0, "{\"methodName\":\"alipay.antforest.forest.h5.queryMiscInfo\",\"requestData\":[{\"queryBizType\":\"usingProp\",\"source\":\"SELF_HOME\",\"version\":\"20240201\"}]}"

    const-string v1, "\u67e5\u8be2\u68ee\u6797\u4f7f\u7528\u9053\u5177(\u793a\u4f8b)"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "{\"methodName\":\"alipay.antforest.forest.h5.updateUserConfig\",\"requestData\":[{\"configMap\":{\"inTeam\":\"Y\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]}"

    const-string v1, "\u5207\u6362\u5230\u7ec4\u961f\u6d47\u6c34(\u793a\u4f8b)"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "{\"methodName\":\"alipay.antforest.forest.h5.updateUserConfig\",\"requestData\":[{\"configMap\":{\"inTeam\":\"N\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]}"

    const-string v1, "\u5207\u6362\u5230\u4e2a\u4eba\u4e3b\u9875(\u793a\u4f8b)"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->save()Z

    return-void
.end method

.method public static isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 102
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 107
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->miniGameTaskDisallowList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic lambda$initData$0()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 154
    :try_start_0
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 155
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->initForest()V

    .line 156
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;->initOcean()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static taskRpcRequest()V
    .locals 10

    .line 222
    const-string v0, "\u81ea\u4e3b\u8c03\u7528\ud83c\ude38RPC["

    sget-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->rpcRequestList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 223
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 228
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->load()V

    .line 229
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 233
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Status;->getrpcRequestListToday(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 235
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 242
    :try_start_0
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/Status;->rpcRequestListToday(Ljava/lang/String;I)V

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 247
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    const-string v7, "methodName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    const-string v8, "requestData"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\u7b2c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]\u6b21\n\u65b9\u6cd5\uff1a"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u53c2\u6570\uff1a"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    .line 253
    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u8fd4\u56de\n\u6570\u636e\uff1a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 258
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "JSON\u89e3\u6790\u5931\u8d25\uff0c\u5b57\u7b26\u4e32\u5185\u5bb9\uff1a"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public boot(Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public getEnableFieldName()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "\u542f\u7528\u6a21\u5757"

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 18

    .line 126
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 127
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 127
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "stayAwake"

    const-string v4, "\u4fdd\u6301\u5524\u9192"

    invoke-direct {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->stayAwake:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 128
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v3, 0xea60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v4, "checkInterval"

    const-string v5, "\u6267\u884c\u95f4\u9694(\u5206\u949f)"

    move-object v3, v1

    move-object v7, v10

    move-object/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->checkInterval:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 129
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    const-string v3, "2359"

    const-string v4, "24"

    const-string v5, "065530"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/ListUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "execAtTimeList"

    const-string v5, "\u5b9a\u65f6\u6267\u884c(\u5173\u95ed:-1)"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->execAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 130
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    const-string v3, "0650"

    const-string v4, "2350"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/ListUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "wakenAtTimeList"

    const-string v5, "\u5b9a\u65f6\u5524\u9192(\u5173\u95ed:-1)"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->wakenAtTimeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 131
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    const-string v3, "0700-0731"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/ListUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "energyTime"

    const-string v5, "\u53ea\u6536\u80fd\u91cf\u65f6\u95f4(\u8303\u56f4)"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->energyTime:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 132
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    const/4 v3, 0x0

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v3, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$TimedTaskModel;->nickNames:[Ljava/lang/String;

    const-string v4, "timedTaskModel"

    const-string v5, "\u5b9a\u65f6\u4efb\u52a1\u6a21\u5f0f"

    invoke-direct {v1, v4, v5, v8, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->timedTaskModel:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 133
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u8d85\u65f6\u91cd\u542f"

    const-string v4, "timeoutRestart"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->timeoutRestart:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 134
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v3, 0x5a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "waitWhenException"

    const-string v13, "\u5f02\u5e38\u7b49\u5f85\u65f6\u95f4(\u5206\u949f)"

    move-object v11, v1

    move-object v15, v8

    invoke-direct/range {v11 .. v17}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->waitWhenException:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 135
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "backupConfigDays"

    const-string v5, "\u6309\u5929\u548c\u4fee\u6539\u5907\u4efd\u914d\u7f6e\u4fdd\u5b58\u6570(\u6eda\u52a8\u8986\u76d6)"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->backupConfigDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 136
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v3, "\u4fdd\u7559\u4e4b\u524d\u65e5\u5fd7\u5929\u6570"

    const-string v4, "backupLogDays"

    invoke-direct {v1, v4, v3, v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->backupLogDays:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 137
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u4f7f\u7528\u65b0\u63a5\u53e3(\u6700\u4f4e\u652f\u6301v10.3.96.8100)"

    const-string v4, "newRpc"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->newRpc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 138
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u5f00\u542f\u6293\u5305(\u542b\u5c0f\u7a0b\u5e8f\u6570\u636e)"

    const-string v4, "debugMode"

    invoke-direct {v1, v4, v3, v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->debugMode:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 139
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v4, "maxGameTaskSubmitPerDay"

    const-string v5, "\u94fe\u63a5\u4efb\u52a1\u5355\u4e2a\u6bcf\u65e5\u6700\u5927\u6267\u884c\u6b21\u6570(0=\u4ec5\u6536\u96c6\u4e0d\u6267\u884c)"

    move-object v3, v1

    move-object v6, v10

    move-object v7, v8

    move-object v10, v8

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->maxGameTaskSubmitPerDay:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 140
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "miniGameTaskDisallowList"

    const-string v6, "\u8df3\u8f6c\u4efb\u52a1 | \u4e0d\u5141\u8bb8\u6267\u884c\u5217\u8868(\u6e38\u620f\u3001\u7b2c\u4e09\u65b9)"

    invoke-direct {v1, v5, v6, v3, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->miniGameTaskDisallowList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 141
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v15, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda2;

    invoke-direct {v15}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda2;-><init>()V

    const-string v16, "\u8bf7\u586b\u5199\u6bcf\u65e5\u6267\u884c\u6b21\u6570"

    const-string v12, "rpcRequestList"

    const-string v13, "RPC\u8bf7\u6c42\u5217\u8868\u53ca\u6bcf\u65e5\u6267\u884c\u6570(\u614e\u7528)"

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->rpcRequestList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 142
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$$ExternalSyntheticLambda3;-><init>()V

    const-string v8, "\u957f\u6309\u5220\u9664RPC\u5217\u8868\u9879\u7528"

    const-string v4, "rpcRequestTaskList"

    const-string v5, "RPC\u53ef\u9009\u4efb\u52a1\u5217\u8868(\u957f\u6309\u5217\u8868\u4e2d\u7684\u9879\u4ec5\u79fb\u9664\u7528\uff0c\u5185\u5bb9\u9700\u6253\u5f00rpcResquest.json\u6587\u4ef6\u914d\u7f6e)"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;Ljava/lang/String;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->rpcRequestTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 143
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u4e3a\u652f\u4ed8\u5b9d\u7533\u8bf7\u540e\u53f0\u8fd0\u884c\u6743\u9650"

    const-string v4, "batteryPerm"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->batteryPerm:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 144
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u8bb0\u5f55\u65e5\u5fd7"

    const-string v4, "recordLog"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->recordLog:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 145
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6c14\u6ce1\u63d0\u793a"

    const-string v4, "showToast"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->showToast:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 146
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v2, "\u6c14\u6ce1\u7eb5\u5411\u504f\u79fb"

    const-string v3, "toastOffsetY"

    invoke-direct {v1, v3, v2, v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->toastOffsetY:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 147
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v2, "\u5f00\u542f\u72b6\u6001\u680f\u7981\u5220"

    const-string v3, "enableOnGoing"

    invoke-direct {v1, v3, v2, v9}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->enableOnGoing:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 92
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->BASE:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "\u57fa\u7840"

    return-object v0
.end method
