.class public Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;
.super Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.source "HtmlViewerActivity.java"


# instance fields
.field canClear:Ljava/lang/Boolean;

.field mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

.field pgb:Landroid/widget/ProgressBar;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lio/github/lazyimmortal/sesame/R$layout;->activity_html_viewer:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->setContentView(I)V

    .line 36
    sget p1, Lio/github/lazyimmortal/sesame/R$color;->textColorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->setBaseSubtitleTextColor(I)V

    .line 38
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->mwv_webview:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/ui/MyWebView;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    .line 39
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->pgb_webview:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->pgb:Landroid/widget/ProgressBar;

    .line 41
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity$1;-><init>(Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;)V

    invoke-virtual {p1, v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 85
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->export_file:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 86
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->canClear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->clear_file:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 89
    :cond_0
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->open_with_other_browser:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->copy_the_url:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->scroll_to_top:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->scroll_to_bottom:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 93
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 149
    :pswitch_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->scrollToBottom()V

    goto/16 :goto_1

    .line 145
    :pswitch_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->scrollTo(II)V

    goto/16 :goto_1

    .line 139
    :pswitch_2
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 140
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 141
    sget p1, Lio/github/lazyimmortal/sesame/R$string;->copy_success:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 125
    :pswitch_3
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 127
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    const-string p1, "\u8be5\u6587\u4ef6\u4e0d\u652f\u6301\u7528\u6d4f\u89c8\u5668\u6253\u5f00"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :cond_1
    const-string p1, "\u4e0d\u652f\u6301\u7528\u6d4f\u89c8\u5668\u6253\u5f00"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->uri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 112
    :pswitch_4
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->clearFile(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    const-string p1, "\u6587\u4ef6\u5df2\u6e05\u7a7a"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->reload()V

    goto :goto_1

    .line 100
    :pswitch_5
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->exportFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6587\u4ef6\u5df2\u5bfc\u51fa\u5230: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .line 61
    invoke-super {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 65
    const-string v4, "nextLine"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/16 v2, 0x55

    .line 66
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 72
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 74
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->mWebView:Lio/github/lazyimmortal/sesame/ui/MyWebView;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/github/lazyimmortal/sesame/ui/MyWebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    :cond_1
    const-string v1, "canClear"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;->canClear:Ljava/lang/Boolean;

    return-void

    .line 79
    :cond_2
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method
