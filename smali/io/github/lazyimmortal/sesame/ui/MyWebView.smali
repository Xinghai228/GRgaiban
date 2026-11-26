.class public Lio/github/lazyimmortal/sesame/ui/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->defInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->defInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->defInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->defInit()V

    return-void
.end method

.method private defInit()V
    .locals 3

    .line 31
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 32
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 33
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 34
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 35
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 36
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 37
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 38
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView$1;-><init>(Lio/github/lazyimmortal/sesame/ui/MyWebView;)V

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public scrollToBottom()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->scrollTo(II)V

    return-void
.end method
