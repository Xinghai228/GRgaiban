.class public Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;
.super Ljava/lang/Object;
.source "AlipayMiniMarkHandler.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/hook/HttpHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 85
    const-string v0, "application/json"

    invoke-static {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private handleGetRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4

    .line 41
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object p1

    .line 42
    const-string v0, "appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    const-string v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    :try_start_0
    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->getAlipayMiniMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "{\"success\":true,\"alipayMiniMark\":\"%s\"}"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 61
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0, v0, p1}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "{\"error\":\"\u83b7\u53d6\u652f\u4ed8\u5b9d\u5c0f\u7a0b\u5e8f\u6807\u8bb0\u5931\u8d25\"}"

    invoke-direct {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "\u672a\u77e5\u9519\u8bef"

    .line 71
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "{\"error\":\"\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef: %s\"}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p0, v0, p1}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 47
    :cond_3
    :goto_1
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "{\"error\":\"\u53c2\u6570\u7f3a\u5931\uff0c\u8bf7\u63d0\u4f9bappid\u548cversion\u53c2\u6570\"}"

    invoke-direct {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handle(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 25
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object p2

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne p2, v0, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->handleGetRequest(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string p2, "{\"error\":\"Method not allowed\"}"

    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;->createResponse(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
