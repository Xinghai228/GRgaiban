.class public Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;
.super Ljava/lang/Object;
.source "ModuleHttpServerManager.java"


# static fields
.field private static final INSTANCE:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;

.field private static final TAG:Ljava/lang/String; = "ModuleHttpServerManager"


# instance fields
.field private server:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->INSTANCE:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;
    .locals 1

    .line 29
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->INSTANCE:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;

    return-object v0
.end method

.method private static isAddressInUse(Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 68
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private startWithRetry(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 81
    :try_start_0
    new-instance v0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;

    invoke-direct {v0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x1388

    .line 83
    invoke-virtual {v0, v3, v1}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->start(IZ)V

    .line 84
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->server:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u542f\u52a8\ud83d\ude80HTTP: http://127.0.0.1:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6807\u8bb0\u4ee4\u724c\ud83d\udd11Token: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x3e8

    .line 93
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    goto :goto_3

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p1, "HTTP \u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v0
.end method


# virtual methods
.method public declared-synchronized startIfNeeded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "startIfNeeded: \u7aef\u53e3 "

    monitor-enter p0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 43
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object p3, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->server:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->isAlive()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 49
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->stop()V

    .line 55
    invoke-direct {p0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->startWithRetry(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 58
    :try_start_2
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->isAddressInUse(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 59
    const-string p2, "ModuleHttpServerManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5df2\u88ab\u5360\u7528\uff0c\u89c6\u4e3a\u5df2\u6709HTTP\u670d\u52a1\u5b9e\u4f8b\u5728\u8fd0\u884c\uff0c\u8df3\u8fc7\u542f\u52a8"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string p1, "HTTP \u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 44
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->server:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;->stop()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ModuleHttpServerManager;->server:Lio/github/lazyimmortal/sesame/hook/ModuleHttpServer;

    .line 112
    const-string v0, "HTTP \u670d\u52a1\u5df2\u505c\u6b62"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 115
    :try_start_1
    const-string v1, "\u505c\u6b62\u670d\u52a1\u5f02\u5e38"

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
