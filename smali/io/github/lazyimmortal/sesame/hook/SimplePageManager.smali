.class public Lio/github/lazyimmortal/sesame/hook/SimplePageManager;
.super Ljava/lang/Object;
.source "SimplePageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimplePageManager"

.field private static final activityFocusHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private static disable:Z

.field public static final handler:Landroid/os/Handler;

.field private static volatile hasPendingActivityTask:Z

.field private static mClassLoader:Ljava/lang/ClassLoader;

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static taskDuration:I

.field private static topActivity:Landroid/app/Activity;

.field private static windowMonitorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->activityFocusHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->handler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    .line 40
    sput v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->taskDuration:I

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hasPendingActivityTask:Z

    .line 43
    sput-boolean v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->disable:Z

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    .line 46
    sput-boolean v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->windowMonitorEnabled:Z

    .line 56
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enablePageMonitor()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .line 28
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->topActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 28
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->topActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 28
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 28
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mContextRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    .line 28
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 28
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerActivity()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->addDialogIfNotExists(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method

.method private static addDialogIfNotExists(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 3

    .line 203
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SimplePageManager"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 204
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5bf9\u8bdd\u6846\u4ece "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u5df2\u5b58\u5728\u4e8e\u5217\u8868\u4e2d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u5bf9\u8bdd\u6846\u5df2\u4ece "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u6dfb\u52a0\uff0c\u603b\u6570: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerDialogProcessing()V

    :goto_0
    return-void
.end method

.method public static addHandler(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;)V
    .locals 1

    .line 80
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->activityFocusHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static debugPrintAllTextViews(Landroid/view/View;I)V
    .locals 5

    .line 150
    const-string v0, "  "

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 152
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 153
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 154
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6587\u672c\u89c6\u56fe["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u6587\u672c=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' \u5185\u5bb9\u63cf\u8ff0=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "SimplePageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 165
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 166
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->debugPrintAllTextViews(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static enablePageMonitor()V
    .locals 6

    .line 177
    :try_start_0
    const-class v0, Landroid/app/Application;

    const-string v1, "dispatchActivityResumed"

    new-instance v2, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$1;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lio/github/lazyimmortal/sesame/hook/CompatHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 194
    const-string v1, "SimplePageManager"

    const-string v2, "\u6302\u94a9 Activity->dispatchActivityResumed \u9519\u8bef: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static enableWindowMonitor()V
    .locals 7

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u542f\u7528\u7a97\u53e3\u76d1\u63a7\u88ab\u8c03\u7528\uff0c\u7c7b\u52a0\u8f7d\u5668: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimplePageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 256
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hookDialogConstructor([Ljava/lang/Class;)V

    const/4 v2, 0x2

    .line 257
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v0

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hookDialogConstructor([Ljava/lang/Class;)V

    .line 260
    :try_start_0
    const-string v3, "android.content.DialogInterface$OnCancelListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x3

    .line 261
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    aput-object v3, v5, v2

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hookDialogConstructor([Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 263
    const-string v3, "\u627e\u4e0d\u5230DialogInterface.OnCancelListener\u7c7b"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :goto_1
    :try_start_1
    const-string v2, "com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog"

    .line 270
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 268
    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 272
    const-string v3, "show"

    new-instance v5, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$3;

    invoke-direct {v5}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$3;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Lio/github/lazyimmortal/sesame/hook/CompatHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 284
    const-string v2, "\u6302\u94a9 CaptchaDialog.show() \u9519\u8bef: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static enableWindowMonitoring()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enableWindowMonitoring(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static enableWindowMonitoring(Ljava/lang/ClassLoader;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 93
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mClassLoader:Ljava/lang/ClassLoader;

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u542f\u7528\u7a97\u53e3\u76d1\u63a7\u88ab\u8c03\u7528\uff0c\u7a97\u53e3\u76d1\u63a7\u5df2\u542f\u7528: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->windowMonitorEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", \u7c7b\u52a0\u8f7d\u5668: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    const-string v0, "SimplePageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-boolean p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->windowMonitorEnabled:Z

    if-nez p0, :cond_2

    .line 100
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enableWindowMonitor()V

    const/4 p0, 0x1

    .line 101
    sput-boolean p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->windowMonitorEnabled:Z

    :cond_2
    return-void
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 64
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 60
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDialogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 68
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->topActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static varargs hookDialogConstructor([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 226
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_1
    :try_start_0
    const-string v1, "android.app.Dialog"

    .line 234
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$2;

    invoke-direct {v4, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$2;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const/4 p0, 0x1

    aput-object v4, v5, p0

    .line 232
    invoke-static {v1, v3, v5}, Lio/github/lazyimmortal/sesame/hook/CompatHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6302\u94a9\u5bf9\u8bdd\u6846\u6784\u9020\u51fd\u6570("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") \u9519\u8bef: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimplePageManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$triggerActivityActive$0(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;I)V
    .locals 4

    .line 344
    const-string v0, "SimplePageManager"

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hasPendingActivityTask:Z

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 348
    new-instance v2, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    invoke-direct {v2, v1}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;-><init>(Landroid/view/View;)V

    invoke-interface {p1, p0, v2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;->handleActivity(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return-void

    :catchall_0
    move-exception v1

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5904\u7406 Activity \u51fa\u9519: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/16 v1, 0xa

    if-gt p2, v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 357
    invoke-static {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerActivityActive(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;I)V

    goto :goto_1

    .line 359
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Activity \u4e8b\u4ef6\u89e6\u53d1\u5931\u8d25\u6b21\u6570\u8fc7\u591a: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static removeHandler(Ljava/lang/String;)V
    .locals 1

    .line 84
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->activityFocusHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setDisable(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->disable:Z

    return-void
.end method

.method public static setTaskDuration(I)V
    .locals 0

    .line 72
    sput p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->taskDuration:I

    return-void
.end method

.method private static triggerActivity()V
    .locals 1

    .line 292
    const-string v0, "Activity \u5df2\u6062\u590d"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerPendingActivityHandler(Ljava/lang/String;)V

    return-void
.end method

.method private static triggerActivityActive(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;I)V
    .locals 2

    .line 336
    sget-boolean v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->disable:Z

    if-eqz v0, :cond_0

    .line 337
    const-string p0, "SimplePageManager"

    const-string p1, "\u9875\u9762\u89e6\u53d1\u7ba1\u7406\u5668\u5df2\u7981\u7528"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->handler:Landroid/os/Handler;

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;I)V

    sget p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->taskDuration:I

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static triggerDialogProcessing()V
    .locals 1

    .line 299
    const-string v0, "Dialog \u5df2\u521b\u5efa"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerPendingActivityHandler(Ljava/lang/String;)V

    return-void
.end method

.method private static triggerPendingActivityHandler(Ljava/lang/String;)V
    .locals 5

    .line 306
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->topActivity:Landroid/app/Activity;

    .line 307
    const-string v1, "SimplePageManager"

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u4ece "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u89e6\u53d1\u5904\u7406\u5668\uff0c\u672a\u627e\u5230\u9876\u5c42 Activity"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_0
    sget-object v2, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->activityFocusHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;

    if-nez v2, :cond_1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7684\u5904\u7406\u5668\uff0c\u6765\u6e90: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_1
    sget-boolean v3, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hasPendingActivityTask:Z

    if-eqz v3, :cond_2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8df3\u8fc7\u4ece "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u89e6\u53d1\uff0c\u5df2\u6709\u5f85\u5904\u7406\u4efb\u52a1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 323
    sput-boolean v3, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hasPendingActivityTask:Z

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4ece "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u89e6\u53d1 "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u7684\u5904\u7406\u5668"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 325
    invoke-static {v0, v2, p0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->triggerActivityActive(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;I)V

    return-void
.end method

.method public static tryGetTopView(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 5

    .line 118
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_1

    .line 134
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  - \u5bf9\u8bdd\u6846: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \u6b63\u5728\u663e\u793a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SimplePageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 135
    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->debugPrintAllTextViews(Landroid/view/View;I)V

    .line 137
    new-instance v3, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    invoke-direct {v3, v2}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;-><init>(Landroid/view/View;)V

    .line 138
    invoke-static {v3, p0}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->evaluate(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    return-object p0

    :cond_6
    return-object v2
.end method
