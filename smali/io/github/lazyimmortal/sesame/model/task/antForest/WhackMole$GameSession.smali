.class public Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;
.super Ljava/lang/Object;
.source "WhackMole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameSession"
.end annotation


# instance fields
.field private final roundNumber:I

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->token:Ljava/lang/String;

    .line 59
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->roundNumber:I

    return-void
.end method


# virtual methods
.method public getRoundNumber()I
    .locals 1

    .line 67
    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->roundNumber:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$GameSession;->token:Ljava/lang/String;

    return-object v0
.end method
