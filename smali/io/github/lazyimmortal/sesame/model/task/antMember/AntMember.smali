.class public Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AntMember.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AntMember"


# instance fields
.field private AntMemberTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private AutoAntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private AutoMemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private KuaiDiFuLiJia:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private MemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private SesameGrowthBehavior:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private antInsurance:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private antInsuranceOptions:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private enableGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private enableGoldTicket:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private memberPointExchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private memberPointExchangeBenefitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private memberSign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private merchantKMDK:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private merchantSignIn:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private pointTreasureBox:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private promise:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private promiseList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private sesameAlchemy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private sesameAlchemyBeanExchange:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private sesameAlchemyBeanLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private sesameAlchemyGoldenBean:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private sesameAlchemyGrainTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private sesameAlchemyReserveZml:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

.field private sesameAlchemySign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

.field private signinCalendar:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private CheckInTaskRpcManager()V
    .locals 10

    .line 1706
    const-string v0, "prize"

    const-string v1, "data"

    const-string v2, "zml"

    .line 0
    const-string v3, "\u6536\u829d\u9ebb\u7c92\ud83d\ude47\ud83c\udffb\u200d\u2642\ufe0f\u9886\u53d6[\u6bcf\u65e5\u7b7e\u5230\u6210\u529f]#\u83b7\u5f97"

    const-string v4, ".doSesameAlchemy#\u7b7e\u5230\u5931\u8d25:"

    .line 1706
    const-string v5, "AntMember::zmlCheckIn"

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 1711
    :cond_0
    :try_start_0
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->alchemyQueryCheckIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1712
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1713
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1714
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1716
    const-string v8, "currentDateCheckInTaskVO"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1718
    const-string v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1719
    const-string v9, "checkInDate"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1720
    const-string v9, "CAN_COMPLETE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1721
    invoke-static {v7, v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->zmCheckInCompleteTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1723
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1724
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1725
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1728
    const-string v4, "zmlNum"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "num"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_1
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1730
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7c92"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1737
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".doSesameAlchemy.alchemyCheckInComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1743
    :cond_4
    :goto_0
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".doSesameZmlCheckIn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private OrdinaryTask()V
    .locals 8

    .line 1828
    const-string v0, "success"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryOrdinaryTask()Ljava/lang/String;

    move-result-object v1

    .line 1829
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1833
    const-string v1, "taskDetailList"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1835
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1837
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1839
    const-string v5, "taskId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1840
    const-string v6, "taskProcessStatus"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1841
    const-string v7, "sendCampTriggerType"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1843
    const-string v7, "RECEIVE_SUCCESS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "EVENT_TRIGGER"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1845
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->signuptrigger(Ljava/lang/String;)Ljava/lang/String;

    .line 1847
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->sendtrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1849
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1853
    const-string v4, "prizeSendInfo"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1855
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "prizeName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6211\u7684\u5feb\u9012\ud83d\udc8c\u5b8c\u6210["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_1

    .line 1859
    :cond_0
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendtrigger failed for taskId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-wide/16 v4, 0x3e8

    .line 1861
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1867
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "OrdinaryTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private RecommendTask()V
    .locals 14

    .line 1754
    const-string v0, "taskId"

    const-string v1, "WELFARE_PLUS_ANT_FOREST"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryRecommendTask()Ljava/lang/String;

    move-result-object v2

    .line 1755
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1757
    const-string v2, "taskDetailList"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1759
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 1760
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1762
    const-string v6, "canAccess"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 1768
    :cond_0
    const-string v6, "taskMaterial"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1770
    const-string v7, "taskBaseInfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1772
    const-string v7, "taskCode"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1774
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "]"

    const-string v10, "\u6211\u7684\u5feb\u9012\ud83d\udc8c\u5b8c\u6210["

    const-string v11, "WELFARE_PLUS_ANT_OCEAN"

    if-nez v8, :cond_1

    :try_start_1
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1775
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v12, 0x1f4

    if-eqz v8, :cond_2

    .line 1778
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->forestTask()Ljava/lang/String;

    .line 1779
    invoke-static {v12, v13}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1780
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->forestreceiveTaskAward()Ljava/lang/String;

    goto :goto_1

    .line 1782
    :cond_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1785
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->oceanTask()Ljava/lang/String;

    .line 1786
    invoke-static {v12, v13}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1787
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->oceanreceiveTaskAward()Ljava/lang/String;

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 1790
    const-string v7, "appletName"

    const-string v8, "Unknown Applet"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1791
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_6

    .line 1794
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 1799
    :cond_5
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1801
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->trigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1802
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1804
    const-string v5, "success"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1807
    const-string v5, "prizeSendInfo"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1808
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1809
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1810
    const-string v6, "extInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1812
    const-string v6, "promoCampName"

    const-string v7, "Unknown Promo Campaign"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1820
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "RecommendTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private alchemySesameTasks()V
    .locals 21

    .line 1602
    const-string v0, "creditFeedbackVOS"

    const-string v1, "templateId"

    const-string v2, "title"

    const-string v3, "toCompleteVOS"

    const-string v4, "data"

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->alchemyQueryTasks()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    .line 1603
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1604
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_b

    .line 1607
    :cond_0
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1608
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    return-void

    .line 1611
    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1612
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 1613
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1614
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v11, ""

    if-eqz v10, :cond_2

    :try_start_1
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v11

    .line 1615
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_3

    goto/16 :goto_8

    :cond_3
    move-object/from16 v12, p0

    .line 1619
    :try_start_2
    iget-object v13, v12, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->MemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v13}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_9

    .line 1623
    :cond_4
    const-string v13, "finishFlag"

    invoke-virtual {v9, v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_12

    const-string v13, "\u5df2\u5b8c\u6210"

    const-string v14, "actionText"

    invoke-virtual {v9, v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto/16 :goto_9

    .line 1627
    :cond_5
    const-string v13, "SUBSCRIBE_TASK"

    const-string v14, "bizType"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "zhuanhua"

    const-string v14, "gameTaskType"

    .line 1628
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto/16 :goto_7

    .line 1632
    :cond_6
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1633
    const-string v14, "needCompleteNum"

    const/4 v15, 0x1

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 1634
    const-string v6, "completedNum"

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1637
    const-string v7, "todayFinish"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "]\u5931\u8d25#"

    const-string v15, "MemberCreditSesameTaskList"

    move-object/from16 v16, v1

    const-string v1, "recordId"

    if-nez v7, :cond_8

    .line 1639
    :try_start_3
    invoke-static {v13}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->joinSesameGrainTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1640
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1642
    invoke-static {v15, v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v17, 0xc8

    .line 1643
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    move-object/from16 v19, v2

    .line 1644
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u829d\u9ebb\u70bc\u91d1\ud83d\udcb3\u9886\u53d6\u6512\u7c92\u4efb\u52a1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1648
    :cond_7
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    invoke-static {v13}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->feedBackSesameGrainTask(Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    goto :goto_2

    :cond_8
    move-object/from16 v19, v2

    .line 1654
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u829d\u9ebb\u70bc\u91d1\ud83d\udcb3\u6512\u7c92\u4efb\u52a1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u672a\u83b7\u53d6\u5230recordId#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1658
    :cond_9
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1662
    :goto_2
    const-string v2, "]"

    if-ge v6, v14, :cond_d

    .line 1663
    :try_start_4
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->finishSesameTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v17, 0x7d0

    .line 1664
    invoke-static/range {v17 .. v18}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1665
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1667
    invoke-static {v15, v10, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1668
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v13, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v13, "\u829d\u9ebb\u70bc\u91d1\ud83d\udcb3\u5b8c\u6210\u6512\u7c92\u4efb\u52a1["

    if-eqz v9, :cond_b

    .line 1669
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-le v14, v2, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\uff08"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\uff09"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_a
    move-object v9, v11

    :goto_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1672
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    :cond_c
    :goto_4
    const-wide/16 v13, 0x12c

    goto/16 :goto_a

    .line 1679
    :cond_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryCreditFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x12c

    .line 1680
    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1681
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1682
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x0

    .line 1683
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 1684
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1685
    const-string v7, "UNCLAIMED"

    const-string v9, "status"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-wide/16 v13, 0x12c

    goto :goto_6

    .line 1688
    :cond_e
    const-string v7, "creditFeedbackId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1689
    const-string v9, "potentialSize"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1690
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->collectCreditFeedback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v13, 0x12c

    .line 1691
    invoke-static {v13, v14}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1692
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6536\u829d\u9ebb\u7c92\ud83d\ude47\ud83c\udffb\u200d\u2642\ufe0f\u9886\u53d6["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\u5956\u52b1[\u829d\u9ebb\u7c92*"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    :goto_7
    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-wide v13, v6

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u829d\u9ebb\u70bc\u91d1\u8df3\u8fc7\u6512\u7c92\u4efb\u52a1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u9700\u771f\u5b9e\u64cd\u4f5c\u6216\u6388\u6743"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_11
    :goto_8
    move-object/from16 v12, p0

    :cond_12
    :goto_9
    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-wide v13, v6

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v12, p0

    goto :goto_d

    :cond_14
    :goto_b
    move-object/from16 v12, p0

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    .line 1701
    :goto_c
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method

.method public static batchReceivePointBall()V
    .locals 3

    .line 1169
    const-string v0, "\u6e38\u620f\u4e2d\u5fc3\ud83c\udfae\u6279\u91cf\u9886\u53d6#\u83b7\u5f97["

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->batchReceivePointBall()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1170
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1172
    const-string v2, "totalAmount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u73a9\u4e50\u8c46]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1177
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "batchReceivePointBall err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static checkAndDoSignIn()V
    .locals 3

    .line 1316
    const-string v0, "gameCenterSignIn"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1321
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryPointBallList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1322
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1323
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1327
    :cond_1
    const-string v2, "signInBallModule"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1328
    const-string v2, "signInStatus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1329
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->dailySignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1330
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1336
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "querySignInBall err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private collectCreditFeedback()V
    .locals 3

    .line 1080
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->collectCreditFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1081
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1085
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "collectCreditFeedback err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private collectSesame()V
    .locals 22

    .line 1458
    const-string v0, "zml"

    const-string v1, "needCompleteNum"

    const-string v2, "title"

    const-string v3, "toCompleteVOS"

    const-string v4, "data"

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1459
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 1462
    :cond_0
    const-string v7, "entrance"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1463
    const-string v7, "openApp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1464
    const-string v0, "\u829d\u9ebb\u4fe1\u7528\ud83d\udc8c\u672a\u5f00\u901a"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    return-void

    .line 1468
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->CreditAccumulateStrategyRpcManager()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x12c

    .line 1469
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1470
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 1473
    :cond_2
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    return-void

    .line 1476
    :cond_3
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1477
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    .line 1480
    :cond_4
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1481
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v10, "creditFeedbackVOS"

    if-ge v6, v9, :cond_16

    .line 1482
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1483
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_5
    const-string v11, "\u672a\u77e5\u4efb\u52a1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    move-object v14, v11

    move-object/from16 v11, p0

    .line 1485
    :try_start_2
    iget-object v12, v11, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->MemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v12}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "finishFlag"

    const-string v15, "templateId"

    const-string v7, ""

    if-eqz v12, :cond_7

    .line 1486
    :try_start_3
    new-instance v8, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v10, "MemberCreditSesameTaskList"

    const-string v12, "desc"

    .line 1487
    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v12, "targetUrl"

    .line 1488
    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1489
    invoke-virtual {v9, v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "FINISHED"

    goto :goto_2

    :cond_6
    const-string v12, "TODO"

    :goto_2
    move-object/from16 v17, v12

    move-object v12, v8

    move-object v13, v10

    move-object v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    const-string v8, "taskPlayType"

    const-string v10, "taskProdPlayType"

    .line 1491
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    const-string v8, "taskMode"

    .line 1492
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    .line 1493
    invoke-virtual {v7, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    const-string v8, "seasameList"

    .line 1494
    invoke-virtual {v7, v0, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    const-string v8, "new"

    .line 1495
    invoke-virtual {v7, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v7

    .line 1486
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto/16 :goto_9

    :cond_7
    move-object v8, v15

    .line 1499
    invoke-virtual {v9, v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1500
    const-string v13, "actionText"

    invoke-virtual {v9, v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v12, :cond_14

    .line 1503
    const-string v12, "\u5df2\u5b8c\u6210"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_9

    .line 1507
    :cond_8
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    goto/16 :goto_9

    .line 1511
    :cond_9
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1512
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_3

    :cond_a
    const/4 v12, 0x1

    .line 1513
    :goto_3
    const-string v15, "completedNum"

    invoke-virtual {v9, v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 1518
    const-string v5, "todayFinish"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v13, "]\u5931\u8d25#"

    move-object/from16 v18, v0

    const-string v0, "MemberCreditSesameTaskList"

    move-object/from16 v19, v1

    const-string v1, "recordId"

    if-nez v5, :cond_c

    .line 1520
    :try_start_4
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->joinSesameTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1521
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1523
    invoke-static {v0, v14, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v20, 0xc8

    .line 1524
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1525
    sget-object v9, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u829d\u9ebb\u4fe1\u7528\ud83d\udcb3\u9886\u53d6\u4efb\u52a1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1529
    :cond_b
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1532
    :cond_c
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u829d\u9ebb\u4fe1\u7528\ud83d\udcb3\u4efb\u52a1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u83b7\u53d6\u5230]recordId#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1536
    :cond_d
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1539
    :goto_4
    const-string v5, "]"

    if-ge v15, v12, :cond_10

    .line 1540
    :try_start_5
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->finishSesameTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v20, 0x7d0

    .line 1541
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1542
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1544
    invoke-static {v0, v14, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v20, v0

    .line 1546
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v9, "\u829d\u9ebb\u4fe1\u7528\ud83d\udcb3\u5b8c\u6210\u4efb\u52a1["

    if-eqz v0, :cond_f

    .line 1547
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-le v12, v5, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uff08"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\uff09"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_e
    move-object v8, v7

    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const/4 v5, 0x1

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_4

    .line 1554
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryCreditFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x12c

    .line 1555
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1556
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 1559
    :cond_11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1560
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_15

    .line 1561
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1562
    const-string v8, "UNCLAIMED"

    const-string v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_8

    .line 1566
    :cond_12
    const-string v8, "creditFeedbackId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1567
    const-string v9, "potentialSize"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1568
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->collectCreditFeedback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x12c

    .line 1569
    invoke-static {v12, v13}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1570
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1571
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6536\u829d\u9ebb\u7c92\ud83d\ude47\ud83c\udffb\u200d\u2642\ufe0f\u9886\u53d6["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\u5956\u52b1[\u829d\u9ebb\u7c92*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_13
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    :goto_9
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    :cond_15
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    const/4 v5, 0x0

    const-wide/16 v7, 0x12c

    goto/16 :goto_0

    :cond_16
    move-object/from16 v11, p0

    .line 1575
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryCreditFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    .line 1576
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1577
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 1580
    :cond_17
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1582
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->collectAllCreditFeedback()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1583
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1584
    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u829d\u9ebb\u7c92\ud83d\ude47\ud83c\udffb\u200d\u2642\ufe0f[\u4e00\u952e\u6536\u53d6]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    .line 1591
    :goto_b
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_c
    return-void
.end method

.method public static dailySignIn()Z
    .locals 3

    .line 1189
    const-string v0, "\u6e38\u620f\u4e2d\u5fc3\ud83c\udfae\u6bcf\u65e5\u7b7e\u5230#\u83b7\u5f97["

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->continueSignIn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1190
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "autoSignInToastModule"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1192
    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    const-string v2, "\u73a9\u4e50\u8c46+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u73a9\u4e50\u8c46]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1199
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "continueSignIn err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private doBrowseTask(Lorg/json/JSONArray;)Ljava/lang/Boolean;
    .locals 9

    .line 689
    const-string v0, "extInfo"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 691
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v2, v4, :cond_7

    .line 693
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 694
    const-string v5, "hybrid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 695
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "PERIOD_CURRENT_COUNT"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 696
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "PERIOD_TARGET_COUNT"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v5, :cond_0

    sub-int v5, v7, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-lez v5, :cond_6

    if-nez v3, :cond_2

    .line 699
    invoke-direct {p0, v4, v7, v7}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->doBrowseTask(Lorg/json/JSONObject;II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    if-nez v3, :cond_5

    .line 703
    invoke-direct {p0, v4, v6, v6}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->doBrowseTask(Lorg/json/JSONObject;II)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_3
    move v3, v6

    goto :goto_4

    :catchall_0
    move-exception v4

    .line 708
    :try_start_2
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v6, "doBrowseTask item err:"

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 714
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v1, "doBrowseTask err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private doBrowseTask(Lorg/json/JSONObject;II)Ljava/lang/Boolean;
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 723
    :try_start_0
    const-string v3, "taskConfigInfo"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 724
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v5, p0

    .line 726
    :try_start_1
    iget-object v6, v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 727
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 729
    :cond_0
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 730
    const-string v7, "awardParam"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "awardParamPoint"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 731
    const-string v8, "targetBusiness"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v8, v0

    const/4 v9, 0x0

    :goto_0
    if-gt v8, v1, :cond_5

    .line 733
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->applyTask(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v11, 0x12c

    .line 734
    invoke-static {v11, v12}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 735
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v13, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 738
    :cond_1
    const-string v10, "#"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 741
    array-length v14, v10

    const/4 v15, 0x2

    const/4 v11, 0x1

    if-le v14, v15, :cond_2

    .line 742
    aget-object v12, v10, v15

    .line 743
    aget-object v10, v10, v11

    goto :goto_1

    .line 746
    :cond_2
    aget-object v12, v10, v11

    .line 747
    aget-object v10, v10, v2

    .line 749
    :goto_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-static {v12, v10}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->executeTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v15, 0x12c

    .line 750
    invoke-static/range {v15 .. v16}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 751
    invoke-static {v13, v14}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_4

    if-ne v0, v11, :cond_4

    .line 754
    const-string v10, ""

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 755
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4f1a\u5458\u4efb\u52a1\ud83c\udf96\ufe0f\u5b8c\u6210["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]#\u83b7\u5f97["

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u79ef\u5206]"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v2, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    .line 760
    :goto_4
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v3, "doBrowseTask err:"

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v2

    .line 763
    :cond_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private exchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1443
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->exchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1444
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1445
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Status;->memberPointExchangeBenefitToday(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1446
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1450
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v0, "exchangeBenefit err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 1453
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getWuaByReflection()Ljava/lang/String;
    .locals 4

    .line 924
    :try_start_0
    const-string v0, "io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 928
    const-string v3, "getWua"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    .line 930
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 932
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 941
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8c03\u7528getWua\u65b9\u6cd5\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u627e\u5230getWua\u65b9\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u627e\u5230AntOrchard\u7c7b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 943
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private goldBillCollect(Ljava/lang/String;)V
    .locals 6

    .line 1140
    :try_start_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->goldBillCollect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1142
    const-string p1, "success"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".goldBillCollect.goldBillCollect"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "resultDesc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1146
    :cond_0
    const-string p1, "result"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1147
    const-string v0, "collectedList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 1152
    :goto_0
    const-string v3, "]"

    if-ge v2, v1, :cond_2

    .line 1153
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ec4\u91d1\u7968\ud83d\ude48["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1155
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9ec4\u91d1\u7968\ud83c\udfe6\u672c\u6b21\u603b\u5171\u83b7\u5f97["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "collectedCamp.amount"

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->getValueByPath(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1158
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v1, "signIn err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private goldTicket()V
    .locals 0

    return-void
.end method

.method private handleGrowthGuideTasks()V
    .locals 20

    .line 784
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 785
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 788
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryGrowthBehaviorToDoList()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 794
    :cond_1
    const-string v2, "toDoList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-eqz v1, :cond_16

    if-nez v3, :cond_3

    goto/16 :goto_8

    :cond_3
    const/4 v3, 0x0

    .line 800
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 801
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_4
    :goto_2
    move-object/from16 v16, v1

    move/from16 v17, v3

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 806
    :cond_6
    const-string v5, "behaviorId"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 807
    const-string v6, "title"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 808
    const-string v6, "status"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 809
    const-string v6, "subTitle"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 812
    const-string v6, "wait_receive"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 813
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->openBehaviorCollect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 814
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 815
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6512\u829d\u9ebb\u5206\ud83e\uddfe\u4efb\u52a1\u9886\u53d6\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_2

    .line 822
    :cond_7
    const-string v6, "meiriwenda"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "wait_doing"

    if-eqz v6, :cond_f

    :try_start_1
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 823
    const-string v6, "\u4eca\u65e5\u5df2\u53c2\u4e0e"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6512\u829d\u9ebb\u5206\ud83e\uddfe[\u6bcf\u65e5\u95ee\u7b54] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff08\u8df3\u8fc7\u7b54\u9898\uff09"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 829
    :cond_8
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryDailyQuiz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 830
    sget-object v15, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v15, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_2

    .line 833
    :cond_9
    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_a

    goto/16 :goto_2

    .line 838
    :cond_a
    const-string v7, "questionVo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_b

    goto/16 :goto_2

    .line 843
    :cond_b
    const-string v8, "rightAnswer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_c

    goto/16 :goto_2

    .line 848
    :cond_c
    const-string v9, "bizDate"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 849
    const-string v6, "questionId"

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 850
    const-string v6, "questionContent"

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 851
    const-string v6, "answerId"

    invoke-virtual {v8, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 852
    const-string v6, "answerContent"

    invoke-virtual {v8, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    cmp-long v6, v16, v10

    if-lez v6, :cond_4

    .line 854
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    goto/16 :goto_2

    .line 859
    :cond_d
    new-instance v11, Lorg/json/JSONObject;

    const-string v19, "RIGHT"

    move-object v6, v5

    move-object v10, v7

    move-object v2, v8

    move-wide/from16 v7, v16

    move-object/from16 v16, v1

    move-object v1, v9

    move-object v9, v10

    move/from16 v17, v3

    move-object v3, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v19

    invoke-static/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->pushDailyQuizAnswer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-static {v15, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6512\u829d\u9ebb\u5206\ud83c\udf96\ufe0f[\u6bcf\u65e5\u7b54\u9898\u6210\u529f] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u7b54\u6848="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v0

    goto :goto_4

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v18, v12

    .line 866
    :cond_10
    :goto_5
    const-string v1, "shipingwenda"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 868
    const-string v10, "question3"

    .line 869
    const-string v9, "A"

    .line 870
    const-string v11, "RIGHT"

    .line 872
    new-instance v1, Lorg/json/JSONObject;

    move-object v6, v5

    invoke-static/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->pushDailyQuizAnswer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 874
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 875
    const-string v1, "\u6512\u829d\u9ebb\u5206\ud83c\udf96\ufe0f[\u89c6\u9891\u95ee\u7b54\u63d0\u4ea4\u6210\u529f]"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 880
    :cond_11
    const-string v1, "babanongchang_7d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 883
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->getWuaByReflection()Ljava/lang/String;

    move-result-object v1

    .line 886
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSpreadManure(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v1, "100"

    const-string v3, "resultCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_3

    .line 892
    :cond_12
    const-string v1, "taobaoData"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_3

    .line 897
    :cond_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 899
    const-string v1, "currentStage"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_14

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GrowthGuideTasks\u82ad\u82ad\u519c\u573a[\u7f3a\u5c11currentStage]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 905
    :cond_14
    const-string v3, "stageText"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    const-string v3, "statistics"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_6

    .line 907
    :cond_15
    const-string v3, "dailyAppWateringCount"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 909
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u82ad\u82ad\u519c\u573a\ud83c\udf33\u65bd\u80a5"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u6b21["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6512\u829d\u9ebb\u5206\ud83c\udf96\ufe0f\u82ad\u82ad\u519c\u573a\u65bd\u80a5["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u5df2\u65bd\u80a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_16
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".handleGrowthGuideTasks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

.method public static initMemberTaskListMap(ZZZZ)V
    .locals 16

    .line 234
    const-string v0, "completeVOS"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->load()V

    .line 235
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 239
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 242
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 243
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :cond_0
    const-string v3, "AntMember"

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_15

    const/4 v7, 0x1

    .line 251
    :cond_1
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    const/16 v9, 0x8

    invoke-static {v7, v9}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryPointCert(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, 0x1f4

    .line 252
    invoke-static {v9, v10}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 253
    sget-object v9, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    .line 256
    :cond_2
    const-string v9, "hasNextPage"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    add-int/lit8 v7, v7, 0x1

    .line 258
    const-string v10, "certList"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 262
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 263
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_2

    .line 267
    :cond_4
    const-string v12, "bizTitle"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 268
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 269
    new-array v13, v4, [Lorg/json/JSONObject;

    aput-object v11, v13, v6

    invoke-static {v13}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    if-nez v9, :cond_1

    .line 275
    :goto_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryAllStatusTaskList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    sget-object v8, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 277
    const-string v8, "availableTaskList"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    const-string v9, "name"

    const/4 v10, 0x0

    const-string v11, "taskConfigInfo"

    if-eqz v8, :cond_a

    const/4 v12, 0x0

    .line 279
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 280
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_7

    move-object v13, v10

    goto :goto_5

    .line 281
    :cond_7
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    :goto_5
    if-nez v13, :cond_8

    move-object v14, v5

    goto :goto_6

    .line 282
    :cond_8
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 283
    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 284
    new-array v15, v4, [Lorg/json/JSONObject;

    aput-object v13, v15, v6

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 288
    :cond_a
    const-string v8, "taskHistoryList"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_e

    const/4 v8, 0x0

    .line 290
    :goto_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v8, v12, :cond_e

    .line 291
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_b

    move-object v12, v10

    goto :goto_8

    .line 292
    :cond_b
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    :goto_8
    if-nez v12, :cond_c

    move-object v13, v5

    goto :goto_9

    .line 293
    :cond_c
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 294
    :goto_9
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    .line 295
    new-array v14, v4, [Lorg/json/JSONObject;

    aput-object v12, v14, v6

    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 302
    :cond_e
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->save()Z

    .line 303
    const-string v7, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u4f1a\u5458\u4efb\u52a1\u5217\u8868"

    invoke-static {v7}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p0, :cond_15

    .line 308
    sget-object v7, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 309
    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 310
    const-string v8, "AntMemberTaskList"

    invoke-virtual {v7, v8}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez v7, :cond_f

    return-void

    .line 315
    :cond_f
    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_13

    .line 317
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 318
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 324
    :cond_11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 326
    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 331
    :cond_13
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u4f1a\u5458\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_c

    .line 335
    :cond_14
    const-string v1, "\u4f1a\u5458\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 340
    :cond_15
    :goto_c
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->load()V

    .line 341
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 342
    const-string v2, "\u53bb\u6dd8\u91d1\u5e01\u901b\u4e00\u901b"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v2, "\u575a\u6301\u901b\u88f9\u9171\u9886\u798f\u5229"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v2, "\u575a\u6301\u7b7e\u5230\u9886\u5956\u52b1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v2, "\u575a\u6301\u770b\u76f4\u64ad\u9886\u798f\u5229"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v2, "\u53bb\u96c7\u4f63\u829d\u9ebb\u5927\u8868\u9e3d"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v2, "\u5b8c\u6210\u65e7\u8863\u56de\u6536\u5f97\u73b0\u91d1"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v2, "0.1\u5143\u8d77\u79df\u4f1a\u5458\u6512\u7c92"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v2, "\u6bcf\u65e5\u65bd\u80a5\u9886\u6c34\u679c"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v2, "\u53bb\u73a9\u5c0f\u6e38\u620f"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 354
    const-string v7, "\u901b\u4e00\u901b\u829d\u9ebb\u6811"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v7, "\u6d4f\u89c815\u79d2\u89c6\u9891\u5e7f\u544a"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v7, "\u901b15\u79d2\u5546\u54c1\u6a71\u7a97"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v7, "\u901b\u4e00\u901b\u96c6\u6c57\u6ef4\u627e\u73b0\u91d1"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v7, "\u53bb\u4f53\u9a8c\u5148\u7528\u540e\u4ed8"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v7, "\u53bb\u629b\u7aff\u9493\u9c7c"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v7, "\u53bb\u53c2\u4e0e\u82b1\u5457\u6d3b\u52a8"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v7, "\u575a\u6301\u6512\u4fdd\u969c\u91d1"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v7, "\u53bb\u9886\u652f\u4ed8\u5b9d\u79ef\u5206"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v7, "\u53bb\u6d4f\u89c8\u79df\u8d41\u5927\u4fc3\u4f1a\u573a"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 366
    invoke-static {v8, v5}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    :cond_16
    const-wide/16 v7, 0x12c

    .line 370
    const-string v5, "title"

    const-string v9, "toCompleteVOS"

    const-string v10, "data"

    if-eqz p1, :cond_1a

    .line 371
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    sget-object v12, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v12, v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 373
    const-string v13, "entrance"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 374
    const-string v13, "openApp"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 375
    new-instance v11, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->CreditAccumulateStrategyRpcManager()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 377
    invoke-static {v12, v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 378
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 379
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 380
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 381
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v12, 0x0

    .line 382
    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_18

    .line 383
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 384
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 385
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_17

    goto :goto_f

    .line 388
    :cond_17
    new-array v15, v4, [Lorg/json/JSONObject;

    aput-object v13, v15, v6

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 391
    :cond_18
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 392
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v11, 0x0

    .line 393
    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1a

    .line 394
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 395
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 396
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_19

    goto :goto_11

    .line 399
    :cond_19
    new-array v14, v4, [Lorg/json/JSONObject;

    aput-object v12, v14, v6

    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1a
    if-eqz p3, :cond_1c

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->alchemyQueryTasks()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 411
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 412
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 414
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    .line 415
    :goto_12
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1c

    .line 416
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 417
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 418
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-array v10, v4, [Lorg/json/JSONObject;

    aput-object v9, v10, v6

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 425
    :cond_1c
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->save()Z

    .line 426
    const-string v0, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u4f1a\u5458\u829d\u9ebb\u4fe1\u7528\u4efb\u52a1\u829d\u9ebb\u7c92\u5217\u8868"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 431
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 432
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 433
    const-string v3, "MemberCreditSesameTaskList"

    invoke-virtual {v0, v3}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-nez v0, :cond_1d

    return-void

    .line 438
    :cond_1d
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_21

    .line 440
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 442
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_13

    .line 447
    :cond_1f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 449
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 454
    :cond_21
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u4f1a\u5458\u829d\u9ebb\u4fe1\u7528\u4efb\u52a1\u829d\u9ebb\u7c92\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_15

    .line 458
    :cond_22
    const-string v0, "\u4f1a\u5458\u829d\u9ebb\u4fe1\u7528\u4efb\u52a1\u829d\u9ebb\u7c92\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_15

    :catchall_0
    move-exception v0

    .line 463
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "initMemberTaskListMap err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_15
    return-void
.end method

.method private memberPointExchangeBenefit()V
    .locals 8

    .line 1402
    const-string v0, "entityInfoList"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 1403
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "94000SR2024011106752003"

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryDeliveryZoneDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1404
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1407
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1408
    const-string v0, "\u4f1a\u5458\u79ef\u5206[\u672a\u5b9e\u540d\u8d26\u53f7\u65e0\u53ef\u5151\u6362\u6743\u76ca]"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 1411
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1413
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/MemberBenefitIdMap;->load(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1414
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1415
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1416
    const-string v4, "benefitInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1417
    const-string v4, "pricePresentation"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1418
    const-string v5, "POINT_PAY"

    const-string v6, "strategyType"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1421
    :cond_2
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1422
    const-string v6, "benefitId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1423
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/idMap/MemberBenefitIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Status;->canMemberPointExchangeBenefitToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberPointExchangeBenefitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 1427
    :cond_3
    const-string v7, "itemId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1428
    invoke-direct {p0, v6, v3}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->exchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1429
    const-string v3, "point"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f1a\u5458\u79ef\u5206\ud83c\udf90\u5151\u6362["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]#\u82b1\u8d39["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u79ef\u5206]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1433
    :cond_5
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/MemberBenefitIdMap;->save(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1436
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "memberPointExchangeBenefit err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private memberSign()V
    .locals 5

    .line 470
    const-string v0, "member::sign"

    .line 0
    const-string v1, "\u4f1a\u5458\u4efb\u52a1\ud83d\udcc5\u7b7e\u5230[\u575a\u6301"

    .line 470
    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryMemberSigninCalendar()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    .line 472
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 473
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    const-string v3, "autoSignInSuccess"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "signinSumDay"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5929]#\u83b7\u5f97["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signinPoint"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u79ef\u5206]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 477
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 482
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "memberSign err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static processTask(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "\u6e38\u620f\u4e2d\u5fc3\ud83c\udfae\u5b8c\u6210\u4efb\u52a1["

    .line 1212
    :try_start_0
    const-string v1, "VIEW"

    const-string v2, "actionType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1216
    :cond_0
    const-string v1, "taskId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1217
    const-string v2, "subTitle"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1218
    const-string v3, "taskStatus"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1219
    const-string v4, "prizeAmount"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1222
    const-string v5, "NOT_DONE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "needSignUp"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1223
    new-instance p0, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->doTaskSignup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1224
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1230
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->doTaskSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1231
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#\u5f85\u9886["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u73a9\u4e50\u8c46]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1236
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v1, "doTask err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private promise()V
    .locals 6

    .line 584
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->promiseQueryHome()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 588
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 589
    const-string v1, "promiseSimpleTemplates"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 591
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->load(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 592
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 593
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 594
    const-string v3, "templateId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    const-string v4, "promiseName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    const-string v5, "un_join"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promiseList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->querySingleTemplate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promiseJoin(Lorg/json/JSONObject;)V

    .line 600
    :cond_1
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->save(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 605
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "promise err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private promiseJoin(Lorg/json/JSONObject;)V
    .locals 6

    .line 652
    const-string v0, "]"

    .line 0
    const-string v1, "\u751f\u6d3b\u8bb0\u5f55\u2705\u6253\u5361["

    const-string v2, "\u751f\u6d3b\u8bb0\u5f55\ud83d\udcdd\u52a0\u5165["

    if-nez p1, :cond_0

    return-void

    .line 656
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->promiseJoin(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 657
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 660
    :cond_1
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 661
    const-string v4, "promiseName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    .line 664
    const-string v2, "recordId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 666
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->promisePushActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-static {p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 668
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 673
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v1, "promiseJoin err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private promiseQueryDetail(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 680
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->promiseQueryDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 681
    const-string p1, "success"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private queryAllStatusTaskList()V
    .locals 3

    .line 565
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryAllStatusTaskList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 566
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 567
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 570
    :cond_0
    const-string v1, "availableTaskList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 571
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->doBrowseTask(Lorg/json/JSONArray;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryAllStatusTaskList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 576
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "queryAllStatusTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static queryAndCollect()V
    .locals 6

    .line 1093
    const-string v0, "\u6512\u829d\u9ebb\u5206\ud83c\udf81\u9886\u53d6#\u672c\u6b21\u52a0\u901f\u8fdb\u5ea6:"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryScoreProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1094
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1098
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1101
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1105
    :cond_1
    const-string v1, "totalWaitProcessVO"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 1110
    :cond_2
    const-string v2, "totalProgressIdList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1111
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1116
    :cond_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->collectProgressBall(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 1121
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1122
    const-string v1, "collectedAccelerateProgress"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1123
    const-string v3, "currentAccelerateValue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 1124
    const-string v5, "totalAccelerateProgress"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(\u603b"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%)\u52a0\u901f\u500d\u7387:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "queryAndCollect err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "queryAndCollect JSON err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static queryAndProcessTaskList()V
    .locals 6

    .line 1246
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryModularTaskList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1247
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1253
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "taskModuleList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1254
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1255
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1256
    const-string v4, "taskList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 1257
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1258
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->processTask(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1263
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "queryModularTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public static queryPointBallList()V
    .locals 3

    .line 1293
    :try_start_0
    const-string v0, "com.alipay.gamecenteruprod.biz.rpc.v3.queryPointBallList"

    const-string v1, "[{}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1295
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1300
    :cond_0
    const-string v1, "pointBallList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1302
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->batchReceivePointBall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1307
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "queryPointBallList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private queryPointCert(II)V
    .locals 7

    .line 489
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryPointCert(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 490
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 491
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 494
    :cond_0
    const-string v1, "hasNextPage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 495
    const-string v2, "certList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 496
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 497
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 498
    const-string v4, "bizTitle"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 503
    :cond_1
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    const-string v6, "pointAmount"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 505
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->receivePointByUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f1a\u5458\u4efb\u52a1\ud83c\udf96\ufe0f\u9886\u53d6["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u5956\u52b1#\u83b7\u5f97["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u79ef\u5206]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 511
    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryPointCert(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 515
    sget-object p2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v0, "queryPointCert err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private querySingleTemplate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    .line 612
    const-string v0, "dataSourceRule"

    const-string v1, "periodTargetRule"

    const-string v2, "joinGuarantyRule"

    const-string v3, "autoRenewStatus"

    const-string v4, "templateId"

    const-string v5, "joinRule"

    const-string v6, "selectValue"

    const-string v7, "canSelectValues"

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->querySingleTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 613
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {p1, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v8

    .line 616
    :cond_0
    const-string p1, "data"

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 617
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 619
    const-string v10, "joinFromOuter"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 620
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 624
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 629
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 631
    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 634
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 636
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 639
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "merchantId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 641
    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v9

    :catchall_0
    move-exception p1

    .line 645
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v1, "querySingleTemplate err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public static queryTaskList()V
    .locals 3

    .line 1270
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryTaskList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1271
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1274
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1277
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameTaskModule"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameTaskList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1278
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1279
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->processTask(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1283
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "queryModularTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private sesameInfo()V
    .locals 23

    move-object/from16 v1, p0

    .line 950
    const-string v0, "goldBalance"

    const-string v2, "alchemyCostZml"

    const-string v3, "alchemyNum"

    const-string v4, "alchemyDailyCap"

    const-string v5, "finishAlchemyCount"

    const-string v6, "pointAmount"

    const-string v7, "currentLevel"

    const-string v8, "totalCollectProcess"

    const-string v9, "score"

    .line 951
    const-string v10, ""

    .line 966
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryScoreProgress()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 967
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v13, v12}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 968
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 969
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 971
    :goto_0
    :try_start_1
    const-string v14, "socialDimension"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 972
    const-string v15, "dimensionName"

    const-string v11, "targetProgress"

    move-object/from16 v17, v9

    const-string v9, "currentProgress"

    if-eqz v14, :cond_2

    .line 973
    :try_start_2
    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 974
    :try_start_3
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 975
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    .line 977
    :goto_1
    :try_start_4
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 978
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v14

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v10

    move-object/from16 v9, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v15, v10

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v15, v10

    move-object/from16 v18, v15

    :goto_2
    move-object/from16 v9, v17

    goto/16 :goto_8

    :cond_2
    move-object/from16 v18, v10

    const/16 v19, 0x0

    :cond_3
    const/16 v20, 0x0

    .line 981
    :goto_3
    :try_start_5
    const-string v14, "economicDimension"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 983
    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 984
    :try_start_6
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 985
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 987
    :goto_4
    :try_start_7
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 988
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v9

    move-object/from16 v9, v17

    move-object/from16 v14, v20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v15, v10

    const/4 v9, 0x0

    :cond_6
    const/4 v11, 0x0

    .line 991
    :goto_5
    :try_start_8
    const-string v14, "newZmScoreGuideInfo"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 992
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 993
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v12, v11

    move-object/from16 v14, v20

    move-object v11, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v8

    goto :goto_9

    :cond_7
    move-object v12, v11

    move-object/from16 v14, v20

    move-object v11, v9

    move-object/from16 v9, v17

    const/16 v17, 0x0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v12, v11

    move-object/from16 v14, v20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, v9

    move-object/from16 v9, v17

    goto/16 :goto_14

    :catchall_6
    move-exception v0

    move-object v15, v10

    :goto_6
    move-object/from16 v9, v17

    move-object/from16 v14, v20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_14

    :catchall_7
    move-exception v0

    move-object/from16 v17, v9

    move-object v15, v10

    move-object/from16 v18, v15

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_8
    move-object v15, v10

    move-object/from16 v18, v15

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 997
    :goto_9
    :try_start_9
    iget-object v8, v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-wide/16 v20, 0x12c

    if-eqz v8, :cond_9

    .line 998
    new-instance v8, Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v22, v9

    :try_start_a
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1000
    invoke-static {v13, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1001
    const-string v9, "pointEntryVO"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1002
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1003
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    goto/16 :goto_11

    :cond_9
    move-object/from16 v22, v9

    :cond_a
    const/4 v6, 0x0

    .line 1008
    :goto_a
    :try_start_b
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AlchemyRpcCall;->queryHome()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1009
    invoke-static/range {v20 .. v21}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 1010
    invoke-static {v13, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1011
    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1013
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1014
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    .line 1016
    :goto_b
    :try_start_c
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1017
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    goto :goto_c

    :cond_c
    const/4 v5, 0x0

    .line 1019
    :goto_c
    :try_start_d
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1020
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    .line 1022
    :goto_d
    :try_start_e
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1023
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    .line 1025
    :goto_e
    :try_start_f
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1026
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    .line 1028
    :goto_f
    :try_start_10
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1029
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v16, v0

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    goto/16 :goto_14

    :catchall_a
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    const/4 v2, 0x0

    goto :goto_14

    :catchall_b
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_14

    :catchall_d
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_14

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_11
    const/16 v16, 0x0

    :goto_10
    move-object/from16 v0, v16

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    move-object/from16 v9, v22

    move-object/from16 v16, v10

    goto :goto_15

    :catchall_e
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_12

    :catchall_f
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v8, v17

    :goto_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_12
    const/4 v7, 0x0

    goto :goto_14

    :catchall_10
    move-exception v0

    move-object v15, v10

    move-object/from16 v18, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_13
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    .line 1034
    :goto_14
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    move-object/from16 v17, v2

    const-string v2, "sesameInfo \u67e5\u8be2\u5931\u8d25:"

    invoke-static {v13, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-static {v13, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v16, v10

    move-object/from16 v2, v17

    move-object/from16 v13, v18

    const/4 v0, 0x0

    .line 1037
    :goto_15
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const-string v0, "\u829d\u9ebb\u4fe1\u7528\ud83d\udcaf["

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\u829d\u9ebb\u5206"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";\u5f85\u6512\u8fdb\u5ea6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v8, v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1045
    const-string v8, "\u829d\u9ebb\u7c92\u4f59\u989d"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_13

    .line 1050
    const-string v8, "\u7b49\u7ea7"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_13
    const-string v7, "\u6b21"

    if-eqz v5, :cond_15

    .line 1053
    const-string v8, "\u4eca\u65e5\u7d2f\u8ba1"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_14

    .line 1054
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_14
    move-object/from16 v4, v16

    :goto_16
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_16

    .line 1058
    const-string v5, "\u5269"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    if-eqz v2, :cond_18

    .line 1061
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_17

    const-string v3, ","

    goto :goto_17

    :cond_17
    move-object/from16 v3, v16

    :goto_17
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6bcf\u6b21"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u7c92"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 1064
    const-string v2, "("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    if-eqz v17, :cond_1a

    .line 1067
    const-string v2, "\u91d1\u5e01"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 1070
    const-string v2, "\u829d\u9ebb\u70bc\u91d1"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_1b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method private signPageTaskList()V
    .locals 8

    .line 526
    const-string v0, "categoryTaskList"

    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->signPageTaskList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    .line 527
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signPageTaskList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 535
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 536
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 537
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 538
    const-string v5, "taskList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 539
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    const-string v7, "BROWSE"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->doBrowseTask(Lorg/json/JSONArray;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2

    .line 544
    :cond_2
    const-string v5, "antMember"

    const-string v6, "doMoreTask"

    invoke-static {v5, v6, v4}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->handleAlphaRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 555
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "signPageTaskList err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private signinCalendar()V
    .locals 4

    const-string v0, "\u6512\u6d88\u8d39\u91d1\ud83d\udcb0\u7b7e\u5230[\u575a\u6301"

    .line 1875
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->signinCalendar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1876
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1879
    :cond_0
    const-string v3, "isSignInToday"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1881
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMemberRpcCall;->openBoxAward()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1882
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1883
    const-string v2, "amount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1884
    const-string v3, "consecutiveSignInDays"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5929]#\u83b7\u5f97["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6d88\u8d39\u91d1]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1890
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    const-string v2, "signinCalendar err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 1

    .line 116
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "\u4efb\u52a1\u6682\u505c\u23f8\ufe0f\u8682\u8681\u4f1a\u5458:\u5f53\u524d\u4e3a\u4ec5\u6536\u80fd\u91cf\u65f6\u95f4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 10

    .line 82
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 83
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x0

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "AntMemberTask"

    const-string v4, "\u4f1a\u5458\u4efb\u52a1"

    invoke-direct {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 84
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "AutoAntMemberTaskList"

    const-string v5, "\u4f1a\u5458\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    invoke-direct {v1, v4, v5, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AutoAntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 85
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda0;-><init>()V

    const-string v6, "AntMemberTaskList"

    const-string v7, "\u4f1a\u5458\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 86
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4f1a\u5458\u7b7e\u5230"

    const-string v5, "memberSign"

    invoke-direct {v1, v5, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberSign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 87
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u4f1a\u5458\u79ef\u5206 | \u5151\u6362\u6743\u76ca"

    const-string v5, "memberPointExchangeBenefit"

    invoke-direct {v1, v5, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberPointExchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 88
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda1;-><init>()V

    const-string v6, "memberPointExchangeBenefitList"

    const-string v7, "\u4f1a\u5458\u79ef\u5206 | \u6743\u76ca\u5217\u8868"

    invoke-direct {v1, v6, v7, v4, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberPointExchangeBenefitList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 89
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u829d\u9ebb\u7c92 | \u829d\u9ebb\u7c92\u4efb\u52a1"

    const-string v5, "collectSesame"

    invoke-direct {v1, v5, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 90
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u829d\u9ebb\u7c92 | \u829d\u9ebb\u70bc\u91d1\u4efb\u52a1"

    const-string v5, "sesameAlchemyGrainTask"

    invoke-direct {v1, v5, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGrainTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 91
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v4, "\u829d\u9ebb\u7c92\u4efb\u52a1 | \u63a8\u8350\u9ed1\u767d\u540d\u5355"

    const-string v5, "AutoMemberCreditSesameTaskList"

    invoke-direct {v1, v5, v4, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AutoMemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 92
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda2;-><init>()V

    const-string v5, "MemberCreditSesameTaskList"

    const-string v6, "\u829d\u9ebb\u7c92\u4efb\u52a1 | \u9ed1\u540d\u5355\u5217\u8868"

    invoke-direct {v1, v5, v6, v3, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->MemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 93
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6512\u829d\u9ebb\u5206\u8fdb\u5ea6"

    const-string v4, "SesameGrowthBehavior"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->SesameGrowthBehavior:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 94
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u829d\u9ebb\u70bc\u91d1 | \u6d88\u8017\u829d\u9ebb\u7c92\u70bc\u91d1"

    const-string v4, "sesameAlchemy"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 95
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u829d\u9ebb\u70bc\u91d1 | \u7b7e\u5230"

    const-string v4, "sesameAlchemySign"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemySign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 96
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u70bc\u91d1\u91d1\u8c46 | \u4efb\u52a1\u7b7e\u5230\u9886\u5956"

    const-string v4, "sesameAlchemyGoldenBean"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGoldenBean:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 97
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u70bc\u91d1\u91d1\u8c46 | \u829d\u9ebb\u7c92\u6362\u91d1\u8c46"

    const-string v4, "sesameAlchemyBeanExchange"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanExchange:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 98
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const/4 v8, 0x0

    const-string v4, "sesameAlchemyBeanLimit"

    const-string v5, "\u70bc\u91d1\u91d1\u8c46 | \u5f53\u65e5\u5151\u6362\u829d\u9ebb\u7c92\u4e0a\u9650(0\u4e0d\u9650\u5236)"

    move-object v3, v1

    move-object v6, v9

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 99
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    const-string v4, "sesameAlchemyReserveZml"

    const-string v5, "\u70bc\u91d1\u91d1\u8c46 | \u5269\u4f59\u829d\u9ebb\u7c92\u4e0b\u9650(0\u4e0d\u9650\u5236)"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyReserveZml:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 100
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u829d\u9ebb\u79ef\u5206 | \u5b9d\u7bb1"

    const-string v4, "pointTreasureBox"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->pointTreasureBox:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 101
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u751f\u6d3b\u8bb0\u5f55 | \u575a\u6301\u505a"

    const-string v4, "promise"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promise:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 102
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember$$ExternalSyntheticLambda3;-><init>()V

    const-string v5, "promiseList"

    const-string v6, "\u751f\u6d3b\u8bb0\u5f55 | \u575a\u6301\u505a\u5217\u8868"

    invoke-direct {v1, v5, v6, v3, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promiseList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 103
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6e38\u620f\u4e2d\u5fc3 | \u5f97\u4e50\u56ed\u8c46"

    const-string v4, "enableGameCenter"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->enableGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 104
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6211\u7684\u5feb\u9012 | \u798f\u5229\u52a0"

    const-string v4, "KuaiDiFuLiJia"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->KuaiDiFuLiJia:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 107
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u6d88\u8d39\u91d1 | \u7b7e\u5230"

    const-string v4, "signinCalendar"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->signinCalendar:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 108
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u9ec4\u91d1\u7968 | \u7b7e\u5230"

    const-string v4, "enableGoldTicket"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->enableGoldTicket:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 109
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u5546\u5bb6\u670d\u52a1 | \u7b7e\u5230"

    const-string v4, "merchantSignIn"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantSignIn:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 110
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const-string v3, "\u5546\u5bb6\u670d\u52a1 | \u5f00\u95e8\u6253\u5361"

    const-string v4, "merchantKMDK"

    invoke-direct {v1, v4, v3, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantKMDK:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 47
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->MEMBER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "\u4f1a\u5458"

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 127
    const-string v0, "BlackList::initMember"

    :try_start_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AutoAntMemberTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AutoMemberCreditSesameTaskList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGrainTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->initMemberTaskListMap(ZZZZ)V

    .line 129
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberSign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberSign()V

    .line 136
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->AntMemberTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 137
    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryPointCert(II)V

    .line 139
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryAllStatusTaskList()V

    .line 142
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberPointExchangeBenefit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->memberPointExchangeBenefit()V

    .line 145
    :cond_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->CheckInTaskRpcManager()V

    .line 147
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame()V

    .line 150
    :cond_4
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectSesame:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemySign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGoldenBean:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 151
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanExchange:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->pointTreasureBox:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    :cond_5
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameInfo()V

    .line 155
    :cond_6
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGrainTask:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->alchemySesameTasks()V

    .line 160
    :cond_7
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->SesameGrowthBehavior:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->handleGrowthGuideTasks()V

    .line 165
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryAndCollect()V

    .line 167
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->collectCreditFeedback()V

    .line 173
    :cond_8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promise:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->promise()V

    .line 177
    :cond_9
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->KuaiDiFuLiJia:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 178
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->RecommendTask()V

    .line 179
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->OrdinaryTask()V

    .line 181
    :cond_a
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->enableGoldTicket:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->goldTicket()V

    .line 188
    :cond_b
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->signinCalendar:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->signinCalendar()V

    .line 191
    :cond_c
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->enableGameCenter:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->checkAndDoSignIn()V

    .line 195
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryAndProcessTaskList()V

    .line 198
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->queryPointBallList()V

    .line 201
    :cond_d
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantSignIn:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantKMDK:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 202
    :cond_e
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/MerchantService;->transcodeCheck()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantSignIn:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 204
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/MerchantService;->taskListQueryV2()V

    .line 206
    :cond_f
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->merchantKMDK:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/MerchantService;->merchantKMDK()V

    .line 212
    :cond_10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemySign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGoldenBean:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 213
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanExchange:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->pointTreasureBox:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 215
    :cond_11
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AntOrchard"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v0, v1

    goto :goto_0

    .line 216
    :cond_12
    const-string v2, "GoldenBeansTaskList"

    invoke-virtual {v0, v2}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    :goto_0
    if-eqz v0, :cond_13

    .line 218
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    :cond_13
    move-object v4, v1

    .line 220
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemy:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemySign:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyGoldenBean:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 221
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanExchange:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 222
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyBeanLimit:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->sesameAlchemyReserveZml:Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->pointTreasureBox:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 223
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 220
    invoke-static/range {v1 .. v8}, Lio/github/lazyimmortal/sesame/model/task/antMember/SesameAlchemy;->run(ZZZLjava/util/Set;ZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 227
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntMember;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_1
    return-void
.end method
