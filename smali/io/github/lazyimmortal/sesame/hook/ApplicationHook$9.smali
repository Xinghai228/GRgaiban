.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;
.super Ljava/lang/Object;
.source "ApplicationHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->scheduleMiniHookInstall()V
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

    .line 1319
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1323
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$2100(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    const-wide/16 v1, 0x1388

    .line 1329
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$9;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$2100(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
