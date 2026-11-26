.class public final Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;
.super Ljava/lang/Object;
.source "MiniGameTaskTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final every:I

.field public final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->code:Ljava/lang/String;

    .line 202
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->every:I

    .line 203
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 6

    .line 208
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->label:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
