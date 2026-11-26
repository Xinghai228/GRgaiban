.class public Lcom/fasterxml/jackson/core/io/ContentReference;
.super Ljava/lang/Object;
.source "ContentReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_MAX_CONTENT_SNIPPET:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final REDACTED_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

.field protected static final UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _isContentTextual:Z

.field protected final _length:I

.field protected final _maxRawContentLength:I

.field protected final _offset:I

.field protected final transient _rawContent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->REDACTED_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, -0x1

    .line 106
    invoke-static {}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->defaults()Lcom/fasterxml/jackson/core/ErrorReportConfiguration;

    move-result-object v5

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->defaults()Lcom/fasterxml/jackson/core/ErrorReportConfiguration;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    .line 136
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 137
    iput p3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    .line 138
    iput p4, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    .line 139
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->getMaxRawContentLength()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_maxRawContentLength:I

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;Lcom/fasterxml/jackson/core/ErrorReportConfiguration;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-void
.end method

.method public static construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-static {}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->defaults()Lcom/fasterxml/jackson/core/ErrorReportConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;Lcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-object v0
.end method

.method public static construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    new-instance v6, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-static {}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->defaults()Lcom/fasterxml/jackson/core/ErrorReportConfiguration;

    move-result-object v5

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-object v6
.end method

.method public static construct(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 7

    .line 191
    new-instance v6, Lcom/fasterxml/jackson/core/io/ContentReference;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;IILcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-object v6
.end method

.method public static construct(ZLjava/lang/Object;Lcom/fasterxml/jackson/core/ErrorReportConfiguration;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 200
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;Lcom/fasterxml/jackson/core/ErrorReportConfiguration;)V

    return-object v0
.end method

.method public static rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public static rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 219
    instance-of v0, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p1

    .line 222
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static redacted()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 164
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->REDACTED_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method public static unknown()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 150
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method protected _append(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x22

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 419
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/core/io/ContentReference;->_appendEscaped(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method protected _appendEscaped(Ljava/lang/StringBuilder;I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x75

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, p2, 0xc

    and-int/lit8 v0, v0, 0xf

    .line 435
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, p2, 0x8

    and-int/lit8 v0, v0, 0xf

    .line 436
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, p2, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 437
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p2, 0xf

    .line 438
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected _truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;
    .locals 2

    .line 372
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 v0, 0x0

    .line 373
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 374
    aget p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    .line 375
    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected _truncate([B[II)Ljava/lang/String;
    .locals 2

    .line 386
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 v0, 0x0

    .line 387
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 388
    aget p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 389
    new-instance p3, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, v0, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p3
.end method

.method protected _truncate([C[II)Ljava/lang/String;
    .locals 2

    .line 379
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    const/4 v0, 0x0

    .line 380
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 381
    aget p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 382
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, v0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p3
.end method

.method protected _truncateOffsets([II)V
    .locals 3

    const/4 v0, 0x0

    .line 395
    aget v1, p1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-lt v1, p2, :cond_1

    move v1, p2

    .line 402
    :cond_1
    :goto_0
    aput v1, p1, v0

    const/4 v0, 0x1

    .line 405
    aget v2, p1, v0

    sub-int/2addr p2, v1

    if-ltz v2, :cond_2

    if-le v2, p2, :cond_3

    .line 408
    :cond_2
    aput p2, p1, v0

    :cond_3
    return-void
.end method

.method public appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    .line 305
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->REDACTED_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    if-ne p0, v0, :cond_0

    .line 309
    const-string v0, "REDACTED (`StreamReadFeature.INCLUDE_SOURCE_IN_LOCATION` disabled)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p1

    .line 316
    :cond_1
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 318
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 322
    :cond_3
    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 323
    const-string v2, "byte[]"

    goto :goto_2

    .line 324
    :cond_4
    instance-of v1, v0, [C

    if-eqz v1, :cond_5

    .line 325
    const-string v2, "char[]"

    :cond_5
    :goto_2
    const/16 v1, 0x28

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->hasTextualContent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->maxRawContentLength()I

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 339
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, " chars"

    if-eqz v3, :cond_6

    .line 340
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 341
    :cond_6
    instance-of v3, v0, [C

    if-eqz v3, :cond_7

    .line 342
    check-cast v0, [C

    check-cast v0, [C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([C[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 343
    :cond_7
    instance-of v3, v0, [B

    if-eqz v3, :cond_8

    .line 344
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([B[II)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v4, " bytes"

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 351
    aget v3, v2, v0

    if-le v3, v1, :cond_b

    .line 352
    const-string v3, "[truncated "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 357
    :cond_9
    instance-of v1, v0, [B

    if-eqz v1, :cond_b

    .line 358
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v1

    if-gez v1, :cond_a

    .line 361
    check-cast v0, [B

    check-cast v0, [B

    array-length v1, v0

    :cond_a
    const/16 v0, 0x5b

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes]"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    return-object p1
.end method

.method public buildSourceDescription()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return v0
.end method

.method public contentOffset()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 456
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v2, :cond_2

    return v1

    .line 457
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 460
    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    iget v3, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    if-eq v2, v3, :cond_3

    goto :goto_3

    .line 468
    :cond_3
    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 470
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    if-nez v2, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    if-nez p1, :cond_6

    return v1

    .line 476
    :cond_6
    instance-of v3, v2, Ljava/io/File;

    if-nez v3, :cond_9

    instance-of v3, v2, Ljava/net/URL;

    if-nez v3, :cond_9

    instance-of v3, v2, Ljava/net/URI;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    if-ne v2, p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 480
    :cond_9
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_3
    return v1
.end method

.method public getRawContent()Ljava/lang/Object;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    return-object v0
.end method

.method public hasTextualContent()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected maxRawContentLength()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_maxRawContentLength:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 247
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method
