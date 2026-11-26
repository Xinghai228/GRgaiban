.class public Lio/github/lazyimmortal/sesame/util/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLocal(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 13
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->load()Lio/github/lazyimmortal/sesame/data/AppConfig;

    .line 14
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/Locale;

    const-string v1, "zh"

    const-string v2, "CN"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/LanguageUtil;->setLocal(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/LanguageUtil;->setLocal(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static setLocal(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 1

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
