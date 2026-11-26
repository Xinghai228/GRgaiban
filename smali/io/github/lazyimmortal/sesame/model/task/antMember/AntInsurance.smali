.class public Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;
.super Ljava/lang/Object;
.source "AntInsurance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AntInsurance"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beanExchange(Ljava/lang/String;)V
    .locals 7

    .line 113
    const-string v0, "result"

    .line 0
    const-string v1, "\u8682\u8681\u4fdd\u969c\ud83d\udee1\ufe0f\u5b89\u5fc3\u8c46\u5151\u6362["

    .line 113
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "INS_BLUE_BEAN"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->queryUserAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "userCurrentPoint"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 117
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->beanExchangeDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 121
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "rspContext"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "params"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "exchangeDetail"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    const-string v4, "itemName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "itemExchangeConsultDTO"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    const-string v5, "realConsumePointAmount"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 125
    const-string v6, "canExchange"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le v5, v2, :cond_2

    goto :goto_0

    .line 127
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0, v5}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->beanExchange(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#\u6d88\u8017["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5fc3\u8c46]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 132
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    const-string v1, "beanExchange err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static beanSignIn()V
    .locals 5

    .line 95
    const-string v0, "result"

    const-string v1, "\u8682\u8681\u4fdd\u969c\ud83d\udee1\ufe0f\u5b89\u5fc3\u8c46\u7b7e\u5230#\u83b7\u5f97["

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->beanQuerySignInProcess()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "canPush"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->beanSignInTrigger()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "prizeSendOrderDTOList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "prizeName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 106
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    const-string v2, "beanSignIn err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static executeTask(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    const-string v0, "beanSignIn"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->beanSignIn()V

    .line 19
    :cond_0
    const-string v0, "beanExchangeBubbleBoost"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    const-string v0, "IT20230214000700069722"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->beanExchange(Ljava/lang/String;)V

    .line 21
    :cond_1
    const-string v0, "beanExchangeGoldenTicket"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    const-string v0, "IT20240322000100086304"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->beanExchange(Ljava/lang/String;)V

    .line 23
    :cond_2
    const-string v0, "gainSumInsured"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 24
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->lotteryDraw()V

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->gainSumInsured()V

    :cond_3
    return-void
.end method

.method private static gainMyAndFamilySumInsured(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "\u8682\u8681\u4fdd\u969c\ud83d\udee1\ufe0f\u9886\u53d6\u4fdd\u969c\u91d1#\u83b7\u5f97["

    if-eqz p0, :cond_2

    .line 56
    const-string v1, "sendType"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    :try_start_0
    const-string v1, "entrance"

    const-string v2, "jkj_zhima_dairy66"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->gainMyAndFamilySumInsured(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 63
    :cond_1
    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "gainSumInsuredDTO"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "gainSumInsuredYuan"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5143\u4fdd\u989d]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 66
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    const-string v1, "gainMyAndFamilySumInsured err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static gainSumInsured()V
    .locals 5

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->queryMultiSceneWaitToGainList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 34
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 39
    check-cast v2, Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 41
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->gainMyAndFamilySumInsured(Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_2
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 45
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->gainMyAndFamilySumInsured(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    const-string v2, "gainSumInsured err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static lotteryDraw()V
    .locals 6

    .line 72
    const-string v0, "result"

    const-string v1, "insurance::lotteryDraw"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->queryAvailableNum()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 79
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsuranceRpcCall;->lotteryDraw()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 82
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "prizeName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8682\u8681\u4fdd\u969c\ud83d\udee1\ufe0f\u5929\u5929\u9886\u53d6\u4fdd\u969c\u798f\u5229#\u83b7\u5f97["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Status;->flagToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 88
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antMember/AntInsurance;->TAG:Ljava/lang/String;

    const-string v2, "lotteryDraw err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
