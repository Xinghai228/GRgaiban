.class Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface$1;
.super Ljava/lang/Object;
.source "AnswerAIInterface.java"

# interfaces
.implements Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface$-CC;->getInstance()Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p1, -0x1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAnswerStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    const-string p1, ""

    return-object p1
.end method
