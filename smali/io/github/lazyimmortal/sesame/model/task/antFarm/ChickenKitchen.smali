.class public Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;
.super Ljava/lang/Object;
.source "ChickenKitchen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;,
        Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$ChickenChefCookStrategy;
    }
.end annotation


# static fields
.field private static final AI_KITCHEN_DISH_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final AI_KITCHEN_EXPLORATION_RESERVE:I = 0x3

.field private static final AI_KITCHEN_INGREDIENT_COUNT:I = 0x3

.field private static final AI_KITCHEN_MAX_COOK_TIMES:I = 0x14

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;

    const-string v0, "AntFarm"

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->AI_KITCHEN_DISH_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 664
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 665
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 667
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 668
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static allCombosUsed(Ljava/util/List;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 592
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 595
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x2

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_1
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    :goto_2
    if-ge v6, v1, :cond_2

    .line 599
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "ingredientId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return v0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_3
    return v0
.end method

.method private static allMasteryFull(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 455
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 459
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static buildComboFromDish(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 495
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 499
    const-string v5, "ingredientId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    return-object v0

    .line 507
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_5

    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method private static buildExplorationStock(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 615
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 616
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 619
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 621
    const-string v2, "ingredientId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "count"

    .line 623
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 624
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private static buildUsedCombos(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 432
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 433
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static chickenChefCook(I)V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x14

    if-ge v2, v6, :cond_22

    .line 220
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterAiKitchen()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 224
    :cond_0
    const-string v7, "canCook"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    return-void

    .line 227
    :cond_1
    const-string v7, "seasonId"

    const-string v8, "AIKitchenSeasonOne"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    const-string v8, "ingredientList"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/4 v8, 0x1

    if-nez v3, :cond_5

    .line 235
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    .line 236
    sget-object v4, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->AI_KITCHEN_DISH_CACHE:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_3

    .line 238
    invoke-static {v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->loadAiKitchenDishes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 240
    invoke-interface {v4, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v4, v9

    if-eqz v4, :cond_4

    .line 244
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->buildUsedCombos(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v3, 0x1

    .line 248
    :cond_5
    const-string v9, "count"

    if-nez v2, :cond_a

    .line 250
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 251
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_9

    .line 252
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 253
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-gtz v14, :cond_6

    goto :goto_2

    .line 256
    :cond_6
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v12, v14

    .line 257
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_7

    const/16 v14, 0x20

    .line 258
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_7
    const-string v14, "ingredientName"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 262
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u98df\u6750\u5e93\u5b58["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "]#\u53ef\u70f9\u996a"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v12, v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\u6b21"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 265
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 266
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_c

    .line 267
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 268
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_b

    .line 269
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 272
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x3

    if-ge v6, v9, :cond_d

    .line 273
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u98df\u6750\u4e0d\u8db3\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_d
    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$2;

    invoke-direct {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$2;-><init>()V

    invoke-static {v10, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez p0, :cond_10

    .line 285
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->pickMasteryComboDish(Ljava/util/List;Ljava/util/List;)Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 287
    invoke-static {v6, v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->buildComboFromDish(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_7

    .line 288
    :cond_e
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->allCombosUsed(Ljava/util/List;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 289
    invoke-static {v10, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseFullComboCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1a

    .line 291
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u7cbe\u901a\u5df2\u5b8c\u6210\uff0c\u5168\u7ec4\u5408\u4e0b\u53ef\u6d88\u8017\u98df\u6750\u4e0d\u8db3\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_f
    invoke-static {v10, v4, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseExplorationCombo(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1a

    .line 297
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u7cbe\u901a\u5df2\u5b8c\u6210\uff0c\u6ca1\u6709\u53ef\u7528\u4e8e\u63a2\u7d22\u7684\u98df\u6750\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_10
    if-ne p0, v8, :cond_18

    .line 302
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseNewAiKitchenCombo(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    const-string v6, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u5269\u4f59\u98df\u6750\u4e0d\u8db3\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df#\u7b56\u7565["

    if-nez v8, :cond_11

    :try_start_2
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->allCombosUsed(Ljava/util/List;Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 304
    invoke-static {v10, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseFullComboCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_17

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$ChickenChefCookStrategy;->nickNames:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u539f\u56e0[\u5168\u7ec4\u5408\u4e0b\u53ef\u6d88\u8017\u98df\u6750\u4e0d\u8db33\u79cd]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_11
    if-nez v8, :cond_17

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u624b\u5e10\u5df2\u65e0\u53ef\u7528\u65b0\u7ec4\u5408"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->hasOverstockIngredient(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 313
    invoke-static {v4, v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->pickMasteryComboDish(Ljava/util/List;Ljava/util/List;)Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    move-result-object v9

    if-nez v9, :cond_13

    .line 315
    const-string v11, "\u3001\u7cbe\u901a\u914d\u65b9\u98df\u6750\u4e0d\u8db3"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 318
    :cond_12
    const-string v9, "\u3001\u65e0\u5355\u79cd\u98df\u6750\u8d85\u8fc73\u4efd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v0

    :cond_13
    :goto_4
    if-eqz v9, :cond_14

    .line 320
    invoke-static {v9, v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->buildComboFromDish(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    goto :goto_5

    :cond_14
    move-object v11, v0

    :goto_5
    if-nez v11, :cond_16

    .line 322
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->stockListTop3AboveReserve(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_15

    .line 324
    const-string v0, "\u3001\u8d85\u8fc73\u4efd\u7684\u98df\u6750\u4e0d\u8db33\u79cd"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$ChickenChefCookStrategy;->nickNames:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]#\u539f\u56e0["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    :cond_15
    move-object v8, v10

    goto :goto_6

    :cond_16
    move-object v8, v11

    :goto_6
    move-object v6, v9

    goto :goto_7

    :cond_17
    move-object v6, v0

    goto :goto_7

    .line 332
    :cond_18
    invoke-static {v10, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->allCombosUsed(Ljava/util/List;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 333
    invoke-static {v10, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseFullComboCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_17

    .line 335
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u968f\u673a\u5236\u4f5c\uff1a\u5168\u7ec4\u5408\u4e0b\u53ef\u6d88\u8017\u98df\u6750\u4e0d\u8db3\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_19
    invoke-static {v10, v4}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->randomCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_17

    .line 341
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u968f\u673a\u5236\u4f5c\uff1a\u5269\u4f59\u7ec4\u5408\u5747\u4e3a\u6ee1\u5206\u83dc\u54c1\uff0c\u8df3\u8fc7\u505a\u7f8e\u98df"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_1a
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 348
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1c

    .line 349
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    const-string v13, "ingredientId"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 350
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v11, :cond_1b

    const/16 v13, 0x2c

    .line 352
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    const/16 v13, 0x22

    .line 354
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 356
    :cond_1c
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->cookAiKitchen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1d

    return-void

    :cond_1d
    if-eqz v5, :cond_1e

    .line 361
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v6, :cond_1f

    .line 364
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v7

    const-string v9, "highestScore"

    .line 365
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 364
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$002(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;I)I

    .line 367
    :cond_1f
    const-string v6, "firstUnlock"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 369
    sget-object v7, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->AI_KITCHEN_DISH_CACHE:Ljava/util/Map;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    if-eqz v6, :cond_21

    .line 371
    const-string v6, "#\u9996\u6b21\u89e3\u9501\u65b0\u83dc"

    goto :goto_9

    :cond_21
    const-string v6, ""

    .line 372
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u5236\u4f5c["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "dishName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]#\u53a8\u795e\u5206+"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "chefScoreDelta"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 376
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v1, "chickenChefCook err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    return-void
.end method

.method public static chickenChefCookbookInfo()V
    .locals 5

    .line 677
    const-string v0, "/"

    const-string v1, "]"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "AIKitchenSeasonOne"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getAiKitchenCookbookInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 678
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 681
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    const-string v4, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "seasonName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u53a8\u795e\u5206"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "chefScore"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";\u7cbe\u901a\u5206"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "masteryScore"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";\u4e30\u5bcc\u5ea6"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "richnessScore"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";\u56fe\u9274"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "totalUnlockedDishCount"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "totalNormalDishCount"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(\u9ed1\u6697"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unlockedDarkDishCount"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "totalDarkDishCount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v0, "dishList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 685
    const-string v1, "\u62ff\u624b\u83dc"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u9053["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 686
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 687
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    const/16 v4, 0x3b

    .line 692
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    :cond_2
    const-string v4, "dishName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "highestGrade"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "highestScore"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cookCount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_3
    const-string v0, "];"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 700
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v2, "chickenChefCookbookInfo err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static chickenChefShareIngredient(Lorg/json/JSONObject;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    .locals 9

    .line 810
    :try_start_0
    const-string v0, "rightsTimesLimit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "rightsTimes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 815
    :goto_0
    const-string p1, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u672a\u914d\u7f6e\u53ef\u8d60\u9001\u597d\u53cb\u5217\u8868\uff0c\u8df3\u8fc7\u7ed9\u597d\u53cb\u9001\u98df\u6750\u4efb\u52a1"

    if-eqz p0, :cond_c

    :try_start_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 819
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 821
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 822
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 825
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 826
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 829
    :cond_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterAiKitchen()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 830
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 833
    :cond_6
    const-string p1, "seasonId"

    const-string v2, "AIKitchenSeasonOne"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 834
    const-string v2, "ingredientList"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 835
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    const/4 v4, 0x0

    .line 837
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v0, :cond_9

    .line 838
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    .line 842
    :cond_7
    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_8

    .line 843
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v0, :cond_8

    .line 844
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 848
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 849
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u98df\u6750\u4e0d\u8db3\uff0c\u8df3\u8fc7\u7ed9\u597d\u53cb\u9001\u98df\u6750\u4efb\u52a1"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 852
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_d

    .line 853
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    rem-int p0, v3, p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 854
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 855
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "ingredientId"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->shareAiKitchenIngredient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 856
    sget-object v5, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_7

    .line 859
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u8d60\u9001["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\u98df\u6750["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ingredientName"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    .line 860
    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 816
    :cond_c
    :goto_6
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 863
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v0, "chickenChefShareIngredient err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public static chickenChefTask(Ljava/lang/String;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 713
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listAiKitchenTask()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 714
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 717
    :cond_0
    const-string v2, "farmTaskList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 718
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 719
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 720
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 721
    const-string v5, "taskId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 722
    const-string v6, "bizKey"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 723
    const-string v6, "taskType"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 724
    const-string v6, "taskStatus"

    const-string v7, "TODO"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 725
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->FINISHED:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "rightsTimes"

    const-string v14, "rightsTimesLimit"

    if-eqz v6, :cond_1

    .line 726
    :try_start_1
    invoke-static {v4, v8, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefTaskAward(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v4, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-gt v6, v7, :cond_1

    move-object/from16 v15, p1

    move-object/from16 v18, v1

    goto/16 :goto_5

    :cond_1
    move-object/from16 v15, p1

    .line 732
    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "]"

    const-string v2, "AntFarmChickenChefTaskList"

    if-eqz v6, :cond_9

    .line 733
    :try_start_2
    const-string v6, "desc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 734
    const-string v9, "GAME"

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u73a9\u6e38\u620f\u5f97"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u53bb\u73a9"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    .line 735
    :goto_2
    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v1

    const-string v1, "ANTFARM_AI_KITCHEN_TASK"

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 736
    :try_start_3
    invoke-static {v8, v6, v2}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {v8, v6, v2}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->isMiniGameTaskDisallowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e38\u620f\u4efb\u52a1\ud83c\udfae\u8df3\u8fc7["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v6}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\u573a\u666f["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->getTaskListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]#\u5df2\u52a0\u5165\u4e0d\u5141\u8bb8\u6267\u884c\u5217\u8868"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 741
    :cond_4
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 742
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 743
    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v9

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_c

    .line 745
    invoke-static {v2, v8, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->hasExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_5

    .line 748
    :cond_5
    new-instance v11, Lorg/json/JSONObject;

    invoke-static {v12, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->doFarmTaskPseudo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-static {v2, v8, v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 750
    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->isSecurityVerify(Lorg/json/JSONObject;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto/16 :goto_5

    .line 753
    :cond_6
    invoke-static {v2, v8, v6}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->recordExecuteQuota(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v13, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v13, v11}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkSuccess(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_5

    .line 757
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5c0f\u9e21\u5927\u53a8\ud83e\uddfe\u7533\u62a5["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const-wide/16 v13, 0x3e8

    .line 758
    invoke-static {v13, v14}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 759
    invoke-static {v4, v8, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefTaskAward(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 762
    :cond_8
    new-instance v2, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    const-string v7, "AntFarmChickenChefTaskList"

    const-string v5, "targetUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v6

    move-object v6, v2

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const-string v5, "taskRequire"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "taskProgress"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const-string v5, "taskPlayType"

    const-string v7, "OTHER"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    const-string v5, "taskMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "ANTFARM"

    const-string v4, "H5"

    invoke-virtual {v1, v2, v4}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    const-string v2, "1.8.2302070202.46"

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->handleGameTask(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Z

    goto/16 :goto_5

    :cond_9
    move-object/from16 v18, v1

    const/4 v6, 0x0

    .line 766
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->TODO:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$TaskStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 767
    const-string v1, "\u7ed9\u597d\u53cb\u9001\u98df\u6750"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, p2

    .line 768
    invoke-static {v4, v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefShareIngredient(Lorg/json/JSONObject;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V

    goto :goto_6

    :cond_a
    move-object/from16 v1, p2

    .line 771
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 772
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 773
    invoke-static {v10, v9}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsTimesToDo(II)I

    move-result v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_d

    .line 775
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 776
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v12, v6, v5, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->finishTaskantfarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-static {v2, v8, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCodeAndMarkTaskBlackList(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 778
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_6

    .line 781
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c0f\u9e21\u5927\u53a8\ud83e\uddfe\u5b8c\u6210["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-static {v10, v9, v13}, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;->rightsProgressText(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 781
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    const-wide/16 v16, 0x3e8

    .line 783
    invoke-static/range {v16 .. v17}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 784
    invoke-static {v4, v8, v5}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chickenChefTaskAward(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    :goto_5
    move-object/from16 v1, p2

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v18

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 789
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v2, "chickenChefTask err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method private static chickenChefTaskAward(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u5c0f\u9e21\u5927\u53a8\ud83c\udf96\ufe0f\u9886\u53d6["

    .line 796
    :try_start_0
    const-string v1, "canReceiveAwardCount"

    const-string v2, "awardCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 797
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "ANTFARM_AI_KITCHEN_TASK"

    invoke-static {p0, v2, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->receiveTaskAwardantfarm(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkResultCode(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 799
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\u5956\u52b1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_0
    const-wide/16 p0, 0x3e8

    .line 801
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 803
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string p2, "chickenChefTaskAward err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static chooseExplorationCombo(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->buildExplorationStock(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 633
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_0
    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->chooseNewAiKitchenCombo(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->randomCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private static chooseFullComboCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 564
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->allMasteryFull(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 567
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 569
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 570
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 573
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 575
    const-string v2, "ingredientId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 576
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 579
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_5
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->randomAnyCombo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 565
    :cond_6
    :goto_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->randomAnyCombo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static chooseNewAiKitchenCombo(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 641
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_2

    .line 645
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "ingredientId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 649
    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 650
    :cond_1
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static collectDailyFoodMaterial(Ljava/lang/String;)V
    .locals 10

    .line 70
    const-string v0, "orchardFoodMaterialStatus"

    .line 0
    const-string v1, "\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u519c\u573a\u98df\u6750#\u9886\u53d6["

    const-string v2, "\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u6536\u96c6\u53a8\u4f59#\u83b7\u5f97["

    const-string v3, "\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u4eca\u65e5\u98df\u6750#\u9886\u53d6["

    .line 70
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterKitchen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 74
    :cond_0
    const-string v5, "canCollectDailyFoodMaterial"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 75
    const-string v6, "dailyFoodMaterialAmount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    const-string v7, "garbageAmount"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 77
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "g\u98df\u6750]"

    if-eqz v8, :cond_2

    .line 78
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    const-string v4, "FINISHED"

    const-string v8, "foodStatus"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->farmFoodMaterialCollect()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v4, "100"

    const-string v8, "resultCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "foodMaterialAddCount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->collectDailyFoodMaterial(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    :cond_3
    if-lez v7, :cond_4

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->collectKitchenGarbage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "recievedKitchenGarbageAmount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g\u80a5\u6599]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 101
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v1, "collectDailyFoodMaterial err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static collectDailyLimitedFoodMaterial()V
    .locals 5

    .line 108
    const-string v0, "\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u9886\u53d6[\u7231\u5fc3\u98df\u6750\u5e97\u98df\u6750]#"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryFoodMaterialPack()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 112
    :cond_0
    const-string v3, "canCollectDailyLimitedFoodMaterial"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    const-string v3, "dailyLimitedFoodMaterialAmount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->collectDailyLimitedFoodMaterial(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "g"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 121
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v2, "collectDailyLimitedFoodMaterial err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cook(Ljava/lang/String;)V
    .locals 5

    .line 128
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->enterKitchen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 132
    :cond_0
    const-string v1, "cookTimesAllowed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 135
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->cook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const-string v3, "cuisineVO"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c0f\u9e21\u53a8\u623f\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u5236\u4f5c["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 144
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v1, "cook err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static doFarmTaskPseudo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bizKey\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskSceneCode\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"version\":\"1.8.2302070202.46\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 873
    const-string p1, "com.alipay.antfarm.doFarmTask"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSortedCuisineList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    new-instance p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$1;

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static hasAllIngredients(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)Z"
        }
    .end annotation

    .line 476
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 479
    const-string v3, "ingredientId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static hasOverstockIngredient(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)Z"
        }
    .end annotation

    .line 467
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 468
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static initChickenChefTaskListMap(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 884
    :cond_0
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->load()V

    .line 885
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->listAiKitchenTask()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 886
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 887
    const-string v0, "farmTaskList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 888
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 889
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 890
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 891
    new-array v4, v4, [Lorg/json/JSONObject;

    aput-object v2, v4, v1

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->save()Z

    .line 895
    const-string p1, "\u540c\u6b65\u4efb\u52a1\ud83c\ude51\u5c0f\u9e21\u5927\u53a8\u4efb\u52a1\u5217\u8868"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    if-eqz p0, :cond_6

    .line 898
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 899
    sget-object p1, Lio/github/lazyimmortal/sesame/data/ConfigV2;->INSTANCE:Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 900
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->getModelFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelFields;

    if-nez p1, :cond_2

    return-void

    .line 904
    :cond_2
    invoke-virtual {p1, p3}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;

    if-eqz p1, :cond_6

    .line 906
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_4

    .line 908
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 909
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 914
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u9ed1\u767d\u540d\u5355\ud83c\ude32\u5c0f\u9e21\u5927\u53a8\u4efb\u52a1\u81ea\u52a8\u8bbe\u7f6e: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_2

    .line 917
    :cond_5
    const-string p0, "\u5c0f\u9e21\u5927\u53a8\u4efb\u52a1\u9ed1\u767d\u540d\u5355\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 922
    sget-object p1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string p2, "initChickenChefTaskListMap err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static loadAiKitchenDishes(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->getAiKitchenCookbookInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 387
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    const-string v3, "dishList"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 392
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 393
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 394
    const-string v6, "cookCount"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_2

    goto :goto_2

    .line 397
    :cond_2
    const-string v6, "dishId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 401
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v6, p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->queryAiKitchenDishDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 402
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 405
    :cond_4
    const-string v6, "ingredientList"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 406
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    goto :goto_2

    .line 409
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 410
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 411
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 413
    const-string v11, "ingredientId"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 416
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_8

    .line 417
    new-instance v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    const-string v8, "highestScore"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v7, v5, v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;-><init>(Ljava/util/List;ILio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_8
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->delay()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 421
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0f\u9e21\u5927\u53a8\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73\u98ce\u5473\u624b\u5e10\u83dc\u54c1"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u9053"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 424
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v2, "loadAiKitchenDishes err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static pickMasteryComboDish(Ljava/util/List;Ljava/util/List;)Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 439
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 444
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->hasAllIngredients(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 447
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v2

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static randomAnyCombo(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 587
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 588
    new-instance p0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static randomCombo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 526
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 527
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_2

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;

    .line 530
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$000(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    .line 531
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;->access$200(Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen$AiKitchenDish;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 535
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v5, v3, -0x2

    if-ge v4, v5, :cond_7

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    :goto_3
    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    move v8, v7

    :goto_4
    if-ge v8, v3, :cond_5

    .line 540
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    .line 545
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 546
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 547
    const-string v13, "ingredientId"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 549
    :cond_3
    invoke-static {v10}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->aiKitchenComboKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_6

    .line 553
    :cond_4
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v6, v7

    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_2

    .line 557
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 560
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static stockListTop3AboveReserve(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 515
    const-string v3, "count"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_0

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 519
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static useFarmFood(Lorg/json/JSONArray;)V
    .locals 2

    .line 167
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->getSortedCuisineList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->useFarmFoodOne(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 174
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v1, "useFarmFood err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static useFarmFoodOne(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 9

    .line 180
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canUseSpecialFoodToday()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    return-object v2

    .line 184
    :cond_0
    :try_start_0
    const-string v0, "cookbookId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v3, "cuisineId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, "name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    const-string v5, "count"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 189
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarmRpcCall;->useFarmFood(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    sget-object v6, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/MessageUtil;->checkMemo(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v2

    .line 193
    :cond_1
    const-string v6, "foodEffect"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "deltaProduce"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f7f\u7528\u7f8e\u98df\ud83c\udf71["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]#\u52a0\u901f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\u9897\u7231\u5fc3\u9e21\u86cb"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->farm(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->useSpecialFoodToday()V

    .line 196
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->canUseSpecialFoodToday()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 200
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 202
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/ChickenKitchen;->TAG:Ljava/lang/String;

    const-string v1, "useFarmFoodOne err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
