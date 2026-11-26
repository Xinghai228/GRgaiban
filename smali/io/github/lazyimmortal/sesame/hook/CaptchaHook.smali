.class public Lio/github/lazyimmortal/sesame/hook/CaptchaHook;
.super Ljava/lang/Object;
.source "CaptchaHook.java"


# static fields
.field private static final CLASS_CAPTCHA_DIALOG:Ljava/lang/String; = "com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog"

.field public static final INSTANCE:Lio/github/lazyimmortal/sesame/hook/CaptchaHook;

.field private static final TAG:Ljava/lang/String; = "CaptchaHook"

.field private static savedClassLoader:Ljava/lang/ClassLoader;

.field private static uiHookUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->INSTANCE:Lio/github/lazyimmortal/sesame/hook/CaptchaHook;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 0

    .line 33
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->getDialogInstance(Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Dialog;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->collectDialogInfo(Landroid/app/Dialog;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 205
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 206
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 211
    check-cast p0, Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    const-string v0, "TextView\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static collectDialogInfo(Landroid/app/Dialog;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 183
    const-string v0, "\n"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 186
    const-string v2, "\u6240\u5c5e\u4e0a\u4e0b\u6587\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 188
    const-string v2, "\u6240\u5c5e\u4e0a\u4e0b\u6587\uff1a\u83b7\u53d6\u5931\u8d25 - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const v1, 0x1020016

    .line 192
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 193
    const-string v2, "\u7cfb\u7edf\u6807\u9898\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u65e0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x102000b

    .line 195
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    const-string v3, "\u7cfb\u7edf\u6d88\u606f\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, "===== \u81ea\u5b9a\u4e49\u5e03\u5c40\u6587\u672c =====\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 201
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->collectAllTextViewText(Landroid/view/View;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static getDialogInstance(Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 2

    .line 163
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 164
    check-cast p0, Landroid/app/Dialog;

    return-object p0

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mDialog"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53cd\u5c04\u83b7\u53d6Dialog\u5b9e\u4f8b\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static hookCaptchaDialogShowAndClose(Ljava/lang/ClassLoader;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 4

    .line 121
    :try_start_0
    const-string v0, "com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 123
    const-string v0, "show"

    new-instance v1, Lio/github/lazyimmortal/sesame/hook/CaptchaHook$1;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 153
    const-string v0, "\u274c Hook CaptchaDialog.show() \u5931\u8d25"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 154
    const-string v0, "CaptchaHook"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setupHook(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 65
    sput-object p0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->savedClassLoader:Ljava/lang/ClassLoader;

    .line 66
    const-string p0, "CaptchaHook\u9a8c\u8bc1\u7801Hook\u7cfb\u7edf\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 67
    const-string p0, "CaptchaHook\u26a0\ufe0f Hook\u914d\u7f6e\u5c06\u5728\u914d\u7f6e\u6587\u4ef6\u52a0\u8f7d\u540e\u540c\u6b65"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static unhookAll()V
    .locals 1

    .line 108
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->uiHookUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    const/4 v0, 0x0

    .line 110
    sput-object v0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->uiHookUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_0
    return-void
.end method

.method public static updateHooks(Z)V
    .locals 3

    .line 79
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->savedClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 81
    const-string p0, "\u274c ClassLoader\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528setupHook()"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    const-string v1, "CaptchaHook\ud83d\udcdd \u66f4\u65b0\u9a8c\u8bc1\u7801Hook\u72b6\u6001:"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 86
    const-string v1, "\u2705 \u5f00\u542f"

    goto :goto_0

    :cond_1
    const-string v1, "\u26d4 \u5173\u95ed"

    :goto_0
    const-string v2, "CaptchaHook  UI\u5c42\u62e6\u622a: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->unhookAll()V

    if-eqz p0, :cond_2

    .line 93
    const-string p0, "CaptchaHook  \ud83d\udd27 \u8bbe\u7f6eUI\u5c42\u62e6\u622a..."

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->hookCaptchaDialogShowAndClose(Ljava/lang/ClassLoader;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    sput-object p0, Lio/github/lazyimmortal/sesame/hook/CaptchaHook;->uiHookUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_1

    .line 98
    :cond_2
    const-string p0, "CaptchaHook  \u26a0\ufe0f \u9a8c\u8bc1\u7801\u62e6\u622a\u5df2\u5173\u95ed"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 101
    :goto_1
    const-string p0, "CaptchaHook\u9a8c\u8bc1\u7801Hook\u66f4\u65b0\u5b8c\u6210 \u2705"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method
