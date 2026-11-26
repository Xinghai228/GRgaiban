.class public Lio/github/lazyimmortal/sesame/entity/AreaCode;
.super Lio/github/lazyimmortal/sesame/entity/IdAndName;
.source "AreaCode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AreaCode"

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AreaCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/entity/IdAndName;-><init>()V

    .line 18
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/AreaCode;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/entity/AreaCode;->name:Ljava/lang/String;

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/AreaCode;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AreaCode;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getCityCodeFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    const-string v0, "[{\"cityCode\":\"320100\",\"cityName\":\"\u5357\u4eac\u5e02\"},{\"cityCode\":\"330100\",\"cityName\":\"\u676d\u5dde\u5e02\"},{\"cityCode\":\"350100\",\"cityName\":\"\u798f\u5dde\u5e02\"},{\"cityCode\":\"370100\",\"cityName\":\"\u6d4e\u5357\u5e02\"},{\"cityCode\":\"430100\",\"cityName\":\"\u957f\u6c99\u5e02\"},{\"cityCode\":\"440100\",\"cityName\":\"\u5e7f\u5dde\u5e02\"}]"

    .line 38
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/entity/AreaCode;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 46
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    sget-object v3, Lio/github/lazyimmortal/sesame/entity/AreaCode;->list:Ljava/util/List;

    new-instance v4, Lio/github/lazyimmortal/sesame/entity/AreaCode;

    const-string v5, "cityCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cityName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lio/github/lazyimmortal/sesame/entity/AreaCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 51
    sget-object v1, Lio/github/lazyimmortal/sesame/entity/AreaCode;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/entity/AreaCode;->list:Ljava/util/List;

    return-object v0
.end method
