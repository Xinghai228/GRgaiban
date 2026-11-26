.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$11;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "ApplicationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->installDeferredNetworkHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 1948
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$11;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 1952
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 1953
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$11;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$2300(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
