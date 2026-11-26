.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "ApplicationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->installAsyncRequestHookOnClass(Ljava/lang/Class;)V
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

    .line 1470
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$10;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 1474
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$10;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$2200(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
