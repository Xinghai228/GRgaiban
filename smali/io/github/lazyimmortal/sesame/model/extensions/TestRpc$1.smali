.class Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;
.super Ljava/lang/Thread;
.source "TestRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/model/extensions/TestRpc;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field broadcastData:Ljava/lang/String;

.field broadcastFun:Ljava/lang/String;

.field testType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 21
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->testType:Ljava/lang/String;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->broadcastFun:Ljava/lang/String;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->broadcastData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/extensions/ExtensionsHandle;->handleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->broadcastFun:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->broadcastData:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->testType:Ljava/lang/String;

    return-object p0
.end method
