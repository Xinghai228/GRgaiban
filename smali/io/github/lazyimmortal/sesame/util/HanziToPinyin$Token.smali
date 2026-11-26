.class public Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;->type:I

    .line 237
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    return-void
.end method
