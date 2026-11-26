.class Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;
.super Ljava/lang/Object;
.source "NewRpcBridge.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->requestObject(Lio/github/lazyimmortal/sesame/entity/RpcEntity;II)Lio/github/lazyimmortal/sesame/entity/RpcEntity;
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

    .line 136
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->this$0:Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    iput p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$id:I

    iput-object p4, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 139
    const-string p1, "containsKey"

    const-string v0, " | method: "

    .line 0
    const-string v1, "new rpc response | id: "

    .line 139
    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "sendJSONResponse"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 141
    :try_start_0
    aget-object p3, p3, p2

    .line 142
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    const-string v4, "toJSONString"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, p3, v4}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setResponseObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "success"

    aput-object v4, v2, p2

    invoke-static {p3, p1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "isSuccess"

    aput-object v3, v2, p2

    .line 144
    invoke-static {p3, p1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 147
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge;->access$000(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " args: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getRequestData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | data: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->getResponseString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$rpcEntity:Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/entity/RpcEntity;->setError()V

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/github/lazyimmortal/sesame/rpc/bridge/NewRpcBridge$1;->val$method:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " err:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
