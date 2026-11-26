.class public Lio/github/lazyimmortal/sesame/data/RuntimeInfo;
.super Ljava/lang/Object;
.source "RuntimeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeInfo"

.field private static instance:Lio/github/lazyimmortal/sesame/data/RuntimeInfo;


# instance fields
.field private joAll:Lorg/json/JSONObject;

.field private joCurrent:Lorg/json/JSONObject;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->runtimeInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    .line 47
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 55
    :catch_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    :goto_1
    return-void
.end method

.method public static getInstance()Lio/github/lazyimmortal/sesame/data/RuntimeInfo;
    .locals 2

    .line 32
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->instance:Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    new-instance v0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->instance:Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    .line 35
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->instance:Lio/github/lazyimmortal/sesame/data/RuntimeInfo;

    return-object v0
.end method


# virtual methods
.method public get(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getLong(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;)Ljava/lang/Long;
    .locals 3

    .line 84
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->name()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;)Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo$RuntimeInfoKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joCurrent:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    sget-object p2, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->TAG:Ljava/lang/String;

    const-string v0, "put err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->save()V

    return-void
.end method

.method public save()V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->joAll:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/RuntimeInfo;->userId:Ljava/lang/String;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->runtimeInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method
