.class public Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;
.super Ljava/lang/Object;
.source "ExtensionsHandle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtensionsHandle"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCustomWalkPathIdList(Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSportsRpcCall;->queryPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    const-string p0, "\u6dfb\u52a0\u81ea\u5b9a\u4e49\u8def\u7ebf\u5217\u8868\u5931\u8d25:\u627e\u4e0d\u5230\u8def\u7ebf\u4fe1\u606f"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 221
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->load()V

    .line 222
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->save()Z

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u81ea\u5b9a\u4e49\u8def\u7ebf\u5217\u8868\u6210\u529f:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private static addCustomWalkPathIdQueue(Ljava/lang/String;)V
    .locals 2

    .line 229
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSportsRpcCall;->queryPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    const-string p0, "\u6dfb\u52a0\u5f85\u884c\u8d70\u8def\u7ebf\u961f\u5217\u5931\u8d25:\u627e\u4e0d\u5230\u8def\u7ebf\u4fe1\u606f"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 235
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->addCustomWalkPathIdQueue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u5f85\u884c\u8d70\u8def\u7ebf\u961f\u5217\u6210\u529f:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private static clearCustomWalkPathIdQueue()V
    .locals 1

    .line 242
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->clearCustomWalkPathIdQueue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "\u6e05\u9664\u5f85\u884c\u8d70\u8def\u7ebf\u961f\u5217\u6210\u529f"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static fillWateredFriendList()V
    .locals 0

    .line 76
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->fillWateredFriendList()V

    return-void
.end method

.method private static getNewTreeItems()V
    .locals 7

    .line 81
    const-string v0, "projectType"

    const-string v1, "COMING"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "project"

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    sget-object v3, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 85
    :cond_0
    const-string v3, "treeItems"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 87
    const-string v0, "\u65b0\u6811\u4e0a\u82d7\ud83c\udf31[\u5f53\u524d\u6ca1\u6709\u65b0\u6811\u4e0a\u82d7\u4fe1\u606f!]"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    const-string v5, "TREE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 96
    :cond_3
    const-string v5, "applyAction"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 98
    :cond_4
    const-string v5, "itemId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->queryTreeForExchange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 102
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v2, "getTreeItems err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private static getTreeCurrentBudget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u6811\u82d7\u67e5\u8be2\ud83c\udf31["

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeForExchange(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    sget-object p0, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 155
    const-string p0, "exchangeableTree"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 156
    const-string v1, "currentBudget"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    const-string v2, "region"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u5269\u4f59:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 161
    sget-object p1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v0, "queryTreeForExchange err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static getTreeItems()V
    .locals 5

    .line 131
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "AVAILABLE,ENERGY_LACK"

    const-string v2, "project"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 135
    :cond_0
    const-string v1, "treeItems"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    const-string v3, "projectType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    const-string v3, "itemId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v4, "itemName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getTreeCurrentBudget(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    .line 143
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 146
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v2, "getTreeItems err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static getUnlockTreeItems()V
    .locals 7

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, "project"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeItemsForExchange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 195
    :cond_0
    const-string v1, "treeItems"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 197
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 198
    const-string v3, "projectType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    const-string v3, "certCountForAlias"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 202
    const-string v3, "itemName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v4, "region"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v5, "organization"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672a\u89e3\u9501\u9879\u76ee\ud83d\udc18["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]#"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 209
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v2, "getUnlockTreeItems err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private static getWateredItems()V
    .locals 0

    .line 68
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->getWateredFriendToday()V

    return-void
.end method

.method private static getWateringItems()V
    .locals 0

    .line 72
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->getWateringFriendToday()V

    return-void
.end method

.method public static handleAlphaRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    .line 60
    :try_start_0
    const-string v1, "io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandleAlpha"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "handleAlphaRequest"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 61
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    aput-object p2, v2, v8

    .line 62
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static handleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 24
    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->handleAlphaRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "antForest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "setCustomWalkPathIdQueue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "setCustomWalkPathIdList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 29
    :pswitch_0
    const-string p0, "getWateredItems"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 30
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getWateredItems()V

    goto/16 :goto_1

    .line 31
    :cond_4
    const-string p0, "getWateringItems"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 32
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getWateringItems()V

    goto :goto_1

    .line 33
    :cond_5
    const-string p0, "getTreeItems"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 34
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getTreeItems()V

    goto :goto_1

    .line 35
    :cond_6
    const-string p0, "getNewTreeItems"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 36
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getNewTreeItems()V

    goto :goto_1

    .line 37
    :cond_7
    const-string p0, "queryAreaTrees"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 38
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->queryAreaTrees()V

    goto :goto_1

    .line 39
    :cond_8
    const-string p0, "getUnlockTreeItems"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 40
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->getUnlockTreeItems()V

    goto :goto_1

    .line 41
    :cond_9
    const-string p0, "fillWateredFriendList"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 42
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->fillWateredFriendList()V

    goto :goto_1

    .line 49
    :pswitch_1
    const-string p0, "addCustomWalkPathIdQueue"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 50
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->addCustomWalkPathIdQueue(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_a
    const-string p0, "clearCustomWalkPathIdQueue"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 52
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->clearCustomWalkPathIdQueue()V

    goto :goto_1

    .line 46
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->addCustomWalkPathIdList(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27098326 -> :sswitch_2
        0x4624d455 -> :sswitch_1
        0x46c6f8e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static queryAreaTrees()V
    .locals 6

    .line 168
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryAreaTrees()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 172
    :cond_0
    const-string v1, "areaTrees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 173
    const-string v2, "regionConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    const-string v4, "regionName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672a\u89e3\u9501\u5730\u533a\ud83d\uddfa\ufe0f["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 184
    sget-object v1, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v2, "queryAreaTrees err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static queryTreeForExchange(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\u53ef\u4ee5\u5408\u79cd-\u5408\u79cd\u7c7b\u578b\uff1a"

    const-string v1, "\u65b0\u6811\u4e0a\u82d7\ud83c\udf31["

    .line 109
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectTreeRpcCall;->queryTreeForExchange(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    sget-object p0, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    const-string p0, "exchangeableTree"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 114
    const-string v2, "currentBudget"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    const-string v3, "region"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v4, "treeName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string v5, "\u4e0d\u53ef\u5408\u79cd"

    .line 118
    const-string v6, "canCoexchange"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "extendInfo"

    .line 120
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "cooperate_template_id_list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u682a-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->forest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 124
    sget-object v0, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->TAG:Ljava/lang/String;

    const-string v1, "queryTreeForExchange err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
