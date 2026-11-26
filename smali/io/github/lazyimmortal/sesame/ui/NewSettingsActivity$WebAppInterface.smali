.class public Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "NewSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;


# direct methods
.method public constructor <init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBackPressed$0$io-github-lazyimmortal-sesame-ui-NewSettingsActivity$WebAppInterface()V
    .locals 1

    .line 302
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$200(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$200(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 301
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExit()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 313
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
