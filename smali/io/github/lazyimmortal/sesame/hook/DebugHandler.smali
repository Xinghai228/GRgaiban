.class public Lio/github/lazyimmortal/sesame/hook/DebugHandler;
.super Lio/github/lazyimmortal/sesame/hook/BaseHandler;
.source "DebugHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/BaseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPost(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2

    .line 29
    const-string p1, "Unknown error"

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lio/github/lazyimmortal/sesame/hook/RpcRequest;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/github/lazyimmortal/sesame/hook/RpcRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2, v0}, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->getRequestDataString(Lcom/fasterxml/jackson/databind/ObjectMapper;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/hook/RpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "application/json"

    invoke-static {v0, v1, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 56
    :cond_3
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "status"

    const-string v1, "empty"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {p0, v0, p2}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->json(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/Object;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RPC Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->badRequest(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 46
    :cond_5
    :goto_1
    const-string p1, "Fields cannot be empty"

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->badRequest(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid JSON: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->badRequest(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 30
    :cond_7
    :goto_2
    const-string p1, "Empty body"

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/hook/DebugHandler;->badRequest(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
