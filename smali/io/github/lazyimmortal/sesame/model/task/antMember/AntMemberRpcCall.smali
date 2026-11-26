.class public Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;
.super Ljava/lang/Object;
.source "AntMemberRpcCall.java"


# static fields
.field public static final ANNUAL_REVIEW_APPLY_COMPONENT:Ljava/lang/String; = "independent_component_task_reward_v2_02888775_independent_component_task_reward_apply"

.field public static final ANNUAL_REVIEW_COMPONENT_PREFIX:Ljava/lang/String; = "independent_component_task_reward_v2_02888775"

.field public static final ANNUAL_REVIEW_GET_REWARD_COMPONENT:Ljava/lang/String; = "independent_component_task_reward_v2_02888775_independent_component_task_reward_get_reward"

.field public static final ANNUAL_REVIEW_OPERATION_IDENTIFY:Ljava/lang/String; = "independent_component_program2025111803036407"

.field public static final ANNUAL_REVIEW_PROCESS_COMPONENT:Ljava/lang/String; = "independent_component_task_reward_v2_02888775_independent_component_task_reward_process"

.field public static final ANNUAL_REVIEW_QUERY_COMPONENT:Ljava/lang/String; = "independent_component_task_reward_v2_02888775_independent_component_task_reward_query"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreditAccumulateStrategyRpcManager()Ljava/lang/String;
    .locals 2

    .line 475
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CreditAccumulateStrategyRpcManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 295
    const-string p0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3"

    const-string v0, "[{\"chInfo\":\"ch_zhimahome__chsub_zml_doudi\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"sceneCode\":\"DAILY_MUST_DO_CARD\",\"searchAddToHomeTask\":true,\"searchGuidePopFlag\":true,\"searchShareAssistTask\":true,\"searchSubscribeTask\":true,\"version\":\"new\"}]"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static alchemyClaimAward()Ljava/lang/String;
    .locals 2

    .line 611
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.claimAward"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alchemyCompleteTimeLimitedTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 626
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

