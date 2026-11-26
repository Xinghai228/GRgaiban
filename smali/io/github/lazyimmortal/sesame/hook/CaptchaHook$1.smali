.class Lio/github/lazyimmortal/sesame/hook/CaptchaHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CaptchaHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->hookCaptchaDialogShowAndClose(Ljava/lang/ClassLoader;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 127
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v1, "===== \u652f\u4ed8\u5b9dCaptchaDialog\u4fe1\u606f =====\n\u5bf9\u8bdd\u6846\u7c7b\u540d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->access$000(Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 135
    const-string p1, "CaptchaHook\u65e0\u6cd5\u83b7\u53d6Dialog\u5b9e\u4f8b\uff0c\u5173\u95ed\u5931\u8d25"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->access$100(Landroid/app/Dialog;Ljava/lang/StringBuilder;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CaptchaHook\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u662f\u5426\u4f7f\u7528\u4e86\u4ee3\u7406\u8f6f\u4ef6\u6216VPN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "\u5305\u542b\"\u8bf7\u68c0\u67e5\u662f\u5426\u4f7f\u7528\u4e86\u4ee3\u7406\u8f6f\u4ef6\u6216VPN\",\u5173\u95ed\u5bf9\u8bdd\u6846"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 148
    :cond_1
    const-string p1, "\u6267\u884c\u4e86\u5f39\u7a97\u68c0\u6d4bhookCaptchaDialogShowAndClose()"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void
.end method
