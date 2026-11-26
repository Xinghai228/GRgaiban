.class public Lio/github/lazyimmortal/sesame/util/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field public static final CODE_UNSUPPORTED_RPC:Ljava/lang/String; = "400000040"

.field private static final TAG:Ljava/lang/String; = "MessageUtil"

.field private static final UNKNOWN_TAG:Ljava/lang/String; = "Unknown TAG"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 450
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 451
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    .line 452
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    .line 453
    const-string p1, "\u9ed1\u540d\u5355\u5931\u8d25\uff1a"

    const-string v0, "\u6dfb\u52a0"

    if-nez p0, :cond_0

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 458
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u81ea\u52a8\u62c9\u9ed1\ud83c\udff4\u5728["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u4e2d\u6dfb\u52a0["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\u9ed1\u540d\u5355:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 4

    .line 70
    const-string v0, "memo"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "SUCCESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u6210\u529f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x1

    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 82
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkMemo err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkMemo(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1

    .line 65
    const-string v0, "Unknown TAG"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 96
    :try_start_0
    const-string p1, "JSON\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5904\u7406\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 101
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    const-string v1, "resultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 109
    :cond_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 110
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeInteger(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 111
    :cond_3
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 112
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 114
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkResultCode err:"

    invoke-static {p1, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkResultCode(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1

    .line 89
    const-string v0, "Unknown TAG"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 268
    const-string v3, "errorMsg"

    const-string v4, "resultView"

    const-string v5, "errorCode"

    const-string v6, "desc"

    if-nez v2, :cond_0

    .line 269
    :try_start_0
    const-string v1, "JSON\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 276
    :cond_0
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 277
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    const-string v10, "\u4e0d\u652f\u6301rpc\u8c03\u7528"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "\u4e0d\u652f\u6301RPC\u8c03\u7528"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 284
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "AntOrchardTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "AntOceanAntiepTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "AntForestHuntTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "GoldenBeansTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v8, "MonopolyTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto/16 :goto_2

    :sswitch_5
    const-string v8, "MemberCreditSesameTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xf

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "AntForestVitalityTaskList"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :sswitch_7
    const-string v8, "AntDodoTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_8
    const-string v8, "AntOceanFishBlackList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    goto :goto_2

    :sswitch_9
    const-string v8, "AntStallTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xc

    goto :goto_2

    :sswitch_a
    const-string v8, "AntFarmChickenChefTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_b
    const-string v8, "AntFarmDrawMachineTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_c
    const-string v8, "AntOrchardDrawTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xa

    goto :goto_2

    :sswitch_d
    const-string v8, "AntMemberTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xe

    goto :goto_2

    :sswitch_e
    const-string v8, "AntFarmDoFarmTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_f
    const-string v8, "AntSportsTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    const/16 v8, 0xd

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, -0x1

    :goto_2
    const-string v10, "AntMember"

    const-string v11, "AntOcean"

    const-string v12, "\u670d\u52a1\u5668\u6b63\u5728\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff5e"

    const-string v13, "AntFarm"

    const-string v14, "AntOrchard"

    const-string v15, "AntForestV2"

    const-string v9, "memo"

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_a

    .line 431
    :pswitch_0
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 432
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    const-string v3, "\u4e0d\u662f\u6709\u6548\u7684\u5165\u53c2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u5b58\u5728\u8fdb\u884c\u4e2d\u7684\u751f\u6d3b\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u751f\u6d3b\u8bb0\u5f55\u6a21\u677f\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v7

    :goto_3
    if-eqz v9, :cond_c

    .line 438
    const-string v2, "\u4f1a\u5458\u829d\u9ebb\u4fe1\u7528\u4efb\u52a1\u829d\u9ebb\u7c92"

    invoke-static {v10, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v7, :cond_c

    .line 424
    const-string v2, "\u4f1a\u5458\u4efb\u52a1"

    invoke-static {v10, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 402
    :pswitch_2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 403
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    const-string v5, "TASK_ID_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    .line 410
    :cond_6
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 411
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    const-string v3, "\u6d77\u8c5a\u6d3b\u52a8\u89e6\u53d1\u4e0d\u53ef\u91cd\u8bd5\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    move v9, v7

    :goto_4
    if-eqz v9, :cond_c

    .line 417
    const-string v2, "AntSports"

    const-string v3, "\u8fd0\u52a8\u4efb\u52a1"

    invoke-static {v2, v0, v3, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_3
    if-eqz v7, :cond_c

    .line 396
    const-string v2, "AntStall"

    const-string v3, "\u65b0\u6751\u4efb\u52a1"

    invoke-static {v2, v0, v3, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_4
    if-eqz v7, :cond_c

    .line 389
    const-string v2, "\u519c\u573a\u91d1\u8c46\u4efb\u52a1"

    invoke-static {v14, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_5
    if-eqz v7, :cond_c

    .line 382
    const-string v2, "\u519c\u573a\u62bd\u62bd\u4e50\u4efb\u52a1"

    invoke-static {v14, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 368
    :pswitch_6
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 369
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "\u4efb\u52a1\u5168\u5c40\u914d\u7f6e\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    move v9, v7

    :goto_5
    if-eqz v9, :cond_c

    .line 375
    const-string v2, "\u519c\u573a\u80a5\u6599\u4efb\u52a1"

    invoke-static {v14, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_7
    if-eqz v7, :cond_c

    .line 362
    const-string v2, "\u795e\u5947\u6d77\u6d0b\u53bb\u6478\u9c7c\u4efb\u52a1"

    invoke-static {v11, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_8
    if-eqz v7, :cond_c

    .line 355
    const-string v2, "\u795e\u5947\u6d77\u6d0b\u666e\u901a\u4efb\u52a1"

    invoke-static {v11, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_9
    if-eqz v7, :cond_c

    .line 348
    const-string v2, "AntDodo"

    const-string v3, "\u795e\u5947\u7269\u79cd\u4efb\u52a1"

    invoke-static {v2, v0, v3, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 334
    :pswitch_a
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 335
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    move v9, v7

    :goto_6
    if-eqz v9, :cond_c

    .line 341
    const-string v2, "\u5e84\u56ed\u5c0f\u9e21\u5927\u53a8\u4efb\u52a1"

    invoke-static {v13, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 321
    :pswitch_b
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 322
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v9, 0x1

    goto :goto_7

    :cond_a
    move v9, v7

    :goto_7
    if-eqz v9, :cond_c

    .line 328
    const-string v2, "\u5e84\u56ed\u88c5\u626e\u62bd\u62bd\u4e50\u4efb\u52a1"

    invoke-static {v13, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 308
    :pswitch_c
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 309
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    move v9, v7

    :goto_8
    if-eqz v9, :cond_c

    .line 315
    const-string v2, "\u5e84\u56ed\u9972\u6599\u4efb\u52a1"

    invoke-static {v13, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_d
    if-eqz v7, :cond_c

    .line 302
    const-string v2, "\u8682\u8681\u68ee\u6797\u4fdd\u62a4\u5730\u4efb\u52a1"

    invoke-static {v15, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_e
    if-eqz v7, :cond_c

    .line 295
    const-string v2, "\u8682\u8681\u68ee\u6797\u62bd\u62bd\u4e50\u4efb\u52a1"

    invoke-static {v15, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_f
    if-eqz v7, :cond_c

    .line 288
    const-string v2, "\u8682\u8681\u68ee\u6797\u6d3b\u529b\u503c\u4efb\u52a1"

    invoke-static {v15, v0, v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->MarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    .line 444
    :goto_9
    sget-object v1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v2, "checkSuccess err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71420df7 -> :sswitch_f
        -0x4a98d9bf -> :sswitch_e
        -0x3e5695dc -> :sswitch_d
        -0x175a1cb5 -> :sswitch_c
        -0xa17b697 -> :sswitch_b
        -0x49e95df -> :sswitch_a
        -0x24edf04 -> :sswitch_9
        0x2561678e -> :sswitch_8
        0x2d7bc3a0 -> :sswitch_7
        0x36fe43e9 -> :sswitch_6
        0x3b0eeace -> :sswitch_5
        0x42b9c232 -> :sswitch_4
        0x5a3a9cfd -> :sswitch_3
        0x5e17a35a -> :sswitch_2
        0x78cad1c7 -> :sswitch_1
        0x7dec87e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkResultCodeInteger(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 4

    .line 146
    const-string v0, "resultMsg"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x1

    .line 155
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 157
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkResultCodeInteger err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkResultCodeString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 5

    .line 125
    const-string v0, "resultView"

    const-string v1, "resultDesc"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "resultCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p0, p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x1

    .line 136
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 138
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkResultCodeString err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 7

    .line 169
    const-string v0, "resultView"

    const-string v1, "resultDesc"

    const-string v2, "desc"

    const-string v3, "errorMessage"

    const-string v4, "errorMsg"

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "success"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "isSuccess"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 170
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    invoke-static {p0, p1, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-static {p0, p1, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-static {p0, p1, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    invoke-static {p0, p1, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x1

    .line 185
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 187
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkSuccess err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkSuccess(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1

    .line 164
    const-string v0, "Unknown TAG"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getTaskListName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_11

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AntOrchardTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "AntOceanAntiepTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "AntForestHuntTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "GoldenBeansTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "MonopolyTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "MemberCreditSesameTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "AntForestVitalityTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "AntDodoTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "AntOceanFishBlackList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "AntStallTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "AntFarmChickenChefTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "AntFarmDrawMachineTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "AntOrchardDrawTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "AntMemberTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "AntFarmDoFarmTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "AntSportsTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    .line 222
    :pswitch_0
    const-string p0, "\u80a5\u6599"

    return-object p0

    .line 218
    :pswitch_1
    const-string p0, "\u6d77\u6d0b\u666e\u901a\u4efb\u52a1"

    return-object p0

    .line 206
    :pswitch_2
    const-string p0, "\u68ee\u6797\u62bd\u62bd\u4e50"

    return-object p0

    .line 226
    :pswitch_3
    const-string p0, "\u91d1\u8c46"

    return-object p0

    .line 208
    :pswitch_4
    const-string p0, "\u4fdd\u62a4\u5730"

    return-object p0

    .line 234
    :pswitch_5
    const-string p0, "\u829d\u9ebb\u4fe1\u7528\u829d\u9ebb\u7c92"

    return-object p0

    .line 204
    :pswitch_6
    const-string p0, "\u6d3b\u529b\u503c"

    return-object p0

    .line 216
    :pswitch_7
    const-string p0, "\u795e\u5947\u7269\u79cd"

    return-object p0

    .line 220
    :pswitch_8
    const-string p0, "\u6d77\u6d0b\u53bb\u6478\u9c7c"

    return-object p0

    .line 228
    :pswitch_9
    const-string p0, "\u65b0\u6751"

    return-object p0

    .line 214
    :pswitch_a
    const-string p0, "\u5c0f\u9e21\u5927\u53a8"

    return-object p0

    .line 212
    :pswitch_b
    const-string p0, "\u88c5\u626e\u62bd\u62bd\u4e50"

    return-object p0

    .line 224
    :pswitch_c
    const-string p0, "\u519c\u573a\u62bd\u62bd\u4e50"

    return-object p0

    .line 232
    :pswitch_d
    const-string p0, "\u4f1a\u5458"

    return-object p0

    .line 210
    :pswitch_e
    const-string p0, "\u9972\u6599"

    return-object p0

    .line 230
    :pswitch_f
    const-string p0, "\u8fd0\u52a8"

    return-object p0

    .line 200
    :cond_11
    :goto_1
    const-string p0, ""

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71420df7 -> :sswitch_f
        -0x4a98d9bf -> :sswitch_e
        -0x3e5695dc -> :sswitch_d
        -0x175a1cb5 -> :sswitch_c
        -0xa17b697 -> :sswitch_b
        -0x49e95df -> :sswitch_a
        -0x24edf04 -> :sswitch_9
        0x2561678e -> :sswitch_8
        0x2d7bc3a0 -> :sswitch_7
        0x36fe43e9 -> :sswitch_6
        0x3b0eeace -> :sswitch_5
        0x42b9c232 -> :sswitch_4
        0x5a3a9cfd -> :sswitch_3
        0x5e17a35a -> :sswitch_2
        0x78cad1c7 -> :sswitch_1
        0x7dec87e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSecurityVerify(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 40
    :cond_0
    const-string v1, "error"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3f1

    if-eq v1, v2, :cond_1

    const-string v1, "errorTip"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1009"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isUnsupportedRpc(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 24
    :cond_0
    const-string v1, "code"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "400000040"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_4

    const-string v1, "errorCode"

    .line 25
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "desc"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string v1, "\u4e0d\u652f\u6301rpc\u8c03\u7528"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u4e0d\u652f\u6301RPC\u8c03\u7528"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v4
.end method

.method public static logByTaskList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 244
    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AntOrchardTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "AntOceanAntiepTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "AntForestHuntTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "GoldenBeansTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "MonopolyTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "AntForestVitalityTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "AntDodoTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "AntOceanFishBlackList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "AntFarmChickenChefTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "AntFarmDrawMachineTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "AntOrchardDrawTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "AntFarmDoFarmTaskList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 262
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :pswitch_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a98d9bf -> :sswitch_b
        -0x175a1cb5 -> :sswitch_a
        -0xa17b697 -> :sswitch_9
        -0x49e95df -> :sswitch_8
        0x2561678e -> :sswitch_7
        0x2d7bc3a0 -> :sswitch_6
        0x36fe43e9 -> :sswitch_5
        0x42b9c232 -> :sswitch_4
        0x5a3a9cfd -> :sswitch_3
        0x5e17a35a -> :sswitch_2
        0x78cad1c7 -> :sswitch_1
        0x7dec87e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static newJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 47
    sget-object v0, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string v1, "newJSONObject err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static printErrorMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 59
    sget-object p1, Lio/github/lazyimmortal/sesame/util/MessageUtil;->TAG:Ljava/lang/String;

    const-string p2, "printErrorMessage err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
