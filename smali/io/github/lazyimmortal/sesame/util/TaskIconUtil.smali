.class public Lio/github/lazyimmortal/sesame/util/TaskIconUtil;
.super Ljava/lang/Object;
.source "TaskIconUtil.java"


# static fields
.field private static final FALLBACK_ICON_KEYS:[Ljava/lang/String;

.field private static final ICON_KEYS:[Ljava/lang/String;

.field private static final NESTED_CONTAINERS:[Ljava/lang/String;

.field private static cache:Lio/github/lazyimmortal/sesame/util/ImageZipCache;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    const-string v5, "spuHeadImg"

    const-string v6, "templateIconNew"

    const-string v0, "icon"

    const-string v1, "taskIcon"

    const-string v2, "iconUrl"

    const-string v3, "logo"

    const-string v4, "skuHeadImg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->ICON_KEYS:[Ljava/lang/String;

    .line 20
    const-string v0, "awardIcon"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->FALLBACK_ICON_KEYS:[Ljava/lang/String;

    .line 31
    const-string v0, "bizInfo"

    const-string v1, "extendInfo"

    const-string v2, "taskDisplayConfig"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->NESTED_CONTAINERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized cache()Lio/github/lazyimmortal/sesame/util/ImageZipCache;
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache:Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/FileUtil;->MAIN_DIRECTORY_FILE:Ljava/io/File;

    const-string v4, "icon.zip"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;-><init>(Ljava/io/File;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache:Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    .line 93
    :cond_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache:Lio/github/lazyimmortal/sesame/util/ImageZipCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static downloadAndGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 108
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache()Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->loadOrDownload(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extractIcon([Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 23
    sget-object v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->ICON_KEYS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->pickIcon([Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v0, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->FALLBACK_ICON_KEYS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->pickIcon([Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isIconUrl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 83
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadCached(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 98
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache()Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static pickIcon([Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 34
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 38
    invoke-static {v4, p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->pickIconDirect(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_2
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p0, v3

    if-nez v4, :cond_3

    goto :goto_3

    .line 48
    :cond_3
    sget-object v5, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->NESTED_CONTAINERS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 49
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->pickIconDirect(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    return-object v9

    .line 53
    :cond_4
    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 56
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9, p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->pickIconDirect(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 57
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_5

    return-object v8

    :catch_0
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private static pickIconDirect(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 69
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 72
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 73
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static predownload(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->cache()Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->predownload(Ljava/util/Collection;)V

    return-void
.end method
