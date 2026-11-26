.class public Lio/github/lazyimmortal/sesame/model/extensions/TestRpc;
.super Ljava/lang/Object;
.source "TestRpc.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestRpc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;-><init>()V

    .line 23
    invoke-virtual {v0, p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc$1;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
