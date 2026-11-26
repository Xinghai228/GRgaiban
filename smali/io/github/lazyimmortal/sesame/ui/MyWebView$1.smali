.class Lio/github/lazyimmortal/sesame/ui/MyWebView$1;
.super Landroid/webkit/WebViewClient;
.source "MyWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/MyWebView;->defInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/MyWebView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 41
    const-string p1, ".log"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;->this$0:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    new-instance p2, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;

    invoke-direct {p2, p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView$1$1;-><init>(Lio/github/lazyimmortal/sesame/ui/MyWebView$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
