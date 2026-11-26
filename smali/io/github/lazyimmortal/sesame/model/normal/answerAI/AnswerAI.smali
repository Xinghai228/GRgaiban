.class public Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;
.super Lio/github/lazyimmortal/sesame/data/Model;
.source "AnswerAI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI$AIType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnswerAI"

.field private static answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

.field private static enable:Ljava/lang/Boolean;


# instance fields
.field private final aiType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

.field private final getTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;

.field private final setGeminiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

.field private final setTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 15
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/data/Model;-><init>()V

    .line 33
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI$AIType;->nickNames:[Ljava/lang/String;

    const-string v3, "useGeminiAI"

    const-string v4, "AI\u7c7b\u578b"

    invoke-direct {v0, v3, v4, v1, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->aiType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    .line 35
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;

    const-string v1, "\u901a\u4e49\u5343\u95ee | \u83b7\u53d6\u4ee4\u724c"

    const-string v2, "https://help.aliyun.com/zh/dashscope/developer-reference/acquisition-and-configuration-of-api-key"

    const-string v3, "getTongyiAIToken"

    invoke-direct {v0, v3, v1, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->getTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;

    .line 37
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    const-string v1, "setTongyiAIToken"

    const-string v2, "\u901a\u4e49\u5343\u95ee | \u8bbe\u7f6e\u4ee4\u724c"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    .line 39
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    const-string v1, "useGeminiAIToken"

    const-string v2, "GeminiAI | \u8bbe\u7f6e\u4ee4\u724c"

    invoke-direct {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setGeminiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    return-void
.end method

.method public static getAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "AI\ud83e\udde0\u7b54\u9898\uff0c\u95ee\u9898\uff1a["

    const-string v1, "\u5f00\u59cb\u7b54\u9898\uff0c\u95ee\u9898\uff1a["

    .line 75
    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->enable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "]"

    if-eqz v2, :cond_0

    .line 76
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    invoke-interface {v0, p0}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;->getAnswerStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 82
    sget-object v0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getAnswer(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "\u667a\u80fd\u56de\u7b54\ud83e\udde0["

    const-string v1, "\u666e\u901a\u56de\u7b54\ud83e\udd16["

    const-string v2, "\u77e5\u8bc6\u95ee\u7b54\ud83e\udde0\u9898\u76ee["

    .line 95
    const-string v3, ""

    .line 97
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]#\u9009\u9879"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->enable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "]"

    if-eqz v2, :cond_0

    .line 99
    :try_start_1
    sget-object v1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    invoke-interface {v1, p0, p1}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;->getAnswer(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v3, p1

    goto :goto_2

    .line 105
    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 111
    :goto_1
    sget-object p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_1
    :goto_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 114
    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u68c0\u6d4b\u5373\u5c06\u63d0\u4ea4\u9519\u8bef\u7684\u56de\u7b54\uff0c\u5df2\u81ea\u52a8\u7ea0\u6b63!\u65b0\u56de\u7b54:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    move-object v3, p0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public boot(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    sput-object p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->enable:Ljava/lang/Boolean;

    .line 54
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->aiType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 62
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface$-CC;->getInstance()Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    move-result-object p1

    sput-object p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/GeminiAI;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setGeminiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/GeminiAI;-><init>(Ljava/lang/String;)V

    sput-object p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/TongyiAI;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lio/github/lazyimmortal/sesame/model/normal/answerAI/TongyiAI;-><init>(Ljava/lang/String;)V

    sput-object p1, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->answerAIInterface:Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAIInterface;

    :goto_0
    return-void
.end method

.method public getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
    .locals 2

    .line 43
    new-instance v0, Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;-><init>()V

    .line 44
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->aiType:Lio/github/lazyimmortal/sesame/data/modelFieldExt/ChoiceModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 45
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->getTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$UrlTextModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 46
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setTongyiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    .line 47
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;->setGeminiAIToken:Lio/github/lazyimmortal/sesame/data/modelFieldExt/StringModelField;

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V

    return-object v0
.end method

.method public getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
    .locals 1

    .line 28
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelGroup;->OTHER:Lio/github/lazyimmortal/sesame/data/ModelGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "AI\u7b54"

    return-object v0
.end method
