.class public Lio/github/lazyimmortal/sesame/hook/Captcha2Handler;
.super Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;
.source "Captcha2Handler.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/hook/SimplePageManager$ActivityFocusHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlidePathKey()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "slide_path_API"

    return-object v0
.end method
