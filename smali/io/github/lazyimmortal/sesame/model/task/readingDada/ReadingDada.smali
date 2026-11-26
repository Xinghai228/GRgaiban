.class public Lio/github/lazyimmortal/sesame/model/task/readingDada/ReadingDada;
.super Ljava/lang/Object;
.source "ReadingDada.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadingDada"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answerQuestion(Lorg/json/JSONObject;)Z
    .locals 9

    .line 24
    const-string v0, "resultCode"

    const-string v1, "200"

    const-string v2, "outBizId%3D"

    const-string v3, "%26"

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "taskJumpUrl"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    const-string v5, "targetUrl"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    :cond_0
    const-string p0, "activityId%3D"

    invoke-virtual {v5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x1

    aget-object p0, p0, v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v4

    .line 30
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    goto :goto_0

    .line 33
    :cond_1
    const-string v2, ""

    .line 35
    :goto_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/readingDada/ReadingDadaRpcCall;->getQuestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 38
    const-string v3, "options"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 39
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->getAnswer(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 40
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 41
    :cond_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 43
    :cond_3
    const-string v3, "questionId"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v7}, Lio/github/lazyimmortal/sesame/model/task/readingDada/ReadingDadaRpcCall;->submitAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 46
    const-string p0, "\u7b54\u9898\u5b8c\u6210"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return v6

    .line 49
    :cond_4
    const-string p0, "\u7b54\u9898\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_5
    const-string p0, "\u83b7\u53d6\u95ee\u9898\u5931\u8d25"

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 55
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/readingDada/ReadingDada;->TAG:Ljava/lang/String;

    const-string v1, "answerQuestion err:"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v4
.end method


# virtual methods
.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 19
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->STALL:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method
