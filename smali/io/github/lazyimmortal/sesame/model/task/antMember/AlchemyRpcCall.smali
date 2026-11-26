.class public Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;
.super Ljava/lang/Object;
.source "AlchemyRpcCall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alchemy()Ljava/lang/String;
    .locals 2

    .line 30
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.alchemy"

    const-string v1, "[{\"outerNewHand\":false}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static claimAward()Ljava/lang/String;
    .locals 2

    .line 46
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.claimAward"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectCreditFeedback()Ljava/lang/String;
    .locals 2

    .line 122
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback"

    const-string v1, "[{\"collectAll\":true,\"status\":\"UNCLAIMED\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static completeTimeLimitedTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.completeTask"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openPointTreasureBox()Ljava/lang/String;
    .locals 2

    .line 114
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.PointHomeRpcManager.openTreasureBox"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryAvailableItems()Ljava/lang/String;
    .locals 2

    .line 87
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.ItemRpcManager.queryAvailableItems"

    const-string v1, "[{\"bizScene\":\"ALCHEMY\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryEntryList()Ljava/lang/String;
    .locals 2

    .line 39
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryEntryList"

    const-string v1, "[{\"version\":\"2025-10-22\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryGoldenBean()Ljava/lang/String;
    .locals 2

    .line 79
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryGoldenBean"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryHome()Ljava/lang/String;
    .locals 2

    .line 21
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryHome"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPointTreasureBox()Ljava/lang/String;
    .locals 2

    .line 106
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.PointHomeRpcManager.queryTreasureBox"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTimeLimitedTask()Ljava/lang/String;
    .locals 2

    .line 54
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.queryTask"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTreasureBox()Ljava/lang/String;
    .locals 2

    .line 71
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyTreasureBoxRpcManager.query"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"itemId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"itemType\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.antgroup.zmxy.zmmemberop.biz.rpc.ItemRpcManager.useItem"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
