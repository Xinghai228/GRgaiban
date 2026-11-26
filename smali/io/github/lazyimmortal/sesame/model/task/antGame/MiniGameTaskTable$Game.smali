.class public final Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;
.super Ljava/lang/Object;
.source "MiniGameTaskTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Game"
.end annotation


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final appId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sdk:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->appId:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->name:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->version:Ljava/lang/String;

    .line 235
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->sdk:Ljava/lang/String;

    .line 236
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->actions:Ljava/util/List;

    .line 237
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->params:Ljava/util/Map;

    return-void
.end method
