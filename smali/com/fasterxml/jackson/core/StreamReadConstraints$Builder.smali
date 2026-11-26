.class public final Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
.super Ljava/lang/Object;
.source "StreamReadConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/StreamReadConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxDocLen:J

.field private maxNameLen:I

.field private maxNestingDepth:I

.field private maxNumLen:I

.field private maxStringLen:I

.field private maxTokenCount:J


# direct methods
.method constructor <init>()V
    .locals 9

    const v7, 0x1312d00

    const v8, 0xc350

    const/16 v1, 0x3e8

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x3e8

    move-object v0, p0

    .line 259
    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;-><init>(IJJIII)V

    return-void
.end method

.method constructor <init>(IJJIII)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNestingDepth:I

    .line 266
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxDocLen:J

    .line 267
    iput-wide p4, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxTokenCount:J

    .line 268
    iput p6, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNumLen:I

    .line 269
    iput p7, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxStringLen:I

    .line 270
    iput p8, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNameLen:I

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/core/StreamReadConstraints;)V
    .locals 2

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget v0, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxNestingDepth:I

    iput v0, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNestingDepth:I

    .line 275
    iget-wide v0, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxDocLen:J

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxDocLen:J

    .line 276
    iget-wide v0, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxTokenCount:J

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxTokenCount:J

    .line 277
    iget v0, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxNumLen:I

    iput v0, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNumLen:I

    .line 278
    iget v0, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxStringLen:I

    iput v0, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxStringLen:I

    .line 279
    iget p1, p1, Lcom/fasterxml/jackson/core/StreamReadConstraints;->_maxNameLen:I

    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNameLen:I

    return-void
.end method


# virtual methods
.method public build()Lcom/fasterxml/jackson/core/StreamReadConstraints;
    .locals 10

    .line 283
    new-instance v9, Lcom/fasterxml/jackson/core/StreamReadConstraints;

    iget v1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNestingDepth:I

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxDocLen:J

    iget v4, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNumLen:I

    iget v5, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxStringLen:I

    iget v6, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNameLen:I

    iget-wide v7, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxTokenCount:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/StreamReadConstraints;-><init>(IJIIIJ)V

    return-object v9
.end method

.method public maxDocumentLength(J)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, -0x1

    .line 166
    :cond_0
    iput-wide p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxDocLen:J

    return-object p0
.end method

.method public maxNameLength(I)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 254
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNameLen:I

    return-object p0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set maxNameLen to a negative value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxNestingDepth(I)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 144
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNestingDepth:I

    return-object p0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set maxNestingDepth to a negative value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxNumberLength(I)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 208
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxNumLen:I

    return-object p0

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set maxNumberLength to a negative value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxStringLength(I)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 233
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxStringLen:I

    return-object p0

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set maxStringLen to a negative value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxTokenCount(J)Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, -0x1

    .line 191
    :cond_0
    iput-wide p1, p0, Lcom/fasterxml/jackson/core/StreamReadConstraints$Builder;->maxTokenCount:J

    return-object p0
.end method
