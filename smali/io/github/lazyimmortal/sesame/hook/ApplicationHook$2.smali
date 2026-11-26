.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "ApplicationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
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

    .line 249
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 252
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity onResume"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    const-string p1, "\u7528\u6237\u672a\u767b\u5f55"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 256
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$500()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 260
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$502(Z)Z

    :cond_1
    return-void

    .line 265
    :cond_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    .line 268
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$2;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 269
    const-string p1, "\u7528\u6237\u5df2\u5207\u6362"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 273
    :cond_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->initUser(Ljava/lang/String;)V

    .line 275
    :cond_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$700()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 276
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$702(Z)Z

    .line 277
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$800()V

    .line 278
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 279
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity reLogin"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
