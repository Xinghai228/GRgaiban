.class public final Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;
.super Ljava/lang/Object;
.source "TaskAlternative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;,
        Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;
    }
.end annotation


# static fields
.field private static final BROWSE_TITLE_KEYWORDS:[Ljava/lang/String;

.field private static final CZ_AMOUNT:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CH_INFO:Ljava/lang/String; = "zfbhy_mc_wkenoz66"

.field private static final DONE_EXTRA_SCENES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE_RECOMMEND_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FARM_REFERER:Ljava/lang/String; = "https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm"

.field private static final HOME_SOURCE:Ljava/lang/String; = "zmxy_mc_xctsup08"

.field private static final LONG_KEYWORDS:[Ljava/lang/String;

.field private static final MAX_RIGHTS_PER_TASK:I = 0x14

.field private static final MAX_TIMES_PER_ACTION:I = 0x1e

.field private static final PALADINX_VERSION:Ljava/lang/String; = "2.19.50"

.field private static final RANDOM:Ljava/util/Random;

.field private static final REAL_BEHAVIOR_KEYWORDS:[Ljava/lang/String;

.field private static final SHORT_KEYWORDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TaskAlternative"

.field private static final TAOBAO_REFERER:Ljava/lang/String; = "https://pages-fast.m.taobao.com/wow/z/tblife/achievement-i/JX4ezmspfN8txPMWyawe"

.field private static final TAOBAO_SELF_SCENES:[Ljava/lang/String;

.field private static final TB_TTID:Ljava/lang/String; = "1588718881807@taobao_android_10.68.10"

.field private static final USER_TOKEN_KEYS:[Ljava/lang/String;

.field private static extraSceneDay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->RANDOM:Ljava/util/Random;

    .line 69
    const-string v17, "monthlyCard"

    const-string v18, "freeze"

    const-string v1, "ANTORCHARD_DRAW_TIMES"

    const-string v2, "ANTFOREST_ACTIVITY_DRAW_TASK"

    const-string v3, "FUGUO"

    const-string v4, "ORCHARD"

    const-string v5, "ANTFOREST_VITALITY_TASK"

    const-string v6, "ANTFARM_ORCHARD_TASK_V2"

    const-string v7, "ANTORCHARD_DRAW_TIMES_TASK"

    const-string v8, "ANTFOREST_NORMAL_DRAW_TASK"

    const-string v9, "FOREST_CONTINUOUS_COLLECT_ENERGY_7"

    const-string v10, "2026cc_1000lyb_A&h"

    const-string v11, "ANTFARM_pay_6"

    const-string v12, "20260525_chouchoulechoukuan2"

    const-string v13, "IP_chouchoule_juankuan"

    const-string v14, "HEART_DONATE"

    const-string v15, "HEART_DONATION_ADVANCED_FOOD_V2"

    const-string v16, "MYZY_pay_xjsl_xddq"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->TAOBAO_SELF_SCENES:[Ljava/lang/String;

    .line 80
    const-string v0, "tToken"

    const-string v1, "Token"

    const-string v2, "userToken"

    const-string v3, "token"

    const-string v4, "user_token"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->USER_TOKEN_KEYS:[Ljava/lang/String;

    .line 95
    const-string v10, "juankuan"

    const-string v11, "choukuan"

    const-string v1, "xiadan"

    const-string v2, "zhifu"

    const-string v3, "goumai"

    const-string v4, "jiaofei"

    const-string v5, "huankuan"

    const-string v6, "chongzhi"

    const-string v7, "kuaidi"

    const-string v8, "huishou"

    const-string v9, "jiudian"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->LONG_KEYWORDS:[Ljava/lang/String;

    .line 107
    const-string v6, "jipiao"

    const-string v7, "yuebao"

    const-string v1, "pay"

    const-string v2, "charge"

    const-string v3, "zulin"

    const-string v4, "zuche"

    const-string v5, "dache"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->SHORT_KEYWORDS:[Ljava/lang/String;

    .line 114
    const-string v0, "_cz[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->CZ_AMOUNT:Ljava/util/regex/Pattern;

    .line 120
    const-string v16, "\u9000\u7a0e"

    const-string v17, "\u53d1\u7968"

    const-string v1, "\u652f\u4ed8"

    const-string v2, "\u7f34\u8d39"

    const-string v3, "\u6708\u5361"

    const-string v4, "\u6350\u6b3e"

    const-string v5, "\u6350\u8d60"

    const-string v6, "\u56de\u6536"

    const-string v7, "\u4e0b\u5355"

    const-string v8, "\u5145\u503c"

    const-string v9, "\u5916\u5356"

    const-string v10, "\u706b\u8f66\u7968"

    const-string v11, "\u8d2d\u7968"

    const-string v12, "\u51fa\u884c"

    const-string v13, "\u6253\u8f66"

    const-string v14, "\u5bc4\u4ef6"

    const-string v15, "\u70b9\u5355"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->REAL_BEHAVIOR_KEYWORDS:[Ljava/lang/String;

    .line 152
    const-string v0, "\u53c2\u89c2"

    const-string v1, "\u770b\u4e00\u770b"

    const-string v2, "\u901b"

    const-string v3, "\u6d4f\u89c8"

    const-string v4, "\u7b7e\u5230"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->BROWSE_TITLE_KEYWORDS:[Ljava/lang/String;

    .line 639
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->DONE_EXTRA_SCENES:Ljava/util/Set;

    .line 640
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->DONE_RECOMMEND_APPS:Ljava/util/Set;

    .line 641
    const-string v0, ""

    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->extraSceneDay:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bizTypeOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    .line 715
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static channelOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1335
    const-string v0, "channel"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 1339
    :cond_0
    const-string v1, "query"

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1340
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static cleanToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1107
    const-string p0, ""

    return-object p0

    .line 1109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1110
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1111
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1112
    :cond_1
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static completeBrowseTasks(Ljava/lang/String;)V
    .locals 13

    .line 722
    const-string v0, "sceneExtInfo"

    const-string v1, "browseTaskVO"

    const-string v2, "zmxy_mc_xctsup08"

    const-string v3, "source"

    const-string v4, "high"

    const-string v5, "]"

    const-string v6, "sceneId"

    const-string v7, ""

    .line 0
    const-string v8, "["

    .line 722
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 723
    const-string v10, "alreadyDisplayedGeneralDeliveryPopups"

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v10, "channelTaskPassThrough"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v10, "cantShowGeneralDeliveryPopups"

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    const-string v12, "VOUCHER"

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v10, "deviceLevel"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v10, "guideType"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v10, "moduleId"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    invoke-virtual {v9, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v7, "unityDeviceLevel"

    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v4, "com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.queryHomePage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 738
    :cond_0
    const-string v7, "taskModule"

    invoke-static {v4, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->findObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 742
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_3

    .line 744
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 745
    :cond_2
    const-string v7, "taskList"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    if-eqz v7, :cond_7

    const/4 v9, 0x0

    .line 748
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 749
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 750
    const-string v11, "targetProgress"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_4

    goto :goto_4

    .line 753
    :cond_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 754
    invoke-virtual {v11, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v12

    .line 756
    :goto_3
    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v10, "com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.completeBrowseTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 761
    :cond_7
    const-string v0, "needReceiveTaskCertCnt"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 762
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 763
    invoke-virtual {v0, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string p0, "com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.batchReceiveTaskPrize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryHomePage err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskAlternative"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public static completeByLink(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 28

    .line 518
    const-string v1, " => "

    const-string v2, "]#appId="

    const-string v3, "]\u6765\u6e90["

    const-string v4, "\u6e38\u620f\u4efb\u52a1\ud83d\udd17\u94fe\u63a5\u6a21\u62df["

    const-string v5, "high"

    const-string v6, "channelTaskPassThrough"

    const-string v7, "subScene"

    const-string v8, "taskId"

    const-string v9, "scene"

    const-string v10, "chInfo"

    const-string v11, "appId"

    const-string v12, "TaskAlternative"

    .line 0
    const-string v13, "["

    const-string v14, "\u6e38\u620f\u4efb\u52a1\ud83d\udd17\u524d\u7f6e\u4f2a\u7533\u62a5\u5f02\u5e38["

    const-string v0, "\u6e38\u620f\u4efb\u52a1\u23ed\ufe0f["

    .line 518
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isThirdPartyJump(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 519
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeThirdPartyJump(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0

    return v0

    .line 521
    :cond_0
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v11}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 522
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#\u8df3\u8f6c\u94fe\u63a5\u65e0 appId\uff0c\u65e0\u6cd5\u6a21\u62df\u5b8c\u6210"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    .line 526
    :cond_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$800(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v23, v1

    const-string v1, "]"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isThirdPartyJumpTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    .line 528
    :try_start_2
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$800(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v24, v2

    .line 530
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {v12, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v24, v2

    .line 534
    :goto_1
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    const-string v0, "zfbhy_mc_wkenoz66"

    .line 538
    :cond_3
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->channelOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 540
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 541
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$900(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    move-object/from16 v25, v12

    .line 543
    :try_start_4
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->gameParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v26, v3

    .line 544
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->gameParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v4

    .line 545
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v1

    .line 547
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 548
    invoke-virtual {v1, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v1, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 551
    const-string v10, "channel"

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 554
    invoke-virtual {v1, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 557
    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 560
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    :cond_8
    const-string v3, "reqType"

    const-string v4, "START_APP_FIRST_REQ"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    invoke-virtual {v1, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v3, "closeAd"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 565
    const-string v3, "deviceLevel"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v3, "unityDeviceLevel"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v3, "com.alipay.gamecenteruprod.biz.rpc.queryGameComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v3, v15}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->ladderActionsOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 570
    invoke-static {v15, v0, v14}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->submitEnterAndFirstFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    .line 571
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 573
    invoke-static {v15}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;->supports(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_f

    const/16 v8, 0x1e

    if-nez v4, :cond_9

    .line 578
    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->pendingRounds()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 579
    new-instance v8, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;

    const-string v9, ""

    invoke-direct {v8, v9, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_4

    .line 580
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->pendingRounds()I

    move-result v9

    if-lez v9, :cond_d

    .line 583
    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;->resolveAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 584
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 585
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 586
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;

    .line 587
    iget-object v12, v11, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->code:Ljava/lang/String;

    iget v11, v11, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->times:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 589
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->pendingRounds()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 590
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    .line 591
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v4, v8, :cond_c

    .line 592
    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 595
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 596
    new-instance v10, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v10, v11, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 601
    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v9, "]\u4efb\u52a1\u5217\u8868["

    if-eqz v8, :cond_e

    .line 602
    :try_start_5
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6e38\u620f\u4efb\u52a1\u23ed\ufe0f\u8df3\u8fc7["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]#\u9636\u68af\u4efb\u52a1\u5df2\u5b8c\u6210\uff0c\u65e0\u5f85\u63a8\u8fdb\u8fdb\u5ea6"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 605
    :cond_e
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6e38\u620f\u4efb\u52a1\ud83d\udd17\u5f00\u59cb\u5b8c\u6210["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]#\u767b\u5f55\u5382\u5546\u5e76\u4e0a\u62a5\u884c\u4e3a\uff0c\u5f85\u4e0a\u62a5\u52a8\u4f5c="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 605
    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;

    .line 611
    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v18

    iget-object v10, v9, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->code:Ljava/lang/String;

    iget v9, v9, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->times:I

    .line 612
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v15

    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v9

    .line 611
    invoke-static/range {v17 .. v22}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    or-int/2addr v8, v9

    goto :goto_5

    :cond_f
    :goto_6
    const/4 v8, 0x0

    .line 616
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v26

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u63d0\u4ea4\u6570\u636e | queryGameComponent: ["

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] => "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | submitUserAction: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v3, v5, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v5, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | submitEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-object v1, v5, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u5382\u5546\u4e0a\u62a5: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_12

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6267\u884c(vendor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {v15}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;->vendorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\uff0c\u7ed3\u679c="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_11

    .line 623
    const-string v3, "\u6210\u529f"

    goto :goto_7

    :cond_11
    const-string v3, "\u5931\u8d25"

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 624
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u9002\u914d(sdk="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;->sdkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u672a\u5b9e\u73b0\u534f\u8bae)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 625
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeGameCenterExtras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v25, v12

    .line 632
    :goto_9
    const-string v1, "completeByLink err:"

    move-object/from16 v2, v25

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method private static completeChannelFloatingBall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 826
    const-string v0, "]"

    const-string v1, "zmxy_mc_xctsup08"

    const-string v2, "source"

    .line 0
    const-string v3, "\u6e38\u620f\u4efb\u52a1\u25b6\ufe0f\u9891\u9053\u6d6e\u52a8\u7403["

    const-string v4, "["

    .line 826
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 827
    const-string v6, "sceneId"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string p0, "taskId"

    invoke-virtual {v5, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    const-string p0, "passThrough"

    const-string v6, ""

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    const-string p0, "com.alipay.gamecenteruprod.biz.rpc.channeltask.floatingball.consult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 834
    const-string v5, "floatingBallTypeList"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "CHANNEL_FLOATING_BALL"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    const-string v5, "gameId"

    invoke-virtual {p0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    const-string v5, "gameModuleId"

    invoke-virtual {p0, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string p3, "trafficDriverId"

    invoke-virtual {p0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string p3, "com.alipay.gamecenteruprod.biz.rpc.channeltask.floatingball.complete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 842
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]#trafficDriverId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u54cd\u5e94="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "channeltask.floatingball err: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskAlternative"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static completeGameCenterExtras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr()Ljava/lang/String;

    move-result-object v0

    .line 657
    sget-object v1, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->DONE_EXTRA_SCENES:Ljava/util/Set;

    monitor-enter v1

    .line 658
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->extraSceneDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    sput-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->extraSceneDay:Ljava/lang/String;

    .line 660
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 661
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->DONE_RECOMMEND_APPS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 663
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    monitor-exit v1

    return-void

    .line 666
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeBrowseTasks(Ljava/lang/String;)V

    .line 668
    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->drawGameCenterAwards(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeRecommendGames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 666
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static completeRecommendGames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "["

    .line 776
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 777
    const-string v2, "sceneId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v2, "source"

    const-string v3, "zmxy_mc_xctsup08"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v2, "creativeId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v2, "topGameId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string v2, "com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.queryRecommendGames"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 787
    :cond_0
    const-string v1, "todayRecommendVO"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->findObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :cond_1
    const-string v1, "gameList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 792
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 793
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 797
    :cond_3
    const-string v3, "jumpUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 798
    const-string v4, "appId"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 802
    :cond_4
    const-string v4, "trafficDriverId"

    const-string v5, "driverId"

    .line 803
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 802
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 805
    const-string v5, "gameModuleId"

    const-string v6, "moduleId"

    .line 806
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {p0, v3, v4, v2, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeChannelFloatingBall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 809
    :cond_5
    sget-object v2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->DONE_RECOMMEND_APPS:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 810
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 811
    monitor-exit v2

    goto :goto_2

    .line 813
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :try_start_2
    invoke-static {v3, p1, p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->enterGameOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 813
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 817
    const-string p1, "TaskAlternative"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "queryRecommendGames err: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static completeThirdPartyJump(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 14

    const-string v0, "\u8df3\u8f6c\u4efb\u52a1\u2197\ufe0f\u4efb\u52a1\u8df3\u8f6c\u7b2c\u4e09\u65b9["

    const-string v1, "\",\"ttid\":\"1588718881807@taobao_android_10.68.10\"}"

    const-string v2, "{\"sceneCode\":\"FUGUO\",\"convertTag\":\""

    const-string v3, "\u8df3\u8f6c\u4efb\u52a1\u2197\ufe0f["

    .line 974
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "iepTaskSceneCode"

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sceneCode"

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 978
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 979
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "third_scene_code"

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 982
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isSelfScene(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 985
    :cond_2
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->queryUserToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 987
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "mtop.tmall.farm.orchard.task.notifyAlipayTaskFinish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"userToken\":\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "{\"referer\":\"https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm\"}"

    const/4 v12, 0x0

    const/16 v13, 0x3a98

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->retMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 996
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]#sceneCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u672a\u53d6\u5230 userToken\uff0c\u6539\u7528\u94fe\u63a5 token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 997
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->finishByTaobaoLife(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result p0

    return p0

    .line 983
    :cond_4
    :goto_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->finishByTaobaoLife(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 999
    const-string v0, "completeThirdPartyJump err:"

    const-string v1, "TaskAlternative"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static drawGameCenterAwards(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 687
    const-string v0, "H5"

    .line 0
    const-string v1, "["

    .line 687
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 688
    const-string v3, "batchDrawCount"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 689
    const-string v3, "bizType"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->bizTypeOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    const-string v3, "requestType"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v3, "sceneCode"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v3, "source"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v0, "version"

    const-string v3, "20250821"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v0, "com.alipay.charitygamecenter.drawGameCenterAward"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 699
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 700
    const-string v0, "gameCenterDrawAwardList"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    const-string v2, "\u6e38\u620f\u4efb\u52a1\ud83c\udf81\u9886\u5956["

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u5171 "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u4efd\uff0c\u5269\u4f59\u6b21\u6570="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "drawRightsTimes"

    const/4 v0, 0x0

    .line 703
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 702
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u6682\u65e0\u53ef\u9886\u5956\u52b1("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "desc"

    .line 706
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 705
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "drawGameCenterAward err: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskAlternative"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static enterGameOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "["

    .line 852
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 853
    const-string v2, "appId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v2, "chInfo"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    const-string v2, "reqType"

    const-string v3, "START_APP_FIRST_REQ"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    const-string v2, "scene"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    const-string v2, "closeAd"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 858
    const-string v2, "com.alipay.gamecenteruprod.biz.rpc.queryGameComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x12c

    .line 859
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 860
    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->submitEnterAndFirstFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "enterGameOnly err: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskAlternative"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static externalTaskParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1097
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->externalTaskParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1099
    const-string p0, ""

    return-object p0

    .line 1101
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->cleanToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static externalTaskParams(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1074
    const-string v0, "external_task_param"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1075
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 1080
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1081
    const-string v3, "params"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    return-object v2

    .line 1086
    :catchall_0
    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_1
    :cond_2
    return-object v1
.end method

.method private static findObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 922
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->findObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 929
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 937
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 938
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 939
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 940
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->findObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static finishByTaobaoLife(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1012
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userToken"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "third_token"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "token"

    if-eqz v2, :cond_1

    .line 1017
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->externalTaskParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    :cond_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iepTaskSceneCode"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "sceneCode"

    if-eqz v4, :cond_3

    .line 1024
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1027
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "third_scene_code"

    invoke-static {v1, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1029
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1030
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->externalTaskParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    :cond_5
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "iepTaskType"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "taskType"

    if-eqz v6, :cond_6

    .line 1034
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1037
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "third_task_type"

    invoke-static {v2, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1039
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1040
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->externalTaskParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    .line 1046
    :cond_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1047
    const-string v6, "source"

    const-string v8, "taobao"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1052
    const-string v1, "bizType"

    const-string v2, "achievement.antFinishTask"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1053
    const-string v1, "bizParam"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    const-string v1, "ttid"

    const-string v2, "1588718881807@taobao_android_10.68.10"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1055
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1056
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x3a98

    .line 1055
    const-string v4, "mtop.aplatform.taobaolife.get"

    const-string v6, "{\"referer\":\"https://pages-fast.m.taobao.com/wow/z/tblife/achievement-i/JX4ezmspfN8txPMWyawe\"}"

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8df3\u8f6c\u4efb\u52a1\u2197\ufe0f\u4efb\u52a1\u8df3\u8f6c\u7b2c\u4e09\u65b9["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->retMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->logByTaskList(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 1043
    :cond_a
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8df3\u8f6c\u4efb\u52a1\u2197\ufe0f["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u94fe\u63a5\u7f3a\u5c11 userToken/sceneCode/taskType\uff0c\u65e0\u6cd5\u6a21\u62df\u7b2c\u4e09\u65b9\u8df3\u8f6c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static varargs firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 354
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static gameParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 904
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 908
    :cond_0
    const-string v0, "originalMap"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 909
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    return-object v1

    .line 913
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 5

    .line 387
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->isBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 391
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isThirdPartyJumpTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0

    .line 392
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isGameTaskLike(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->isGameTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    return v1

    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 397
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isBrowseTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 402
    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->pendingRounds()I

    move-result v0

    .line 403
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$600(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "TODO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-lez v0, :cond_6

    :cond_5
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    return v1

    .line 406
    :cond_7
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$600(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]\u573a\u666f["

    if-nez v1, :cond_8

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620f\u4efb\u52a1\u25b6\ufe0f["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]#\u72b6\u6001="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$600(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u5269\u4f59\u6863\u4f4d/\u8fdb\u5ea6="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 411
    :cond_8
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\u6e38\u620f\u4efb\u52a1\u23ed\ufe0f\u8df3\u8fc7["

    if-eqz v0, :cond_9

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u5df2\u52a0\u5165\u4e0d\u5141\u8bb8\u6267\u884c\u5217\u8868"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 414
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v3

    .line 419
    :cond_9
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$700(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isTransactionTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]#bizKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$700(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c\u4ea4\u6613/\u5c65\u7ea6\u7c7b\u4e0d\u6a21\u62df"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v3

    .line 423
    :cond_a
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isRealBehaviorTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u6807\u9898\u6216\u63cf\u8ff0\u5c5e\u771f\u5b9e\u652f\u4ed8\u3001\u7f34\u8d39\u3001\u51fa\u884c\u3001\u56de\u6536\u7b49\u884c\u4e3a\u7c7b\uff0c\u4e0d\u6a21\u62df"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v3

    .line 429
    :cond_b
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->hasExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return v3

    .line 432
    :cond_c
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->completeByLink(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->recordExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v3
.end method

.method public static hasExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 477
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getMaxGameTaskSubmitPerDay()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 479
    :goto_0
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    const-string p2, "\u6e38\u620f\u4efb\u52a1\u23ed\ufe0f["

    if-gtz v0, :cond_1

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]#\u6bcf\u65e5\u6700\u5927\u6267\u884c\u6b21\u6570\u4e3a0\uff0c\u4ec5\u6536\u96c6\u4e0d\u6267\u884c"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v1

    .line 484
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "task|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->getGameTaskSubmitCountToday(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u573a\u666f["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u4eca\u65e5\u6267\u884c\u5df2\u8fbe\u4e0a\u9650["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isBrowseTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 6

    .line 159
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->BROWSE_TITLE_KEYWORDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 160
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$100(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v4

    .line 164
    const-string v5, "NORMAL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "VIEW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LABEL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "FREE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method private static isExplicitJumpLink(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 195
    const-string v0, "jumpAction="

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "external_task_param="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isGameTaskLike(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 3

    .line 213
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->isCallAppOutTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$300(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VISIT_FLOAT_BALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 219
    :cond_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "appId"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isRealBehaviorTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->REAL_BEHAVIOR_KEYWORDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 226
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isSelfScene(Ljava/lang/String;)Z
    .locals 5

    .line 1211
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->TAOBAO_SELF_SCENES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1212
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isThirdPartyJump(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1198
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    const-string v1, "jumpAction="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wakeup-transit"

    .line 1202
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "market.m.taobao.com"

    .line 1203
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "external_task_param="

    .line 1204
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userToken"

    .line 1205
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "third_token"

    .line 1206
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tToken"

    .line 1207
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isThirdPartyJumpTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->isCallAppOutTask()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 184
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isExplicitJumpLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 187
    :cond_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$300(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->isThirdPartyJump(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTransactionTask(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 136
    sget-object v1, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->LONG_KEYWORDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->SHORT_KEYWORDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?<![a-z])"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(?![a-z])"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_4
    const-string v1, "game_cz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->CZ_AMOUNT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_2
    return v0
.end method

.method private static ladderActionsOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 1283
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 1286
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 1287
    :cond_1
    const-string v1, "ladderTaskComponentVO"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_1

    .line 1288
    :cond_2
    const-string v1, "mainTaskList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    return-object v0

    .line 1292
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1293
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 1294
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1295
    const-string v5, "appId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_5

    .line 1298
    :cond_4
    const-string v5, "taskStatus"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1299
    const-string v6, "FINISHED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "RECEIVED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "COMPLETED"

    .line 1300
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_5

    .line 1303
    :cond_5
    const-string v6, "taskId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x23

    .line 1304
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gtz v7, :cond_6

    goto/16 :goto_5

    .line 1308
    :cond_6
    const-string v8, "taskProgressVO"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_7

    const/4 v8, 0x0

    goto :goto_3

    .line 1309
    :cond_7
    const-string v8, "totalProgress"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    :goto_3
    if-nez v4, :cond_8

    const/4 v4, 0x0

    goto :goto_4

    .line 1310
    :cond_8
    const-string v9, "currentProgress"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    :goto_4
    if-lez v8, :cond_9

    if-lt v4, v8, :cond_9

    goto :goto_5

    :cond_9
    const/16 v9, 0x1e

    sub-int v10, v8, v4

    .line 1314
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1315
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6e38\u620f\u4efb\u52a1\u25b6\ufe0f\u9636\u68af\u52a8\u4f5c\u7801["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u72b6\u6001="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u8fdb\u5ea6="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u9700\u4e0a\u62a5="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1318
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 1319
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v9, v5, :cond_b

    .line 1320
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1323
    :cond_c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1325
    new-instance v2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_d
    return-object p0

    :catchall_0
    :cond_e
    :goto_7
    return-object v0
.end method

.method private static queryUserToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"sceneCode\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipay.antmember.callApp.queryCallAppSchema"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    const-string v3, "\u8df3\u8f6c\u4efb\u52a1\ud83d\udd0euserToken[sceneCode="

    if-eqz v1, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#queryCallAppSchema \u8fd4\u56de\u7a7a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    .line 1126
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1127
    const-string v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#success=false\uff0c\u54cd\u5e94="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    .line 1131
    :cond_1
    const-string v4, "channelLandingUrlLink"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userToken"

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u53d6\u81ea channelLandingUrlLink"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v4

    .line 1136
    :cond_2
    const-string v4, "schemaConfigList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u65e0 schemaConfigList\uff0c\u54cd\u5e94="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1141
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1142
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 1146
    :cond_4
    sget-object v7, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->USER_TOKEN_KEYS:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 1147
    const-string v11, "channelDeepLink"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1148
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1149
    const-string v11, "channelMarketLink"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1151
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e38\u620f\u4efb\u52a1\ud83d\udd0euserToken[sceneCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u53d6\u81ea schemaConfigList["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1157
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u94fe\u63a5\u4e0e schema \u5747\u65e0 token\uff0c\u54cd\u5e94="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-object v2
.end method

.method public static recordExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Status;->incrGameTaskSubmitToday(Ljava/lang/String;)V

    return-void
.end method

.method private static requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1362
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1363
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static retMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    .line 1168
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 1174
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1175
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 1176
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    .line 1181
    :catchall_0
    :cond_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1169
    :cond_3
    :goto_0
    const-string p0, "\u54cd\u5e94\u4e3a\u7a7a"

    return-object p0
.end method

.method public static rightsProgressText(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p2

    add-int/2addr p0, v0

    .line 1269
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1270
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\uff08"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\uff09"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1267
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static rightsTimesToDo(II)I
    .locals 2

    const/4 v0, 0x1

    if-lez p1, :cond_2

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-le p1, v1, :cond_1

    return v0

    :cond_1
    sub-int/2addr p1, p0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static submitEnterAndFirstFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 876
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 877
    const-string v1, "actionCode"

    const-string v2, "enterGame"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string v1, "paladinxVersion"

    const-string v2, "2.19.50"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    const-string v1, "gameFramework"

    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 882
    const-string v5, "com.alipay.gamecenteruprod.biz.rpc.v3.submitUserAction"

    invoke-static {v5, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 883
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 884
    const-string v7, "ALIVE_ENTER"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string v7, "CH_INFO"

    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    const-string p1, "CPS_ID"

    const-string v7, "unknown"

    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string p1, "PALADINX_VERSION"

    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string p1, "PLAY_SCENE"

    const-string v2, "NORMAL"

    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string p1, "SCENE_ID"

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 891
    const-string p2, "appId"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string p0, "eventAttrMap"

    invoke-virtual {p1, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string p0, "eventId"

    const-string p2, "GAME_FIRST_FRAME"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "platform_"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->RANDOM:Ljava/util/Random;

    const v2, 0x186a0

    .line 895
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 894
    const-string p2, "idempotentNo"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    const-string p0, "paladinx_auto"

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 898
    const-string p1, "com.alipay.gameevent.biz.rpc.submitEvent"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 899
    filled-new-array {v1, v5, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static takeExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 469
    new-instance v6, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v4, ""

    const-string v5, "TODO"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->takeSubmitQuota(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    move-result p0

    return p0
.end method

.method private static takeSubmitQuota(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z
    .locals 6

    .line 446
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getMaxGameTaskSubmitPerDay()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 448
    :goto_0
    const-string v2, "\u6e38\u620f\u4efb\u52a1\u23ed\ufe0f["

    if-gtz v0, :cond_1

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u6bcf\u65e5\u6700\u5927\u6267\u884c\u6b21\u6570\u4e3a0\uff0c\u4ec5\u6536\u96c6\u4e0d\u6267\u884c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v1

    .line 452
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "task|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->getGameTaskSubmitCountToday(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v0, :cond_2

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u573a\u666f["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u4eca\u65e5\u6267\u884c\u5df2\u8fbe\u4e0a\u9650["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return v1

    .line 460
    :cond_2
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->incrGameTaskSubmitToday(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1345
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[?&]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=([^&#]*)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 1349
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1350
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x1

    .line 1353
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1355
    :try_start_0
    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static urlParamDeep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1224
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1228
    :cond_0
    const-string v0, "targetUrl"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    const-string v0, "url"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->urlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
