.class Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "HtmlViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 46
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->pgb:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    .line 48
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    const-string p2, "Loading..."

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->setBaseSubtitle(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->pgb:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    iget-object p2, p1, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->setBaseSubtitle(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->pgb:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
