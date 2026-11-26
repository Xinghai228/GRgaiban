.class public Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask;
.source "AncientTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AncientTree"


# instance fields
.field private ancientTreeCityCodeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

.field private ancientTreeOnlyWeek:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;-><init>()V

    return-void
.end method

.method private static ancientTree(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->canAncientTreeToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTreeProtect(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 77
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    const-string v1, "ancientTree err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static ancientTreeProtect(Ljava/lang/String;)V
    .locals 6

    .line 83
    const-string v0, "districtBriefInfoList"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTreeRpcCall;->homePage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 86
    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 88
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 90
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    const-string v4, "userCanProtectTreeNum"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    const-string v4, "districtInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 94
    const-string v4, "districtCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->districtDetail(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    .line 95
    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Status;->ancientTreeToday(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 98
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    const-string v1, "ancientTreeProtect err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static districtDetail(Ljava/lang/String;)V
    .locals 18

    .line 104
    const-string v0, "projectId"

    const-string v1, "cityCode"

    const-string v2, "ancientTreeList"

    const-string v3, "data"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTreeRpcCall;->districtDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 109
    :cond_1
    const-string v5, "districtInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cityName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    const-string v8, "districtName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 113
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 114
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 115
    const-string v10, "hasProtected"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_1

    .line 117
    :cond_2
    const-string v10, "ancientTreeControlInfo"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 118
    const-string v11, "quota"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 119
    const-string v12, "useQuota"

    invoke-virtual {v10, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-gt v11, v10, :cond_3

    goto/16 :goto_1

    .line 120
    :cond_3
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    new-instance v10, Lorg/json/JSONObject;

    invoke-static {v9, v6}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTreeRpcCall;->projectDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    sget-object v9, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_1

    .line 124
    :cond_4
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "canProtect"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 125
    const-string v6, "currentEnergy"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 126
    const-string v11, "ancientTree"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 127
    const-string v11, "activityId"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 129
    const-string v13, "ancientTreeInfo"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 130
    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "age"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 131
    const-string v15, "protectExpense"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 132
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-ge v6, v15, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 v16, 0xc8

    .line 133
    invoke-static/range {v16 .. v17}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 134
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v11, v12, v10}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTreeRpcCall;->protect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {v9, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4fdd\u62a4\u53e4\u6811\ud83c\udf90["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5e74"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",\u6d88\u8017\u80fd\u91cf"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "g"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    :cond_6
    move-object v6, v10

    :cond_7
    const-wide/16 v9, 0x1f4

    .line 138
    invoke-static {v9, v10}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 141
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    const-string v2, "districtDetail err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .locals 5

    .line 52
    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_ENERGY_TIME:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->IS_AFTER_8AM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTreeOnlyWeek:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 56
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v3, "\u661f\u671f\u4e00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u661f\u671f\u4e09"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u661f\u671f\u4e94"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 58
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 6

    .line 42
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 43
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ancientTreeOnlyWeek"

    const-string v4, "\u4ec5\u661f\u671f\u4e00\u3001\u4e09\u3001\u4e94\u8fd0\u884c\u4fdd\u62a4\u53e4\u6811"

    invoke-direct {v1, v3, v4, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTreeOnlyWeek:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    .line 43
    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 45
    new-instance v1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree$$ExternalSyntheticLambda0;-><init>()V

    const-string v4, "ancientTreeCityCodeList"

    const-string v5, "\u53e4\u6811\u533a\u5212\u4ee3\u7801\u5217\u8868"

    invoke-direct {v1, v4, v5, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField$SelectListFunc;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTreeCityCodeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 34
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->FOREST:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "\u53e4\u6811"

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 64
    :try_start_0
    const-string v0, "\u5f00\u59cb\u68c0\u6d4b\u53e4\u6811\u4fdd\u62a4"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTreeCityCodeList:Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->ancientTree(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 66
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/ancientTree/AncientTree;->TAG:Ljava/lang/String;

    const-string v2, "start.run err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
