.class Lio/github/lazyimmortal/sesame/hook/SimplePageManager$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SimplePageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enablePageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 184
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 185
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 188
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$000()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$202(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 189
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$300()V

    return-void
.end method
