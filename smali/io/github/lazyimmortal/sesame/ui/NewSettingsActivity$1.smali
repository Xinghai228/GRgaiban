.class Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "NewSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    const-class v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    return-void
.end method

.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 161
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 162
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 169
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$000(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Forbidden Scheme:\""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