.method public static alchemyQueryCheckIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"sceneCode\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"version\":\"2025-10-22\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static alchemyQueryCheckInTasks()Ljava/lang/String;
    .locals 2

    .line 594
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists"

    const-string v1, "[{\"sceneCode\":\"alchemy\",\"version\":\"2025-10-22\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alchemyQueryHome()Ljava/lang/String;
    .locals 2

    .line 579
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryHome"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alchemyQueryTasks()Ljava/lang/String;
    .locals 2

    .line 586
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3"

    const-string v1, "[{\"chInfo\":\"\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"searchSubscribeTask\":true,\"version\":\"alchemy\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static alchemyQueryTimeLimitedTask()Ljava/lang/String;
    .locals 2

    .line 618
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.queryTask"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static annualReviewApplyTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 809
    const-string v0, "independent_component_task_reward_v2_02888775_independent_component_task_reward_apply"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 810
    const-string v2, "channel"

    const-string v3, "share"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string v2, "cityCode"

    const-string v3, "110000"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v2, "operationParamIdentify"

    const-string v3, "independent_component_program2025111803036407"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 816
    const-string v3, "code"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    const-string p0, "consultAfterLuckDraw"

    const-string v3, "false"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    const-string p0, "skipLuckDrawConsult"

    const-string v3, "true"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 821
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v0, "components"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string p0, "alipay.imasp.program.programInvoke"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 827
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static annualReviewGetReward(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 868
    const-string v0, "independent_component_task_reward_v2_02888775_independent_component_task_reward_get_reward"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 869
    const-string v2, "channel"

    const-string v3, "share"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    const-string v2, "cityCode"

    const-string v3, "110000"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v2, "operationParamIdentify"

    const-string v3, "independent_component_program2025111803036407"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 874
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 875
    const-string v3, "code"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    const-string p0, "consultAfterLuckDraw"

    const-string v3, "false"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    const-string p0, "recordNo"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    const-string p0, "skipLuckDrawConsult"

    const-string p1, "true"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 881
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    const-string p1, "components"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string p0, "alipay.imasp.program.programInvoke"

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 887
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static annualReviewProcessTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 839
    const-string v0, "independent_component_task_reward_v2_02888775_independent_component_task_reward_process"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 840
    const-string v2, "channel"

    const-string v3, "share"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v2, "cityCode"

    const-string v3, "110000"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    const-string v2, "operationParamIdentify"

    const-string v3, "independent_component_program2025111803036407"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 846
    const-string v3, "code"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    const-string p0, "recordNo"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 850
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    const-string p1, "components"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string p0, "alipay.imasp.program.programInvoke"

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 856
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 854
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static annualReviewQueryTasks()Ljava/lang/String;
    .locals 4

    .line 785
    const-string v0, "independent_component_task_reward_v2_02888775_independent_component_task_reward_query"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 786
    const-string v2, "channel"

    const-string v3, "share"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v2, "cityCode"

    const-string v3, "110000"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v2, "operationParamIdentify"

    const-string v3, "independent_component_program2025111803036407"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 792
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v0, "components"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v0, "alipay.imasp.program.programInvoke"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 797
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static applyTask(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"darwinExpParams\":{\"darwinName\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"},\"sourcePassMap\":{\"innerSource\":\"\",\"source\":\"myTab\",\"unid\":\"\"},\"taskConfigId\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alipay.antmember.biz.rpc.membertask.h5.applyTask"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static batchReceivePointBall()Ljava/lang/String;
    .locals 2

    .line 186
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.batchReceivePointBall"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static beanExchange(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"extParams\":{\"itemId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"pointAmount\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"},\"planCode\":\"bluebean_onestop\",\"planOperateCode\":\"exchange\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 752
    const-string p1, "com.alipay.insmarketingbff.onestop.planTrigger"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static beanExchangeDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"extParams\":{\"itemId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"},\"planCode\":\"bluebean_onestop\",\"planOperateCode\":\"exchangeDetail\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.insmarketingbff.onestop.planTrigger"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static check()Ljava/lang/Boolean;
    .locals 4

    .line 17
    const-string v0, "alipay.antmember.biz.rpc.member.h5.queryPointCert"

    const-string v1, "[{\"page\":1,\"pageSize\":8}]"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getHasError()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static checkInCompleteTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"checkInDate\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"sceneCode\":\"zml\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 532
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkInQueryTaskLists()Ljava/lang/String;
    .locals 2

    .line 521
    const-string v0, "[{\"version\":\"2025-10-22\"}]"

    .line 522
    const-string v1, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cleanSesameTreeByClick()Ljava/lang/String;
    .locals 2

    .line 673
    const-string v0, "{\"clickNum\":\"1\",\"treeCode\":\"ZHIMA_TREE\"}"

    .line 674
    const-string v1, "ZHIMA_TREE_CLEAN_AND_PUSH"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectAllCreditFeedback()Ljava/lang/String;
    .locals 2

    .line 507
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback"

    const-string v1, "[{\"collectAll\":true,\"status\":\"UNCLAIMED\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectCreditFeedback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"collectAll\":false,\"creditFeedbackId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"status\":\"UNCLAIMED\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collectInsuredGold(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 717
    const-string v0, "com.alipay.insgiftbff.insgiftMain.gainMyAndFamilySumInsured"

    .line 718
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collectProgressBall(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 280
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"ballIdList\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 284
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.collectProgressBall"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_1
    :goto_0
    const-string p0, "{\"success\":false, \"resultView\":\"ballIdList\u4e3a\u7a7a\"}"

    return-object p0
.end method

.method public static completeAlchemyCheckIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"checkInDate\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"sceneCode\":\"alchemy\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static continueSignIn()Ljava/lang/String;
    .locals 2

    .line 172
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.continueSignIn"

    const-string v1, "[{\"sceneId\":\"GAME_CENTER\",\"signType\":\"NORMAL_SIGN\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doAlchemy()Ljava/lang/String;
    .locals 2

    .line 634
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.alchemy"

    const-string v1, "[null]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doTaskSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"taskId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.doTaskSend"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static doTaskSignup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"taskId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.doTaskSignup"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getAlipayVersion()Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->getVersionString()Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[{\"benefitId\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"cityCode\":\"\",\"exchangeType\":\"POINT_PAY\",\"itemId\":\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"miniAppId\":\"\",\"orderSource\":\"\",\"requestId\":\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"requestSourceInfo\":\"\",\"sourcePassMap\":{\"alipayClientVersion\":\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"innerSource\":\"\",\"mobileOsType\":\"Android\",\"source\":\"\",\"unid\":\"\"},\"userOutAccount\":\"\"}]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 387
    const-string p1, "com.alipay.alipaymember.biz.rpc.exchange.h5.exchangeBenefit"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static executeTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bizOutNo\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e80

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"bizParam\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"bizSubType\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"bizType\":\"BROWSE\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alipay.antmember.biz.rpc.membertask.h5.executeTask"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static feedBackSesameGrainTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"actionType\":\"TO_COMPLETE\",\"bizType\":\"LIFE_RECORD\",\"sceneCode\":\"alchemy\",\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"version\":\"alchemy\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 572
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static feedBackSesameTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"actionType\":\"TO_COMPLETE\",\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static feedBackSesameTaskNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"actionType\":\"TO_COMPLETE\",\"bizType\":\"LIFE_RECORD\",\"sceneCode\":\"zml\",\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"version\":\"new\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 556
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static finishSesameTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"recordId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.pushActivity"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static finishSesameTreeTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 684
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ch_zmzltf__chsub_xinyongsyyingxiaowei"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{\"chInfo\":\"%s\",\"stageCode\":\"send\",\"taskId\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 687
    const-string v0, "RENT_GREEN_TASK_FINISH"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forestTask()Ljava/lang/String;
    .locals 2

    .line 409
    const-string v0, "[{\"extend\":{\"firstTaskType\":\"KUAIDI_VITALITY\"},\"fromAct\":\"home_task_list\",\"source\":\"kuaidivitality\",\"version\":\"20240105\"}]"

    .line 410
    const-string v1, "alipay.antforest.forest.h5.queryTaskList"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static forestreceiveTaskAward()Ljava/lang/String;
    .locals 2

    .line 414
    const-string v0, "[{\"ignoreLimit\":false,\"requestType\":\"H5\",\"sceneCode\":\"ANTFOREST_VITALITY_TASK\",\"source\":\"ANTFOREST\",\"taskType\":\"KUAIDI_VITALITY\"}]"

    .line 415
    const-string v1, "com.alipay.antiep.receiveTaskAward"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSesameTreeHomePage()Ljava/lang/String;
    .locals 2

    .line 656
    const-string v0, "ZHIMA_TREE_HOME_PAGE"

    const-string v1, "{}"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSesameTreeTaskList()Ljava/lang/String;
    .locals 2

    .line 664
    const-string v0, "{\"batchId\":\"\",\"chInfo\":\"ch_zmzltf__chsub_xinyongsyyingxiaowei\"}"

    .line 665
    const-string v1, "RENT_GREEN_TASK_LIST_QUERY"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueId()Ljava/lang/String;
    .locals 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goldBillCollect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"trigger\":\"Y\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.wealthgoldtwa.goldbill.v2.index.collect"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goldBillTaskTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string p0, "com.alipay.wealthgoldtwa.goldbill.v4.task.trigger"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 126
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static joinSesameGrainTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"sceneCode\":\"alchemy\",\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 564
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinSesameTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinSesameTaskNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"sceneCode\":\"zml\",\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 548
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static oceanTask()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"extend\":{\"firstTaskType\":\"DAOLIU_WODEKUAIDIQUANYI\"},\"fromAct\":\"dynamic_task\",\"sceneCode\":\"ANTOCEAN_TASK\",\"source\":\"wodekuaidiquanyi\",\"uniqueId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"version\":\"20240115\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    const-string v1, "alipay.antocean.ocean.h5.queryTaskList"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static oceanreceiveTaskAward()Ljava/lang/String;
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"ignoreLimit\":false,\"requestType\":\"RPC\",\"sceneCode\":\"ANTOCEAN_TASK\",\"source\":\"ANT_FOREST\",\"taskType\":\"DAOLIU_WODEKUAIDIQUANYI\",\"uniqueId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "com.alipay.antiep.receiveTaskAward"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openBehaviorCollect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"behaviorId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 240
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.openBehaviorCollect"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openBoxAward()Ljava/lang/String;
    .locals 2

    .line 456
    const-string v0, "alipay.mobile.ipsponsorprod.consume.gold.task.openBoxAward"

    const-string v1, "[{\"actionAwardDetails\":[{\"actionType\":\"date_sign_start\"}],\"bizType\":\"CONSUME_GOLD\",\"boxType\":\"CONSUME_GOLD_SIGN_DATE\",\"clientVersion\":\"6.3.0\",\"timeScaleType\":0,\"userType\":\"new\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static promiseJoin(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.join"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static promisePushActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"recordId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.pushActivity"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static promiseQueryDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"recordId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.queryDetail"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static promiseQueryHome()Ljava/lang/String;
    .locals 2

    .line 309
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.queryHome"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pushDailyQuizAnswer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"answerId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"answerStatus\":\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"questionId\":\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"}"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 261
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "[{\"behaviorId\":\""

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"bizDate\":"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ",\"extInfo\":"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 262
    const-string p1, "com.antgroup.zmxy.zmcustprod.biz.rpc.growthtask.api.GrowthTaskRpcManager.pushDailyTask"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryAllStatusTaskList()Ljava/lang/String;
    .locals 2

    .line 50
    const-string v0, "[{\"sourceBusiness\":\"signInAd\"}]"

    .line 51
    const-string v1, "alipay.antmember.biz.rpc.membertask.h5.queryAllStatusTaskList"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryAvailableCollectInsuredGold()Ljava/lang/String;
    .locals 2

    .line 709
    const-string v0, "com.alipay.insgiftbff.insgiftMain.queryMultiSceneWaitToGainList"

    const-string v1, "[{\"entrance\":\"wealth_entry\",\"eventToWaitParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"helpChildParamDTO\":{\"giftProdCode\":\"GIFT_HEALTH_GOLD_CHILD\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"priorityChannelParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"signInParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]}}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryAvailableSesameTask()Ljava/lang/String;
    .locals 2

    .line 539
    const-string v0, "[{\"chInfo\":\"ch_zmxy_zmlsy__chsub_zmsy_jingangwei_lianjin\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"sceneCode\":\"DAILY_MUST_DO_CARD\",\"searchGuidePopFlag\":true,\"searchSubscribeTask\":true,\"version\":\"new\"}]"

    .line 540
    const-string v1, "com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryConsumeHome()Ljava/lang/String;
    .locals 3

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v1, "tabBubbleDeliverParam"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "tabTypeDeliverParam"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "com.alipay.wealthgoldtwa.needle.consume.query"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 74
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryCreditFeedback()Ljava/lang/String;
    .locals 2

    .line 211
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.queryCreditFeedback"

    const-string v1, "[{\"queryPotential\":false,\"size\":20,\"status\":\"UNCLAIMED\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryDailyQuiz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"behaviorId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.growthtask.api.GrowthTaskRpcManager.queryDailyQuiz"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryDeliveryZoneDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u5168\u79ef\u52060and99999999INTELLIGENT_SORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"cityCode\":\"\",\"deliveryId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"pageNum\":1,\"pageSize\":18,\"sourcePassMap\":{\"innerSource\":\"\",\"source\":\"myTab\",\"unid\":\"\"},\"topIdList\":[],\"uniqueId\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 355
    const-string p1, "com.alipay.alipaymember.biz.rpc.config.h5.queryDeliveryZoneDetail"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryGrowthBehaviorToDoList()Ljava/lang/String;
    .locals 2

    .line 229
    const-string v0, "[{\"guideBehaviorId\":\"yuebao_7d\",\"invokeVersion\":\"1.0.2025.10.27\",\"switchNewPage\":true}]"

    .line 230
    const-string v1, "com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.queryToDoList"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryHome()Ljava/lang/String;
    .locals 2

    .line 220
    const-string v0, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.api.HomeV8RpcManager.queryHome"

    const-string v1, "[{\"invokeSource\":\"zmHome\",\"miniZmGrayInside\":\"\",\"version\":\"week\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryIndexNaviBenefitFlowV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0and99999999INTELLIGENT_SORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n        {\n            \"adCopyId\": \"\",\n            \"benefitFlowSource\": \"REC\",\n            \"cityCode\": \"\",\n            \"excludeIds\": \"\",\n            \"exposeChannel\": \"antmember\",\n            \"fastTag\": \"\",\n            \"lowerPoint\": 0,\n            \"naviCode\": \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\n            \"pageNum\": 1,\n            \"pageSize\": 50,\n            \"requestSourceInfo\": \"-|feeds\",\n            \"sortStrategy\": \"INTELLIGENT_SORT\",\n            \"sourcePassMap\": {\n                \"innerSource\": \"\",\n                \"source\": \"myTab\",\n                \"unid\": \"\"\n            },\n            \"stickyIdList\": [],\n            \"tagCodeIdx\": -1,\n            \"uniqueId\": \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\n            \"upperPoint\": 99999999,\n            \"withPointRange\": false\n        }\n    ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 372
    const-string p1, "com.alipay.alipaymember.biz.rpc.config.h5.queryIndexNaviBenefitFlowV2"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryMemberSigninCalendar()Ljava/lang/String;
    .locals 2

    .line 33
    const-string v0, "com.alipay.amic.biz.rpc.signin.h5.queryMemberSigninCalendar"

    const-string v1, "[{\"autoSignIn\":true,\"invitorUserId\":\"\",\"sceneCode\":\"QUERY\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryModularTaskList()Ljava/lang/String;
    .locals 2

    .line 198
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.queryModularTaskList"

    const-string v1, "[{\"deviceLevel\":\"high\",\"source\":\"ch_appcollect__chsub_my-recentlyUsed\",\"sourceTab\":\"luckydraw\",\"unityDeviceLevel\":\"high\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryOrdinaryTask()Ljava/lang/String;
    .locals 2

    .line 436
    const-string v0, "[{\"consultAccessFlag\":true,\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\"}]"

    .line 437
    const-string v1, "alipay.promoprod.task.listQuery"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPointBallList()Ljava/lang/String;
    .locals 2

    .line 179
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.queryPointBallList"

    const-string v1, "[{\"source\":\"ch_appcenter__chsub_9patch\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPointCert(II)Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"page\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\"pageSize\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string p1, "alipay.antmember.biz.rpc.member.h5.queryPointCert"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryRecommendTask()Ljava/lang/String;
    .locals 2

    .line 392
    const-string v0, "[{\"consultAccessFlag\":true,\"extInfo\":{\"componentCode\":\"musi_test\"},\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iCCWtq%2FRt4kh\"}]"

    .line 393
    const-string v1, "alipay.promoprod.task.listQuery"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryScoreProgress()Ljava/lang/String;
    .locals 2

    .line 270
    const-string v0, "[{\"needTotalProcess\":\"TRUE\",\"queryGuideInfo\":true,\"switchNewPage\":true}]"

    .line 271
    const-string v1, "com.antgroup.zmxy.zmcustprod.biz.rpc.home.api.HomeV8RpcManager.queryScoreProgress"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static querySignInBall()Ljava/lang/String;
    .locals 2

    .line 165
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.querySignInBall"

    const-string v1, "[{\"source\":\"ch_appcenter__chsub_9patch\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static querySignInProcess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"appletId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"scene\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.insmarketingbff.bean.querySignInProcess"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleTemplate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"templateId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 314
    const-string v0, "com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.querySingleTemplate"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryTaskList()Ljava/lang/String;
    .locals 2

    .line 202
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v4.queryTaskList"

    const-string v1, "[{\"__git\":\"52f2c9969ae\",\"source\":\"ch_alipaysearch__chsub_normal\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryUserAccountInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"channel\":\"HiChat\",\"pointProdCode\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"pointUnitType\":\"COUNT\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.insmarketingbff.point.queryUserAccountInfo"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryWelfareHome()Ljava/lang/String;
    .locals 3

    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v1, "isResume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    const-string v1, "com.alipay.finaggexpbff.needle.welfareCenter.index"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 140
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryforestHomePage()Ljava/lang/String;
    .locals 2

    .line 404
    const-string v0, "[{\"activityParam\":{},\"configVersionMap\":{\"wateringBubbleConfig\":\"0\"},\"skipWhackMole\":false,\"source\":\"kuaidivitality\",\"version\":\"20240606\"}]"

    .line 405
    const-string v1, "alipay.antforest.forest.h5.queryHomePage"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryoceanHomePage()Ljava/lang/String;
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"firstTaskType\":\"DAOLIU_WODEKUAIDIQUANYI\",\"source\":\"wodekuaidiquanyi\",\"uniqueId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"version\":\"20240115\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "alipay.antocean.ocean.h5.queryHomePage"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static receivePointByUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"certId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string v0, "alipay.antmember.biz.rpc.member.h5.receivePointByUser"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static receiveSesameTreeTaskReward(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 697
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ch_zmzltf__chsub_xinyongsyyingxiaowei"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{\"chInfo\":\"%s\",\"stageCode\":\"receive\",\"taskId\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 700
    const-string v0, "RENT_GREEN_TASK_FINISH"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendtrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"appletId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"send\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 447
    const-string v0, "alipay.promoprod.applet.trigger"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sesameTreeTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 646
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "SwbtxJSo8OOUrymAU%2FHnY2jyFRc%2BkCJ3"

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "https://render.alipay.com/p/yuyan/180020010001269849/zmTree.html?caprMode=sync&chInfo=chInfo=ch_zmzltf__chsub_xinyongsyyingxiaowei"

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "[{\"operation\":\"%s\",\"playInfo\":\"%s\",\"refer\":\"%s\",\"extInfo\":%s}]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 648
    const-string p1, "alipay.promoprod.play.trigger"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signInTrigger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"appletId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"scene\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.insmarketingbff.bean.signInTrigger"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signPageTaskList()Ljava/lang/String;
    .locals 2

    .line 38
    const-string v0, "alipay.antmember.biz.rpc.membertask.h5.signPageTaskList"

    const-string v1, "[{\"sourceBusiness\":\"antmember\",\"spaceCode\":\"ant_member_xlight_task\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signinCalendar()Ljava/lang/String;
    .locals 2

    .line 452
    const-string v0, "alipay.mobile.ipsponsorprod.consume.gold.task.signin.calendar"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signuptrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"appletId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"signup\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
    const-string v0, "alipay.promoprod.applet.trigger"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static submitConsume(ILjava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string v1, "exchangeAmount"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v1, "exchangeMoney"

    const-string v2, "%.2f"

    int-to-double v3, p0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string p0, "prizeType"

    const-string v1, "GOLD"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string p0, "productId"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string p0, "bonusAmount"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string p0, "com.alipay.wealthgoldtwa.needle.consume.submit"

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static taskQueryPush(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string p0, "com.alipay.wealthgoldtwa.needle.taskQueryPush"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static trigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"appletId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"send\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    const-string v0, "alipay.promoprod.applet.trigger"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static welfareCenterTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string p0, "com.alipay.finaggexpbff.needle.welfareCenter.trigger"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 155
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zmCheckInCompleteTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"checkInDate\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"sceneCode\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
