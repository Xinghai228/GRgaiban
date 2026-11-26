.class Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;
.super Ljava/lang/Object;
.source "NewRpcBridge.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->newAsyncRequest(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;

.field final synthetic val$id:I

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;Lio/github/lazyimmortal/sesame/entity/RpcEntity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->this$0:Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    iput p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$id:I

    iput-object p4, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string p1, "new rpc response | id: "

    .line 239
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "sendJSONResponse"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 241
    :try_start_0
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 242
    :try_start_1
    aget-object p3, p3, v0

    .line 243
    const-string v2, "toJSONString"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p3, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {v3, p3, v2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setResponseObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    const-string v2, "containsKey"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "success"

    aput-object v4, v3, v0

    invoke-static {p3, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "containsKey"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "isSuccess"

    aput-object v3, v1, v0

    .line 246
    invoke-static {p3, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    .line 247
    iget-object p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p3}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 249
    iget-object p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p3}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->access$000(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 250
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | method: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " args: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | data: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestThread()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 257
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 259
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "new rpc response | id: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " | method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$method:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " err:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 262
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    monitor-enter p1

    .line 263
    :try_start_3
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestThread()Ljava/lang/Thread;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 265
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$2;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 267
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
