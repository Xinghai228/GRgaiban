.class public Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;
.super Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.source "NewSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;,
        Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;
    }
.end annotation


# static fields
.field private static final EXPORT_REQUEST_CODE:Ljava/lang/Integer;

.field private static final IMPORT_REQUEST_CODE:Ljava/lang/Integer;


# instance fields
.field private final configLatch:Ljava/util/concurrent/CountDownLatch;

.field private context:Landroid/content/Context;

.field private debug:Ljava/lang/Boolean;

.field private final fieldJsonCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/ui/dto/ModelGroupDto;",
            ">;"
        }
    .end annotation
.end field

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;

.field private final listLatch:Ljava/util/concurrent/CountDownLatch;

.field private final tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$QvYh3V0MA6IlcLAYYOdSJX0qh2Y(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->doInit()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->debug:Ljava/lang/Boolean;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->tabList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->groupList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->fieldJsonCache:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 109
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->configLatch:Ljava/util/concurrent/CountDownLatch;

    .line 110
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->listLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1100(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->configLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1200(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->listLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$200(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitInit()V

    return-void
.end method

.method static synthetic access$400(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->tabList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->groupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitConfig()V

    return-void
.end method

.method static synthetic access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;
    .locals 0

    .line 89
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->fieldJsonCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitLists()V

    return-void
.end method

.method private awaitConfig()V
    .locals 1

    .line 270
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->configLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private awaitInit()V
    .locals 1

    .line 259
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private awaitLists()V
    .locals 1

    .line 281
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->listLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private doInit()V
    .locals 8

    .line 188
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/Model;->initAllModel()V

    .line 189
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->setCurrentUserId(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    .line 193
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->tabList:Ljava/util/List;

    new-instance v4, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getIcon()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v2, v6}, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->values()[Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 196
    iget-object v4, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->groupList:Ljava/util/List;

    new-instance v5, Lio/github/lazyimmortal/sesame/ui/dto/ModelGroupDto;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v3}, Lio/github/lazyimmortal/sesame/ui/dto/ModelGroupDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 199
    :try_start_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 201
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 205
    :try_start_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->load(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->load(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ConfigV2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 208
    :try_start_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 210
    :goto_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->configLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 214
    :try_start_4
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/CooperationIdMap;->load(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/VitalityBenefitIdMap;->load(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/GameCenterMallItemMap;->load(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->load(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/MemberBenefitIdMap;->load(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->load(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->load()V

    .line 221
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->load()V

    .line 222
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->load()V

    .line 223
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->load()V

    .line 224
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->load()V

    .line 225
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->load()V

    .line 226
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->load()V

    .line 227
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->load()V

    .line 228
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->load()V

    .line 229
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->load()V

    .line 230
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->load()V

    .line 231
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->load()V

    .line 232
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->load()V

    .line 233
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->load()V

    .line 234
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->load()V

    .line 235
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->load()V

    .line 236
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->load()V

    .line 237
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->load()V

    .line 238
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->load()V

    .line 239
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->load()V

    .line 240
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->load()V

    .line 241
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->load()V

    .line 242
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->load()V

    .line 243
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->load()V

    .line 244
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->load()V

    .line 245
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->load()V

    .line 246
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->load()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 248
    :try_start_5
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 250
    :goto_3
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->listLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->listLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    throw v0

    :catchall_4
    move-exception v0

    .line 210
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->configLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 211
    throw v0

    :catchall_5
    move-exception v0

    .line 201
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 202
    throw v0
.end method

.method static synthetic lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 532
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$2(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Ljava/lang/Boolean;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendStatus()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private save()V
    .locals 3

    .line 626
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitInit()V

    .line 627
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitConfig()V

    .line 628
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitLists()V

    .line 629
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isModify(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const-string v0, "\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    const-string v1, "userId"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 638
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 642
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->save(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getBaseSubtitle()Ljava/lang/String;
    .locals 1

    .line 114
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->settings:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onOptionsItemSelected$0$io-github-lazyimmortal-sesame-ui-NewSettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 519
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 520
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getUserConfigDirectoryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 525
    :goto_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->deleteFile(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    const-string p1, "\u914d\u7f6e\u5220\u9664\u6210\u529f"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 529
    :cond_1
    const-string p1, "\u914d\u7f6e\u5220\u9664\u5931\u8d25"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 531
    :goto_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 556
    const-string v0, "\u5bfc\u5165\u5931\u8d25\uff01"

    const-string v1, "\u5bfc\u51fa\u5931\u8d25\uff01"

    invoke-super {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    return-void

    .line 560
    :cond_0
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 561
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 565
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 566
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 569
    :cond_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 571
    :goto_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 572
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->streamTo(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 573
    const-string p1, "\u5bfc\u51fa\u6210\u529f\uff01"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 576
    :cond_2
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 580
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 581
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 585
    :cond_3
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 586
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 590
    :try_start_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 591
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 594
    :cond_4
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 596
    :goto_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 597
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->streamTo(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 598
    const-string p1, "\u5bfc\u5165\u6210\u529f\uff01"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 599
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_5

    .line 601
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    const-string p2, "userId"

    iget-object p3, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 606
    :try_start_3
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 609
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 610
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->finish()V

    .line 611
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 614
    :cond_6
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 618
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 619
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 289
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-super {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onBackPressed()V

    .line 294
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->save()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 120
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    .line 127
    const-string v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->debug:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->debug:Ljava/lang/Boolean;

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    const-string v2, "settings-init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    sget v0, Lio/github/lazyimmortal/sesame/R$layout;->activity_new_settings:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->setContentView(I)V

    .line 133
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->settings:I

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->setBaseSubtitle(Ljava/lang/String;)V

    .line 136
    :cond_1
    sget v0, Lio/github/lazyimmortal/sesame/R$color;->textColorPrimary:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->setBaseSubtitleTextColor(I)V

    .line 138
    iput-object p0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->context:Landroid/content/Context;

    .line 140
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->webView:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    .line 141
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/4 v2, 0x1

    .line 143
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v1, -0x1

    .line 152
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 155
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 156
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 177
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;

    invoke-direct {v1, p0, p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;)V

    const-string p1, "HOOK"

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/web/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    .line 490
    const-string v1, "\u5bfc\u51fa\u914d\u7f6e"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 491
    const-string v1, "\u5bfc\u5165\u914d\u7f6e"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    .line 492
    const-string v1, "\u5220\u9664\u914d\u7f6e"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    .line 493
    const-string v1, "\u5355\u5411\u597d\u53cb"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x5

    .line 494
    const-string v1, "\u5207\u6362\u81f3\u65e7UI"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 495
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 500
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->awaitInit()V

    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.TITLE"

    const-string v3, "*/*"

    const-string v4, "android.intent.category.OPENABLE"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 538
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->setNewUI(Ljava/lang/Boolean;)V

    .line 539
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->save()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    const-string v1, "userId"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v1, "userName"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->finish()V

    .line 544
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 547
    :cond_1
    const-string v0, "\u5207\u6362\u5931\u8d25"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 535
    :cond_2
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getList(Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$-CC;->newMapInstance()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const-string v4, "\u5355\u5411\u597d\u53cb\u5217\u8868"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    goto/16 :goto_0

    .line 517
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u5220\u9664\u8be5\u914d\u7f6e\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 510
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v1, "config_v2.json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 503
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]-config_v2.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 551
    :goto_0
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
