.class Lio/github/lazyimmortal/sesame/ui/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view broadcast action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string p2, "io.github.lazyimmortal.sesame.status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "io.github.lazyimmortal.sesame.update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics;->load()Lio/github/lazyimmortal/sesame/util/Statistics;

    .line 102
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$400(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object p2, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getRunType()Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 92
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->PACKAGE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$000(Lio/github/lazyimmortal/sesame/ui/MainActivity;Lio/github/lazyimmortal/sesame/data/RunType;)V

    .line 94
    :cond_2
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$200(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$100(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 96
    const-string p2, "\u829d\u9ebb\u7c92\u52a0\u8f7d\u72b6\u6001\u6b63\u5e38"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$302(Lio/github/lazyimmortal/sesame/ui/MainActivity;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
