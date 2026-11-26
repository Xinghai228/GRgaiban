.class public interface abstract Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI$AIType;
.super Ljava/lang/Object;
.source "AnswerAI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AIType"
.end annotation


# static fields
.field public static final GEMINI:I = 0x1

.field public static final TONGYI:I

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    const-string v0, "\u901a\u4e49\u5343\u95ee"

    const-string v1, "GEMINI"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/normal/answerAI/AnswerAI$AIType;->nickNames:[Ljava/lang/String;

    return-void
.end method
