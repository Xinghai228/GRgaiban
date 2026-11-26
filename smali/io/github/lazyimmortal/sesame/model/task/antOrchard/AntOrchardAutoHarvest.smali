.class public Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;
.super Ljava/lang/Object;
.source "AntOrchardAutoHarvest.java"


# static fields
.field private static final FIXED_EXCHANGE_URL:Ljava/lang/String; = "https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm-harvest?disableNav=YES&spm=farm"

.field private static final LOG_TAG:Ljava/lang/String; = "\u519c\u573a\u6536\u83b7\ud83c\udf33"

.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "AntOrchardAutoHarvest"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoPlant()Z
    .locals 9

    .line 82
    const-string v0, "AntOrchardAutoHarvest"

    const-string v1, "\u82ad\u82ad\u519c\u573a\u5df2\u79cd\u690d: "

    const-string v2, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u9ed8\u8ba4\u9009\u7b2c\u4e00\u4e2a\u79cd: "

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u5f00\u59cb\u81ea\u52a8\u79cd\u690d..."

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->getRandomDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 86
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->selectFirstSeed()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 88
    const-string v1, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u65e0\u53ef\u7528\u79cd\u5b50\u5e93\u5b58\uff0c\u8df3\u8fc7\u79cd\u690d"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v3

    .line 92
    :cond_0
    aget-object v5, v4, v3

    const/4 v6, 0x1

    .line 93
    aget-object v4, v4, v6

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->getRandomDelay()I

    move-result v2

    int-to-long v7, v2

    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 98
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSelectSeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u79cd\u690d"

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "success"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u6210\u529f"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    return v6

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resultDesc"

    const-string v4, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    move-exception v1

    .line 110
    const-string v2, "autoPlant err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method private static getRandomDelay()I
    .locals 2

    .line 34
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->RANDOM:Ljava/util/Random;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static harvest(Z)Z
    .locals 4

    .line 44
    const-string v0, "AntOrchardAutoHarvest"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u5f00\u59cb\u81ea\u52a8\u6536\u83b7"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->getRandomDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 48
    const-string v2, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u6253\u5f00\u79cd\u6210\u8bb0\u5f55(\u6267\u884c\u6536\u83b7)..."

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->silentFetchExchange()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->reportExchange(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "\u83b7\u53d6\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 58
    const-string v2, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u9759\u9ed8\u5931\u8d25\uff0c\u8df3\u8f6c\u524d\u53f0\u9875\u9762..."

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 59
    const-string v2, "https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm-harvest?disableNav=YES&spm=farm"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->openUrl(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->getRandomDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :cond_1
    if-eqz p0, :cond_2

    .line 64
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardAutoHarvest;->autoPlant()Z

    .line 65
    const-string p0, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u81ea\u52a8\u6536\u83b7+\u79cd\u690d\u5b8c\u6210"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_2
    const-string p0, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u81ea\u52a8\u6536\u83b7\u5b8c\u6210"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 71
    const-string v2, "harvest err:"

    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static openUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "alipays://platformapi/startapp?appId=68687599&url="

    .line 238
    :try_start_0
    const-string v1, "alipays://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 242
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openUrl err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AntOrchardAutoHarvest"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static reportExchange(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u5151\u6362\u5217\u8868\u83b7\u53d6\u5931\u8d25: code="

    const/4 v1, 0x0

    .line 177
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string p0, "data"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const-string v2, "code"

    const-string v3, ""

    if-eqz p0, :cond_6

    :try_start_1
    const-string v4, "OK"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    const-string v0, "model"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    .line 186
    const-string p0, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u5151\u6362\u5217\u8868\u83b7\u53d6\u5931\u8d25: \u65e0 model"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v1

    .line 189
    :cond_1
    const-string v0, "accumulateTimes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v2, "grownUpRecords"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    if-eqz p0, :cond_3

    const/4 v4, 0x0

    .line 194
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 195
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 196
    const-string v6, "UNEXCHANGED"

    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5df2\u79cd\u6210\uff0c\u7528\u65f6"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "grownUpConsumeDays"

    .line 198
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u5929\uff08"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "plantTime"

    .line 199
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff09\uff1b"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u7d2f\u8ba1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "grownUpTimes"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6b21\uff0c\u5f85\u5151\u6362"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unExchangeTimes"

    .line 205
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u6b21"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u519c\u573a\u6536\u83b7\ud83c\udf33"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u82ad\u82ad\u519c\u573a\u5df2\u6536\u83b7: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 212
    :cond_5
    const-string p0, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u5151\u6362\u5217\u8868\u83b7\u53d6\u5931\u8d25: \u65e0 grownUpRecords"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v1

    .line 180
    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_7

    const-string v0, "null"

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " desc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_8

    goto :goto_4

    .line 181
    :cond_8
    const-string v0, "resultDesc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reportExchange err: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AntOrchardAutoHarvest"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static selectFirstSeed()[Ljava/lang/String;
    .locals 10

    .line 123
    const-string v0, "AntOrchardAutoHarvest"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardRpcCall;->orchardSeedList()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 129
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v4, "taobaoData"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v3, "seedList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    .line 134
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 135
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 136
    const-string v8, "hasInventory"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    const-string v8, "seedCode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    const-string v9, "seedTitle"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_3

    .line 141
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_3

    .line 146
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    const-string v2, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u53ef\u9009\u79cd\u5b50\u4e3a\u7a7a(\u5747\u65e0\u5e93\u5b58)"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_3

    .line 152
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-lez v4, :cond_6

    .line 155
    const-string v5, "\u3001"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 159
    :cond_7
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u519c\u573a\u6536\u83b7\ud83c\udf33\u53ef\u9009\u79cd\u5b50"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-object v6

    :catchall_0
    move-exception v2

    .line 164
    const-string v3, "selectFirstSeed err:"

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {v0, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static silentFetchExchange()Ljava/lang/String;
    .locals 3

    .line 225
    :try_start_0
    const-string v0, "{\"bizParam\":\"{}\",\"bizType\":\"plantTree.showFruitList\"}"

    .line 226
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "mtop.tmall.farm.commonapi.get"

    invoke-static {v1, v2, v0}, Lio/github/lazyimmortal/sesame/mtop/bridge/MtopCaller;->call(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "silentFetchExchange err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntOrchardAutoHarvest"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
