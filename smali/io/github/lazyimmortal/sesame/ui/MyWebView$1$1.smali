.class Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/github/lazyimmortal/sesame/ui/MyWebView$1;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/MyWebView$1;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;->this$1:Lio/github/lazyimmortal/sesame/ui/MyWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;->this$1:Lio/github/lazyimmortal/sesame/ui/MyWebView$1;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getContentHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;->this$1:Lio/github/lazyimmortal/sesame/ui/MyWebView$1;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;->this$1:Lio/github/lazyimmortal/sesame/ui/MyWebView$1;

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->scrollToBottom()V

    :goto_0
    return-void
.end method
