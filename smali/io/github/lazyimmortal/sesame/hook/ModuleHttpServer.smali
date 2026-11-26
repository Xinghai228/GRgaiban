.class public Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "ModuleHttpServer.java"


# instance fields
.field private final routes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/hook/HttpHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f90

    .line 23
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 40
    const-string v0, "0.0.0.0"

    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 16
    const-string p1, "ModuleHttpServer"

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->tag:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->routes:Ljava/util/Map;

    .line 42
    new-instance p1, Lio/github/lazyimmortal/sesame/hook/DebugHandler;

    invoke-direct {p1, p2}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;-><init>(Ljava/lang/String;)V

    const-string p2, "\u8c03\u8bd5\u63a5\u53e3"

    const-string v0, "/debugHandler"

    invoke-direct {p0, v0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;

    invoke-direct {p1}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHandler;-><init>()V

    const-string p2, "\u83b7\u53d6\u652f\u4ed8\u5b9d\u5c0f\u7a0b\u5e8f\u6807\u8bb0"

    const-string v0, "/getAlipayMiniMark"

    invoke-direct {p0, v0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lio/github/lazyimmortal/sesame/hook/AuthCodeHandler;

    invoke-direct {p1}, Lio/github/lazyimmortal/sesame/hook/AuthCodeHandler;-><init>()V

    const-string p2, "\u83b7\u53d6OAuth2\u6388\u6743\u7801"

    const-string v0, "/getAuthCode"

    invoke-direct {p0, v0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;Ljava/lang/String;)V

    return-void
.end method

.method private getPostBodySafe(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Ljava/lang/String;
    .locals 4

    .line 107
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 114
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    .line 122
    const-string p1, ""

    return-object p1

    .line 126
    :cond_1
    :try_start_1
    new-array v0, v0, [B

    .line 127
    new-instance v2, Ljava/io/DataInputStream;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 131
    new-instance p1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    const-string v0, "Error reading body fully"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 133
    const-string v0, "Failed to read body"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_2
    move-exception p1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid content-length value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private notFound()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 146
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;)V
    .locals 1

    .line 54
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;Ljava/lang/String;)V

    return-void
.end method

.method private register(Ljava/lang/String;Lio/github/lazyimmortal/sesame/hook/HttpHandler;Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registering handler : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 65
    iget-object p3, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->routes:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 4

    .line 74
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->routes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/hook/HttpHandler;

    if-nez v1, :cond_0

    .line 78
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->notFound()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    .line 85
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v2, v3, :cond_2

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->getPostBodySafe(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_1
    invoke-interface {v1, p1, v2}, Lio/github/lazyimmortal/sesame/hook/HttpHandler;->handle(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server Error on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal Server Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "Unknown error"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    invoke-static {v0, v1, p1}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
