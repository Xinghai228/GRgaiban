.class public Lio/github/lazyimmortal/sesame/hook/ApplicationHook;
.super Ljava/lang/Object;
.source "ApplicationHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ASYNC_REQUEST_HANDLER_CLASS:Ljava/lang/String; = "com.alipay.android.phone.wallet.aompnetwork.request.AsyncRequestHandler"

.field private static final MAX_LOG_LEN:I = 0x30d40

.field private static final MAX_PENDING_PER_URL:I = 0x8

.field private static final MINI_HOST_BLACKLIST:[Ljava/lang/String;

.field private static final MINI_RESP_CLASS:Ljava/lang/String; = "com.alipay.android.phone.event.ariver.network.HttpRequestResponseTrigger"

.field private static final MINI_STATIC_SUFFIX:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ApplicationHook"

.field private static alarm0Pi:Landroid/app/PendingIntent; = null

.field private static alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion; = null

.field private static broadcastReceiver:Landroid/content/BroadcastReceiver; = null

.field private static volatile broadcastReceiverRegistered:Z = false

.field private static classLoader:Ljava/lang/ClassLoader; = null

.field private static context:Landroid/content/Context; = null

.field private static volatile dayCalendar:Ljava/util/Calendar; = null

.field private static final deferredHookedClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile hooked:Z = false

.field private static volatile init:Z = false

.field private static mainHandler:Landroid/os/Handler; = null

.field private static mainTask:Lio/github/lazyimmortal/sesame/data/task/BaseTask; = null

.field private static microApplicationContextObject:Ljava/lang/Object; = null

.field private static volatile miniDebugCached:Z = false

.field private static volatile miniDebugExpireAt:J = 0x0L

.field private static volatile miniHookInstallScheduled:Z = false

.field private static final miniSwitchDiagLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final miniSwitchFoundLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final modelFieldsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final modelVersion:Ljava/lang/String; = "1.12"

.field private static volatile offline:Z

.field private static final pendingMiniRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Deque<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static processName:Ljava/lang/String;

.field private static final reLoginCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

.field private static final rpcHookMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static rpcRequestUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private static rpcResponseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private static rpcVersion:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

.field private static service:Landroid/app/Service;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final wakenAtTimeAlarmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mxGQmSuOf0N64xUFsoWaqJR-a6Y(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->resolveInstanceFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcHookMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakenAtTimeAlarmMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 111
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    .line 114
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->microApplicationContextObject:Ljava/lang/Object;

    .line 120
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    .line 125
    new-instance v1, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    const-string v2, ""

    invoke-direct {v1, v2}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    const/4 v1, 0x0

    .line 128
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hooked:Z

    .line 130
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->init:Z

    .line 135
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    .line 138
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiverRegistered:Z

    .line 1295
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniHookInstallScheduled:Z

    .line 1298
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugCached:Z

    const-wide/16 v2, 0x0

    .line 1299
    sput-wide v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugExpireAt:J

    .line 1302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniSwitchDiagLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1306
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniSwitchFoundLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1560
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->modelFieldsCache:Ljava/util/Map;

    .line 1684
    const-string v8, "alipayobjects.com"

    const-string v9, "gtimg.cn"

    const-string v1, "hybrid.alipay-eco.com"

    const-string v2, "xxl-log"

    const-string v3, "mmstat"

    const-string v4, "amdc."

    const-string v5, "arms"

    const-string v6, "alicdn.com"

    const-string v7, "tbcdn.cn"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->MINI_HOST_BLACKLIST:[Ljava/lang/String;

    .line 1690
    const-string v15, ".mp4"

    const-string v16, ".mp3"

    const-string v1, ".js"

    const-string v2, ".css"

    const-string v3, ".png"

    const-string v4, ".jpg"

    const-string v5, ".jpeg"

    const-string v6, ".gif"

    const-string v7, ".webp"

    const-string v8, ".ico"

    const-string v9, ".svg"

    const-string v10, ".woff"

    const-string v11, ".woff2"

    const-string v12, ".ttf"

    const-string v13, ".html"

    const-string v14, ".htm"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->MINI_STATIC_SUFFIX:[Ljava/lang/String;

    .line 1802
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1803
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deferredHookedClasses:Ljava/util/Set;

    .line 1806
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->pendingMiniRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Lio/github/lazyimmortal/sesame/entity/AlipayVersion;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    return-object v0
.end method

.method static synthetic access$1000(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->registerBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lio/github/lazyimmortal/sesame/entity/AlipayVersion;)Lio/github/lazyimmortal/sesame/entity/AlipayVersion;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    return-object p0
.end method

.method static synthetic access$1102(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1202(Lio/github/lazyimmortal/sesame/data/task/BaseTask;)Lio/github/lazyimmortal/sesame/data/task/BaseTask;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainTask:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    return-object p0
.end method

.method static synthetic access$1300(J)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->execDelayedHandler(J)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1600(Ljava/lang/Boolean;)V
    .locals 0

    .line 94
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->destroyHandler(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1700(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->scheduleMiniHookInstall()V

    return-void
.end method

.method static synthetic access$1800(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Landroid/view/View;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/Map;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcHookMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/ClassLoader;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$2100(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->tryInstallMiniHook()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;[Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->logRequestFromModels([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Class;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hookMiniNetworkClass(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2400(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->logMiniResponse([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->initSimplePageManager()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 94
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->init:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 94
    sput-boolean p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->init:Z

    return p0
.end method

.method static synthetic access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->initHandler(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 94
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 94
    sput-boolean p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    return p0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 94
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->execHandler()V

    return-void
.end method

.method static synthetic access$902(Landroid/app/Service;)Landroid/app/Service;
    .locals 0

    .line 94
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    return-object p0
.end method

.method private clip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1787
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x30d40

    if-le v0, v1, :cond_0

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...(truncated)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 633
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 636
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 638
    invoke-direct {p0, v1, p2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 642
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 643
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "\u65e0ID"

    .line 644
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 646
    const-string v1, "TextView(ID: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private collectConfigV2Files()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1897
    const-string v0, "Android/media/com.eg.android.AlipayGphone/sesame"

    const-string v1, "config_v2.json"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1899
    :try_start_0
    sget-object v4, Lio/github/lazyimmortal/sesame/util/FileUtil;->CONFIG_DIRECTORY_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1901
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-eqz v7, :cond_0

    .line 1902
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1903
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1911
    :catchall_0
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1913
    new-instance v5, Ljava/io/File;

    const-string v6, "config"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1915
    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    if-eqz v6, :cond_2

    .line 1916
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1917
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1925
    :catchall_1
    :cond_3
    :try_start_2
    new-instance v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1928
    :catchall_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1931
    :try_start_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1935
    :catchall_3
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1937
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    return-object v3
.end method

.method private collectStrings(Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    if-ltz p2, :cond_f

    .line 1568
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto/16 :goto_3

    .line 1571
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1572
    check-cast p1, Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 1574
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 1578
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 1584
    :cond_3
    const-class v1, [B

    if-ne v0, v1, :cond_5

    .line 1585
    check-cast p1, [B

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->printableUtf8([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1587
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    .line 1591
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 1594
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 1595
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1598
    :cond_7
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    .line 1599
    invoke-direct {p0, v0, v1, p3, p4}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectStrings(Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;)V

    goto :goto_0

    :cond_8
    return-void

    .line 1603
    :cond_9
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_c

    .line 1604
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1607
    :cond_a
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    .line 1608
    invoke-direct {p0, v0, v1, p3, p4}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectStrings(Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;)V

    goto :goto_1

    :cond_b
    return-void

    .line 1612
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1613
    const-string v2, "com.alipay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1616
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    const-string v2, "request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "param"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "http"

    .line 1618
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "postdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "msg"

    .line 1619
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 1623
    :cond_d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 1626
    :cond_e
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->modelFieldsCache:Ljava/util/Map;

    new-instance v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    invoke-static {v1, v0, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1628
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p3, p4}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectStrings(Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    goto :goto_2

    :cond_f
    :goto_3
    return-void
.end method

.method private deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1753
    :try_start_0
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1754
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 1755
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1756
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1758
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1759
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 1760
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 1765
    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 1766
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 1767
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1768
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1769
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    .line 1773
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1774
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1775
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1776
    :goto_2
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    if-eqz v2, :cond_7

    .line 1778
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_8
    :goto_4
    return-object p1
.end method

.method private deepPrettyJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1728
    const-string v0, " "

    const-string v1, "\\r?\\n"

    if-nez p1, :cond_0

    .line 1729
    const-string p1, ""

    return-object p1

    .line 1731
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1734
    :try_start_0
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1735
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1736
    :cond_1
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1737
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepParseJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1742
    :goto_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 1743
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1744
    :cond_2
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1745
    :goto_1
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1739
    :cond_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1747
    :catchall_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static declared-synchronized destroyHandler(Ljava/lang/Boolean;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    monitor-enter v0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 876
    sget-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    if-eqz p0, :cond_0

    .line 877
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->stopHandler()V

    .line 878
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->destroyData()V

    .line 879
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->unload()V

    .line 880
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->stop()V

    .line 881
    invoke-static {}, Lio/github/lazyimmortal/sesame/rpc/intervallimit/RpcIntervalLimit;->clearIntervalLimit()V

    .line 882
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->unload()V

    .line 883
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/Model;->destroyAllModel()V

    .line 884
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->unload()V

    .line 886
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcResponseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 888
    :try_start_1
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 890
    :try_start_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 893
    :cond_1
    :goto_0
    sget-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcRequestUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 895
    :try_start_3
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 897
    :try_start_4
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 900
    :cond_2
    :goto_1
    sget-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 901
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 902
    sput-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 904
    :cond_3
    sget-object p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    if-eqz p0, :cond_5

    .line 905
    sput-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcVersion:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    .line 906
    invoke-interface {p0}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->unload()V

    .line 907
    sput-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    goto :goto_2

    .line 910
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->stopAllTask()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 913
    :try_start_5
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "stopHandler err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 916
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method private ensureAsyncRequestHook(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1449
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deferredHookedClasses:Ljava/util/Set;

    const-string v1, "com.alipay.android.phone.wallet.aompnetwork.request.AsyncRequestHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1453
    :try_start_0
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 1454
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1457
    :cond_1
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->installAsyncRequestHookOnClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static execDelayedHandler(J)V
    .locals 2

    .line 923
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->updateNextExecText(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 927
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static execHandler()V
    .locals 2

    .line 919
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainTask:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public static getAlipayVersion()Lio/github/lazyimmortal/sesame/entity/AlipayVersion;
    .locals 1

    .line 124
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    return-object v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 110
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 119
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 140
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMicroApplicationContext()Ljava/lang/Object;
    .locals 4

    .line 1093
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->microApplicationContextObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1094
    const-string v0, "com.alipay.mobile.framework.AlipayApplication"

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMicroApplicationContext"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->microApplicationContextObject:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getMicroApplicationContextObject()Ljava/lang/Object;
    .locals 1

    .line 113
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->microApplicationContextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static getModelVersion()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "1.12"

    return-object v0
.end method

.method private static getPendingIntentFlag()I
    .locals 2

    .line 1085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xc000000

    return v0

    :cond_0
    const/high16 v0, 0x8000000

    return v0
.end method

.method public static getReLoginCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 137
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getRpcVersion()Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;
    .locals 1

    .line 147
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcVersion:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    return-object v0
.end method

.method public static getServiceObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1101
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getMicroApplicationContext()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "findServiceByInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1103
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v1, "getServiceObject err"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 1121
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    const-string v1, "userId"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1126
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "getUserId err"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserObject()Ljava/lang/Object;
    .locals 3

    .line 1111
    :try_start_0
    const-string v0, "com.alipay.mobile.personalbase.service.SocialSdkContactService"

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getServiceObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMyAccountInfoModelByLocal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1113
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "getUserObject err"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private hookAlipayAlertDialog(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 514
    const-string v0, "\u652f\u4ed8\u5b9dCaptchaDialog Hook\u6210\u529f\uff08\u7c7b\u52a0\u8f7d\u5b8c\u6210\uff09"

    :try_start_0
    const-string v1, "com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog"

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 527
    const-string v1, "show"

    new-instance v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$6;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$6;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p1, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 617
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 620
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u652f\u4ed8\u5b9dCaptchaDialog Hook\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 622
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private hookMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 2012
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 2014
    :try_start_0
    invoke-static {p1, p2, p3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 2017
    :catchall_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hookMiniNetworkClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "\u5c0f\u7a0b\u5e8f\u6293\u5305hook\u5df2\u5b89\u88c5: "

    .line 1973
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1974
    const-string v2, "com.alipay.android.phone.event.ariver.network.HttpRequestResponseTrigger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.alipay.android.phone.wallet.aompnetwork.request.AsyncRequestHandler"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1977
    :cond_0
    sget-object v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deferredHookedClasses:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 1981
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1982
    const-string v2, "onHandleResponse"

    new-instance v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$12;

    invoke-direct {v3, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$12;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    invoke-direct {p0, p1, v2, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hookMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)I

    move-result p1

    .line 1991
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onHandleResponse\u65b9\u6cd5="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u8fdb\u7a0b="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1995
    :cond_2
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->installAsyncRequestHookOnClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1998
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5c0f\u7a0b\u5e8f\u6293\u5305hook\u5b89\u88c5\u5931\u8d25: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private hookMiniProgramNetwork()V
    .locals 1

    .line 1287
    const-string v0, "com.alipay.android.phone.event.ariver.network.HttpRequestResponseTrigger"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->tryHookMiniNetworkClass(Ljava/lang/String;)V

    .line 1288
    const-string v0, "com.alipay.android.phone.wallet.aompnetwork.request.AsyncRequestHandler"

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->tryHookMiniNetworkClass(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->installDeferredNetworkHook()V

    return-void
.end method

.method private declared-synchronized initHandler(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 731
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 732
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-object v0

    .line 735
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->destroyHandler(Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 737
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 738
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 740
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 741
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 742
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-object v0

    .line 744
    :cond_1
    :try_start_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/PermissionUtil;->checkAlarmPermissions()Z

    move-result v4

    const-wide/16 v5, 0x7d0

    if-nez v4, :cond_2

    .line 745
    const-string v0, "\u652f\u4ed8\u5b9d\u65e0\u95f9\u949f\u6743\u9650"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 746
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 751
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-object v0

    .line 755
    :cond_2
    :try_start_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->getInstance()Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;

    move-result-object v4

    const-string v7, "ET3vB^#td87sQqKaY*eMUJXP"

    sget-object v8, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    const-string v9, "com.eg.android.AlipayGphone"

    const/16 v10, 0x1f90

    invoke-virtual {v4, v10, v7, v8, v9}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->startIfNeeded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->initUser(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/Model;->initAllModel()V

    .line 759
    const-string v4, "\u6a21\u5757\u7248\u672c\uff1a1.12"

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 760
    const-string v4, "\u5f00\u59cb\u52a0\u8f7d"

    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 761
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->load(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 763
    const-class v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/Model;->getModel(Ljava/lang/Class;)Lio/github/lazyimmortal/sesame/data/Model;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 765
    const-string v0, "\u829d\u9ebb\u7c92\u5df2\u7981\u7528"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 766
    const-string v0, "\u829d\u9ebb\u7c92\u5df2\u7981\u7528"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 767
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-object v0

    .line 769
    :cond_3
    :try_start_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getBatteryPerm()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->init:Z

    if-nez v0, :cond_4

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/PermissionUtil;->checkBatteryPermissions()Z

    move-result v0

    if-nez v0, :cond_4

    .line 770
    const-string v0, "\u652f\u4ed8\u5b9d\u65e0\u59cb\u7ec8\u5728\u540e\u53f0\u8fd0\u884c\u6743\u9650"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 771
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getNewRpc()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 778
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    goto :goto_0

    .line 780
    :cond_5
    new-instance v0, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/rpc/bridge/OldRpcBridge;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    .line 782
    :goto_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->load()V

    .line 783
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->getVersion()Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcVersion:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcVersion;

    .line 785
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 786
    invoke-direct/range {p0 .. p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hookMiniProgramNetwork()V

    .line 788
    :cond_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getStayAwake()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_7

    .line 790
    :try_start_6
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 791
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 792
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 794
    :try_start_7
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 797
    :cond_7
    :goto_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setWakenAtTimeAlarm()V

    .line 798
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getNewRpc()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getDebugMode()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_8

    const/4 v4, 0x2

    .line 800
    :try_start_8
    const-string v0, "com.alibaba.ariver.commonability.network.rpc.RpcBridgeExtension"

    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "rpc"

    sget-object v7, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v8, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v9, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v10, "com.alibaba.ariver.app.api.App"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v11, "com.alibaba.ariver.app.api.Page"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v12, "com.alibaba.ariver.engine.api.bridge.model.ApiContext"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v13, "com.alibaba.ariver.engine.api.bridge.extension.BridgeCallback"

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-instance v13, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$7;

    invoke-direct {v13, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$7;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    const/16 v14, 0x11

    new-array v14, v14, [Ljava/lang/Object;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v2

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v3

    aput-object v16, v14, v4

    const/16 v17, 0x3

    aput-object v15, v14, v17

    const/16 v17, 0x4

    aput-object v7, v14, v17

    const/4 v7, 0x5

    aput-object v15, v14, v7

    const/4 v7, 0x6

    aput-object v8, v14, v7

    const/4 v7, 0x7

    aput-object v16, v14, v7

    const/16 v7, 0x8

    aput-object v16, v14, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x9

    aput-object v7, v14, v8

    const/16 v7, 0xa

    aput-object v16, v14, v7

    const/16 v7, 0xb

    aput-object v15, v14, v7

    const/16 v7, 0xc

    aput-object v9, v14, v7

    const/16 v7, 0xd

    aput-object v10, v14, v7

    const/16 v7, 0xe

    aput-object v11, v14, v7

    const/16 v7, 0xf

    aput-object v12, v14, v7

    const/16 v7, 0x10

    aput-object v13, v14, v7

    invoke-static {v0, v5, v6, v14}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcRequestUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 827
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v5, "hook record request successfully"

    invoke-static {v0, v5}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 829
    :try_start_9
    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v6, "hook record request err:"

    invoke-static {v5, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-static {v5, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 833
    :goto_2
    :try_start_a
    const-string v0, "com.alibaba.ariver.engine.common.bridge.internal.DefaultBridgeCallback"

    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "sendJSONResponse"

    const-string v7, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$8;

    invoke-direct {v8, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$8;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v2

    aput-object v8, v4, v3

    invoke-static {v0, v5, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcResponseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 846
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook record response successfully"

    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 848
    :try_start_b
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v5, "hook record response err:"

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {v4, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 852
    :cond_8
    :goto_3
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->service:Landroid/app/Service;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/NotificationUtil;->start(Landroid/content/Context;)V

    .line 853
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/Model;->bootAllModel(Ljava/lang/ClassLoader;)V

    .line 854
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Status;->load()Lio/github/lazyimmortal/sesame/util/Status;

    .line 855
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->load()Lio/github/lazyimmortal/sesame/data/TokenConfig;

    .line 856
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->updateDay()V

    .line 857
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->initData()V

    .line 858
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->initRpcRequest()V

    .line 859
    const-string v0, "\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 860
    const-string v0, "\u829d\u9ebb\u7c92\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 862
    :cond_9
    sput-boolean v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    .line 863
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->execHandler()V

    .line 864
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception v0

    .line 866
    :try_start_c
    sget-object v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "startHandler err:"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    const-string v0, "\u829d\u9ebb\u7c92\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 869
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit p0

    return-object v0

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method private initSimplePageManager()V
    .locals 2

    .line 1253
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->shouldEnableSimplePageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enableWindowMonitoring(Ljava/lang/ClassLoader;)V

    .line 1255
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/Captcha1Handler;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/hook/Captcha1Handler;-><init>()V

    const-string v1, "com.alipay.mobile.nebulax.xriver.activity.XRiverActivity"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->addHandler(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;)V

    .line 1256
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/Captcha2Handler;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/hook/Captcha2Handler;-><init>()V

    const-string v1, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->addHandler(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;)V

    :cond_0
    return-void
.end method

.method private installAsyncRequestHookOnClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1470
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$10;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$10;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    const-string v1, "processAsyncRequest"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 1479
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1480
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u7a0b\u5e8f\u6293\u5305hook\u5df2\u5b89\u88c5: AsyncRequestHandler.processAsyncRequest \u8fdb\u7a0b="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private installDeferredNetworkHook()V
    .locals 4

    .line 1948
    const-string v0, "loadClass"

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$11;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$11;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    .line 1961
    :try_start_0
    const-class v2, Ljava/lang/ClassLoader;

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    :catchall_0
    :try_start_1
    const-string v2, "dalvik.system.BaseDexClassLoader"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1966
    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private isGameApi(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1700
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 1703
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1704
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1707
    :cond_1
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->MINI_HOST_BLACKLIST:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 1708
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x3f

    .line 1712
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 1713
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/16 v1, 0x2f

    .line 1714
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 1716
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1718
    :cond_5
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->MINI_STATIC_SUFFIX:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 1719
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_2
    return v0
.end method

.method public static isHooked()Z
    .locals 1

    .line 127
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hooked:Z

    return v0
.end method

.method public static isOffline()Z
    .locals 1

    .line 134
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    return v0
.end method

.method static synthetic lambda$collectConfigV2Files$5(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1925
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$execDelayedHandler$2()V
    .locals 2

    .line 923
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainTask:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->startTask(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic lambda$initHandler$0()V
    .locals 3

    .line 747
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/PermissionUtil;->checkOrRequestAlarmPermissions(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u6388\u4e88\u652f\u4ed8\u5b9d\u4f7f\u7528\u95f9\u949f\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initHandler$1()V
    .locals 3

    .line 772
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/PermissionUtil;->checkOrRequestBatteryPermissions(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u6388\u4e88\u652f\u4ed8\u5b9d\u7ec8\u5728\u540e\u53f0\u8fd0\u884c\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$pendingMiniRequest$4(Ljava/lang/String;)Ljava/util/Deque;
    .locals 0

    .line 1389
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$reLogin$3()V
    .locals 4

    .line 1134
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLoginCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1135
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1388

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->execDelayedHandler(J)V

    goto :goto_0

    .line 1137
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getCheckInterval()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x2bf20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->execDelayedHandler(J)V

    .line 1139
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1142
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    .line 1143
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private logMiniResponse([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1403
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_7

    aget-object v0, p1, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1415
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isGameApi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1418
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5c0f\u7a0b\u5e8fonHandleResponse\u8fc7\u6ee4URL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u8fdb\u7a0b="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1421
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget-object p2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    :goto_0
    invoke-direct {p0, p2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->ensureAsyncRequestHook(Ljava/lang/ClassLoader;)V

    const/4 p2, 0x1

    .line 1422
    aget-object p1, p1, p2

    const-string v3, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepPrettyJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->clip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v3

    .line 1423
    :goto_1
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->pendingMiniRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Deque;

    if-eqz v5, :cond_4

    .line 1424
    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 1425
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1426
    invoke-static {v4, v0, v5}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    if-eqz v6, :cond_6

    .line 1432
    aget-object v0, v6, v1

    .line 1433
    aget-object p2, v6, p2

    .line 1434
    aget-object v3, v6, v2

    goto :goto_3

    .line 1437
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MINI ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    .line 1441
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bb0\u5f55\n\u65f6\u95f4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u65b9\u6cd5: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\u53c2\u6570: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\u6570\u636e: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    return-void

    .line 1405
    :cond_7
    :goto_4
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 1406
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u7a0b\u5e8fonHandleResponse\u53c2\u6570\u4e0d\u8db3: len="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1407
    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_9

    .line 1408
    const-string v0, " arg["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    aget-object v0, p1, v1

    if-nez v0, :cond_8

    const-string v0, "null"

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1411
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private logRequestFromModels([Ljava/lang/Object;)V
    .locals 9

    .line 1486
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 1489
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1491
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 1492
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    .line 1493
    invoke-direct {p0, v5, v4, v1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectStrings(Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;)V

    .line 1494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1499
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "GET"

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1500
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_3

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1502
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1503
    const-string v1, "url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1504
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isGameApi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1505
    const-string v5, "method"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->pendingMiniRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    goto :goto_2

    .line 1515
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1516
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "POST"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "PUT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "DELETE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_6
    move-object v1, v5

    .line 1522
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1523
    const-string v6, "data="

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v5, v2

    :cond_9
    if-nez v5, :cond_c

    .line 1529
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1530
    const-string v6, "{"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_a

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_a

    :cond_b
    move-object v5, v2

    goto :goto_4

    .line 1536
    :cond_c
    const-string p1, "http"

    if-nez v5, :cond_e

    .line 1537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1538
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_d

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_d

    .line 1539
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_d

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_d

    move-object v5, v6

    .line 1545
    :cond_e
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1546
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1547
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isGameApi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1548
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1549
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lt v3, v4, :cond_f

    .line 1554
    :cond_10
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1555
    invoke-direct {p0, v0, v1, v5}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->pendingMiniRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    :goto_6
    return-void
.end method

.method private miniDebugEnabled()Z
    .locals 5

    .line 1816
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1819
    sget-wide v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugExpireAt:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1820
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugCached:Z

    return v0

    .line 1822
    :cond_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->readDebugSwitchFromConfig()Z

    move-result v2

    .line 1823
    sput-boolean v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugCached:Z

    const-wide/16 v3, 0x2710

    add-long/2addr v0, v3

    .line 1824
    sput-wide v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugExpireAt:J

    return v2

    .line 1829
    :cond_1
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getDebugMode()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1831
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1835
    :catchall_0
    :cond_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->readDebugSwitchFromConfig()Z

    move-result v0

    return v0
.end method

.method private pendingMiniRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 1369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->isGameApi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_2

    .line 1373
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1377
    const-string v0, "data="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 1378
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1380
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :catchall_0
    :cond_1
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deepPrettyJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->clip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 1388
    :cond_2
    const-string p3, ""

    :goto_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->pendingMiniRequests:Ljava/util/Map;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p1, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MINI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 1393
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string p2, "?"

    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 1390
    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1396
    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_5

    .line 1397
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private printableUtf8([B)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1636
    array-length v1, p1

    if-eqz v1, :cond_5

    array-length v1, p1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 1640
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1641
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1647
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    int-to-long v2, v3

    const-wide/16 v4, 0xa

    mul-long v2, v2, v4

    int-to-long v4, p1

    const-wide/16 v6, 0x9

    mul-long v4, v4, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_5

    move-object v0, v1

    :catchall_0
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static reLogin()V
    .locals 2

    .line 1133
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static reLoginByBroadcast()V
    .locals 3

    .line 1068
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.eg.android.AlipayGphone.sesame.reLogin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1070
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "sesame sendBroadcast reLogin err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private readDebugSwitchFromConfig()Z
    .locals 11

    .line 1840
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->collectConfigV2Files()Ljava/util/List;

    move-result-object v0

    .line 1841
    const-string v1, "\"debugMode\"\\s*:\\s*\\{[^{}]*?\"value\"\\s*:\\s*(true|false)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1843
    const-string v2, "\"debugMode\"\\s*:\\s*(true|false)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1845
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1846
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    if-eqz v5, :cond_0

    .line 1847
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 1851
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 1854
    :cond_2
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 1855
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 1858
    :cond_3
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1859
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1861
    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1862
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    :cond_4
    if-nez v10, :cond_5

    goto :goto_0

    .line 1867
    :cond_5
    const-string v8, "true"

    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1868
    sget-object v9, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniSwitchFoundLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1869
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c0f\u7a0b\u5e8f\u6293\u5305\u5f00\u5173: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " \u6765\u6e90="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return v8

    :catchall_0
    nop

    goto :goto_0

    .line 1876
    :cond_7
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniSwitchDiagLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5c0f\u7a0b\u5e8f\u6293\u5305\u5f00\u5173\u672a\u8bfb\u5230[\u8fdb\u7a0b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-nez v2, :cond_8

    goto :goto_1

    .line 1883
    :cond_8
    :try_start_1
    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists="

    .line 1884
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " read="

    .line 1885
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " len="

    .line 1886
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    goto :goto_1

    .line 1890
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    :cond_a
    return v7
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1219
    :try_start_0
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1221
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1222
    sput-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiverRegistered:Z

    .line 1223
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v1, "hook unregisterBroadcastReceiver successfully"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1225
    :try_start_2
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "hook unregisterBroadcastReceiver err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1230
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1231
    const-string v1, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v1, "com.eg.android.AlipayGphone.sesame.execute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    const-string v1, "com.eg.android.AlipayGphone.sesame.reLogin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    const-string v1, "com.eg.android.AlipayGphone.sesame.status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    const-string v1, "com.eg.android.AlipayGphone.sesame.rpctest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 1239
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 1241
    :cond_1
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    const/4 p1, 0x1

    .line 1243
    sput-boolean p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->broadcastReceiverRegistered:Z

    .line 1244
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v0, "hook registerBroadcastReceiver successfully"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 1246
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v1, "hook registerBroadcastReceiver err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 3

    .line 1035
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1

    .line 1039
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestObject(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1

    .line 1043
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1

    .line 1055
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 1

    .line 1047
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
    .locals 6

    .line 1059
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;)Ljava/lang/String;
    .locals 3

    .line 1003
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;
    .locals 1

    .line 1007
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1011
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1023
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1015
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    invoke-interface {v0, p0, p1, p2}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .line 1027
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->rpcBridge:Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/rpc/bridge/RpcBridge;->requestString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private resolveInstanceFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 1662
    const-class v3, Ljava/lang/Object;

    if-eq p1, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 1663
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 1664
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 1665
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 1668
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 1669
    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_1

    const-class v8, [B

    if-eq v7, v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.alipay"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-class v8, Ljava/util/Map;

    .line 1670
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 1672
    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1673
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1678
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static restartByBroadcast()V
    .locals 3

    .line 1077
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1079
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "sesame sendBroadcast restart err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private scheduleMiniHookInstall()V
    .locals 3

    .line 1315
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniHookInstallScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1318
    sput-boolean v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniHookInstallScheduled:Z

    .line 1319
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    const-string v2, "sesame-mini-hook"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static setAlarmTask(JLandroid/app/PendingIntent;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "setAlarmTask triggerAtMillis:"

    const/4 v1, 0x0

    .line 973
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 974
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 975
    invoke-static {v2, v1, p0, p1, p2}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {v2, v1, p0, p1, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 979
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " operation:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 980
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 982
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string p2, "setAlarmTask err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static setOffline(Z)V
    .locals 0

    .line 163
    sput-boolean p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->offline:Z

    return-void
.end method

.method private static setWakenAtTimeAlarm()V
    .locals 10

    .line 653
    const-string v0, "com.eg.android.AlipayGphone.sesame.execute"

    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->unsetWakenAtTimeAlarm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 655
    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getPendingIntentFlag()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 656
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    .line 657
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0xb

    .line 658
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 659
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 660
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 661
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 662
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setAlarmTask(JLandroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    sput-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alarm0Pi:Landroid/app/PendingIntent;

    .line 664
    const-string v2, "\u8bbe\u7f6e\u5b9a\u65f6\u5524\u9192:0|000000"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 667
    :try_start_2
    sget-object v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "setWakenAt0 err:"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    :cond_0
    :goto_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getWakenAtTimeList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 671
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    if-ge v1, v4, :cond_2

    .line 675
    :try_start_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 676
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTodayCalendarByTimeStr(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 678
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v7

    if-lez v7, :cond_1

    .line 679
    sget-object v7, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getPendingIntentFlag()I

    move-result v9

    invoke-static {v7, v1, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 680
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v7}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setAlarmTask(JLandroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 682
    sget-object v6, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakenAtTimeAlarmMap:Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bbe\u7f6e\u5b9a\u65f6\u5524\u9192:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 688
    :try_start_4
    sget-object v6, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v7, "setWakenAtTime err:"

    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {v6, v5}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    .line 694
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "setWakenAtTimeAlarm err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private shouldEnableSimplePageManager()Z
    .locals 3

    .line 1266
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1270
    :cond_0
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    const-string v2, "10.6.58.99999"

    invoke-direct {v0, v2}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;-><init>(Ljava/lang/String;)V

    .line 1271
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    invoke-virtual {v2, v0}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->compareTo(Lio/github/lazyimmortal/sesame/entity/AlipayVersion;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u76ee\u6807\u5e94\u7528\u7248\u672c["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alipayVersion:Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u9ad8\u4e8e[10.6.58.99999]\u4e0d\u652f\u6301\u81ea\u52a8\u8fc7\u6ed1\u5757\u9a8c\u8bc1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static stopHandler()V
    .locals 1

    .line 932
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->mainTask:Lio/github/lazyimmortal/sesame/data/task/BaseTask;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/task/BaseTask;->stopTask()V

    .line 933
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->stopAllTask()V

    return-void
.end method

.method private tryHookMiniNetworkClass(Ljava/lang/String;)V
    .locals 1

    .line 1357
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->deferredHookedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1361
    :cond_0
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hookMiniNetworkClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private tryInstallMiniHook()Z
    .locals 4

    const-string v0, "\u5c0f\u7a0b\u5e8f\u6293\u5305\u8fdb\u7a0b\u542f\u52a8["

    const/4 v1, 0x0

    .line 1344
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->miniDebugEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 1347
    :cond_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hookMiniProgramNetwork()V

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c0f\u7a0b\u5e8f\u6293\u5305\u8fdb\u7a0b["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V

    return v1
.end method

.method private static unsetAlarmTask(Landroid/app/PendingIntent;)Ljava/lang/Boolean;
    .locals 2

    if-eqz p0, :cond_0

    .line 991
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 992
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/4 p0, 0x1

    .line 994
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 996
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v1, "unsetAlarmTask err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 999
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static unsetWakenAtTimeAlarm()V
    .locals 4

    .line 701
    :try_start_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakenAtTimeAlarmMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 703
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 705
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->unsetAlarmTask(Landroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->wakenAtTimeAlarmMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u6d88\u5b9a\u65f6\u5524\u9192:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 710
    :try_start_2
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v3, "unsetWakenAtTime err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 715
    :cond_1
    :try_start_3
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alarm0Pi:Landroid/app/PendingIntent;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->unsetAlarmTask(Landroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 716
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->alarm0Pi:Landroid/app/PendingIntent;

    .line 717
    const-string v0, "\u53d6\u6d88\u5b9a\u65f6\u5524\u9192:0|000000"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 720
    :try_start_4
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "unsetWakenAt0 err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 724
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "unsetWakenAtTimeAlarm err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static updateDay()V
    .locals 10

    .line 937
    const-string v0, "-"

    const-string v1, "\u65e5\u671f\u66f4\u65b0\u4e3a\uff1a"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 939
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 940
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    .line 941
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 942
    sget-object v9, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v4, :cond_0

    sget-object v9, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v6, :cond_0

    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 943
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    sput-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    .line 944
    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 945
    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v5, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 946
    sget-object v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->dayCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    invoke-virtual {v5, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 947
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 948
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->setWakenAtTimeAlarm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 951
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 954
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Statistics;->save(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 956
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 959
    :goto_1
    :try_start_2
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Status;->save(Ljava/util/Calendar;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 961
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 964
    :goto_2
    :try_start_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->updateDay()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 966
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 12

    .line 169
    const-string v0, "isInBackground"

    const-string v1, "android.app.Service"

    const-string v2, " proc="

    const-string v3, "com.alipay.mobile.common.fgbg.FgBgMonitorImpl"

    .line 0
    const-string v4, "\u5c0f\u7a0b\u5e8f\u6293\u5305attach hook\u5b89\u88c5\u5931\u8d25["

    const-string v5, " ver=1.12"

    const-string v6, "[Sesame] mini process inject proc="

    const-string v7, "Xposed\u6ce8\u5165: pkg="

    const-string v8, "[Sesame] inject pkg="

    .line 169
    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    sput-object v9, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    .line 172
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    .line 189
    :goto_0
    const-string v2, "io.github.lazyimmortal.sesame"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    .line 191
    :try_start_2
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v0, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setRunTypeByCode"

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/RunType;->getCode()Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-static {p1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception p1

    .line 193
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 195
    :cond_0
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v8, "com.eg.android.AlipayGphone"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "attach"

    const/4 v10, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    sget-boolean v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hooked:Z

    if-eqz v2, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sput-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    .line 206
    const-class v2, Landroid/app/Application;

    new-instance v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;

    invoke-direct {v4, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    new-array v6, v10, [Ljava/lang/Object;

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    aput-object v4, v6, v5

    invoke-static {v2, v9, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 242
    :try_start_3
    const-string v2, "com.alipay.mobile.nebulaappproxy.api.rpc.H5AppRpcUpdate"

    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "matchVersion"

    const-string v8, "com.alipay.mobile.h5container.api.H5Page"

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v9

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v7

    const-class v8, Ljava/util/Map;

    aput-object v8, v11, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v11, v10

    const/4 v8, 0x3

    aput-object v9, v11, v8

    invoke-static {v2, v4, v6, v11}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 243
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook matchVersion successfully"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    .line 245
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v6, "hook matchVersion err:"

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :goto_1
    :try_start_4
    const-string v2, "com.alipay.mobile.quinox.LauncherActivity"

    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "onResume"

    new-instance v8, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;

    invoke-direct {v8, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v7

    invoke-static {v2, v4, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 283
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook login successfully"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    .line 285
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v6, "hook login err:"

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :goto_2
    :try_start_5
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "onCreate"

    new-instance v6, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;

    invoke-direct {v6, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v7

    invoke-static {v1, v2, v4, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 422
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook service onCreate successfully"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    .line 424
    sget-object v4, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v6, "hook service onCreate err:"

    invoke-static {v4, v6}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v4, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :goto_3
    :try_start_6
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "onDestroy"

    new-instance v6, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$4;

    invoke-direct {v6, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$4;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v7

    invoke-static {v1, v2, v4, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    .line 444
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook service onDestroy err:"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    :goto_4
    :try_start_7
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v1, v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    .line 450
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v4, "hook FgBgMonitorImpl method 1 err:"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    :goto_5
    :try_start_8
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v7

    aput-object v2, v4, v5

    invoke-static {v3, v1, v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    .line 456
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "hook FgBgMonitorImpl method 2 err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :goto_6
    :try_start_9
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "isInBackgroundV2"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v0, v1, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    .line 462
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "hook FgBgMonitorImpl method 3 err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    :goto_7
    :try_start_a
    const-string v0, "com.alipay.mobile.common.transport.utils.MiscUtils"

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "isAtFrontDesk"

    const-string v3, "android.content.Context"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v4, v6, v5

    invoke-static {v0, v1, v2, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 467
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v1, "hook MiscUtils successfully"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    .line 469
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    const-string v2, "hook MiscUtils err:"

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    :goto_8
    sput-boolean v5, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->hooked:Z

    .line 473
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 474
    :cond_2
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 478
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 482
    :catchall_a
    :try_start_c
    const-class v0, Landroid/app/Application;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;

    invoke-direct {v1, p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$5;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/ClassLoader;)V

    new-array p1, v10, [Ljava/lang/Object;

    const-class v2, Landroid/content/Context;

    aput-object v2, p1, v7

    aput-object v1, p1, v5

    invoke-static {v0, v9, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_9

    :catchall_b
    move-exception p1

    .line 504
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->debug(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :catchall_c
    :cond_3
    :goto_9
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 0

    return-void
.end method
