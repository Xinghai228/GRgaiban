.class public abstract Lio/github/lazyimmortal/sesame/hook/BaseHandler;
.super Ljava/lang/Object;
.source "BaseHandler.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/hook/HttpHandler;


# instance fields
.field protected final mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final secretToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->secretToken:Ljava/lang/String;

    .line 24
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/ServerCommon;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private verifyToken(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z
    .locals 2

    .line 67
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->secretToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "authorization"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bearer "

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->secretToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected badRequest(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v1, "status"

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public final handle(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2

    .line 34
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->verifyToken(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->unauthorized()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v0

    .line 40
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v0, v1, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->onGet(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v0, v1, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->onPost(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 45
    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->methodNotAllowed()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "Unknown error"

    .line 51
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v0, "status"

    const-string v1, "error"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "message"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 119
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    const-string p2, "{\"status\":\"error\",\"message\":\"Failed to serialize response\"}"

    .line 131
    :goto_0
    const-string v0, "application/json"

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected methodNotAllowed()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v1, "status"

    const-string v2, "method_not_allowed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, v1, v0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected notFound()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    const-string v1, "status"

    const-string v2, "not_found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, v1, v0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected ok(Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 140
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, v0, p1}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected onGet(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->methodNotAllowed()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected onPost(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->methodNotAllowed()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method protected unauthorized()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string v1, "status"

    const-string v2, "unauthorized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, v1, v0}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
