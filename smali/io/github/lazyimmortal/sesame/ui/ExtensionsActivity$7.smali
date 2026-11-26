.class Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;
.super Ljava/lang/Object;
.source "ExtensionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 140
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    const-string v2, "io.github.lazyimmortal.sesame.ui.AlphaActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    const-string v0, "\u4e0d\u7b26\u5408\u5f00\u542f\u8d44\u683c\uff01"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
