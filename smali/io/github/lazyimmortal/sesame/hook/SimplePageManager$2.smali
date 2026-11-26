.class Lio/github/lazyimmortal/sesame/hook/SimplePageManager$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SimplePageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->hookDialogConstructor([Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$paramStr:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$2;->val$paramStr:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 239
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6784\u9020\u51fd\u6570("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/SimplePageManager$2;->val$paramStr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->access$400(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method
