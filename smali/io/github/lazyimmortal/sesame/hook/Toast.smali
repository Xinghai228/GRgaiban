.class public Lio/github/lazyimmortal/sesame/hook/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Toast"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getToastOffsetY()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 31
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/Toast;->TAG:Ljava/lang/String;

    const-string v0, "show.run err:"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;)V
    .locals 1

    .line 25
    :try_start_0
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/Toast$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lio/github/lazyimmortal/sesame/hook/Toast$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 36
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/Toast;->TAG:Ljava/lang/String;

    const-string p2, "show err:"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 17
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 18
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getShowToast()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
