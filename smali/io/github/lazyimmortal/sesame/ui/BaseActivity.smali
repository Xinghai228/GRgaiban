.class public Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private watermarkView:Lio/github/lazyimmortal/sesame/ui/WatermarkView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private addWatermark()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/LanguageUtil;->setLocal(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getBaseSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseTitle()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    .line 54
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->x_toolbar:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 55
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->getBaseTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->getBaseSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->init(Landroid/content/Context;)V

    return-void
.end method

.method public setBaseSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBaseSubtitleTextColor(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    return-void
.end method

.method public setBaseTitle(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBaseTitleTextColor(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->addWatermark()V

    return-void
.end method
