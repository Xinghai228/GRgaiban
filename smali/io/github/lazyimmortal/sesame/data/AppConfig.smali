.class public Lio/github/lazyimmortal/sesame/data/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static final APP_CONFIG_DIRECTORY_FILE:Ljava/io/File;

.field public static final INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

.field private static final TAG:Ljava/lang/String; = "AppConfig"


# instance fields
.field private init:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private languageSimplifiedChinese:Ljava/lang/Boolean;

.field private newUI:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getExternalFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->APP_CONFIG_DIRECTORY_FILE:Ljava/io/File;

    .line 22
    new-instance v0, Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/AppConfig;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->newUI:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->languageSimplifiedChinese:Ljava/lang/Boolean;

    return-void
.end method

.method private static getExternalFilesDir()Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 33
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 35
    const-string v2, "Sesame"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 38
    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized load()Lio/github/lazyimmortal/sesame/data/AppConfig;
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/data/AppConfig;

    monitor-enter v0

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->APP_CONFIG_DIRECTORY_FILE:Ljava/io/File;

    const-string v3, "appConfig.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "\u52a0\u8f7dAPP\u914d\u7f6e"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    sget-object v4, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    const-string v4, "\u683c\u5f0f\u5316APP\u914d\u7f6e"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "\u683c\u5f0f\u5316APP\u914d\u7f6e"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->unload()V

    .line 62
    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    const-string v3, "\u521d\u59cbAPP\u914d\u7f6e"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "\u521d\u59cbAPP\u914d\u7f6e"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 67
    :try_start_2
    sget-object v3, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const-string v4, "\u91cd\u7f6eAPP\u914d\u7f6e"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "\u91cd\u7f6eAPP\u914d\u7f6e"

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :try_start_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->unload()V

    .line 72
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 74
    :catch_0
    :try_start_4
    sget-object v1, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_1
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/AppConfig;->setInit(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public static save()Ljava/lang/Boolean;
    .locals 4

    .line 44
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->toSaveStr()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->APP_CONFIG_DIRECTORY_FILE:Ljava/io/File;

    const-string v3, "appConfig.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static toSaveStr()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized unload()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/data/AppConfig;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    new-instance v3, Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/data/AppConfig;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->updateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 85
    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/data/AppConfig;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/data/AppConfig;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/data/AppConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->isInit()Z

    move-result v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->isInit()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object p1

    if-nez v1, :cond_6

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getLanguageSimplifiedChinese()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->languageSimplifiedChinese:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNewUI()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->newUI:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 15
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->init:Z

    return v0
.end method

.method public setInit(Z)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 15
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->init:Z

    return-void
.end method

.method public setLanguageSimplifiedChinese(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->languageSimplifiedChinese:Ljava/lang/Boolean;

    return-void
.end method

.method public setNewUI(Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/AppConfig;->newUI:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppConfig(init="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->isInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", languageSimplifiedChinese="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
