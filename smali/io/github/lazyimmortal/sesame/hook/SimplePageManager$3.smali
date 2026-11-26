.class Lio/github/lazyimmortal/sesame/hook/SimplePageManager$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SimplePageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->enableWindowMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 278
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    .line 279
    const-string v0, "CaptchaDialog.show()"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$400(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method
