.class abstract Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;
.super Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;
.source "AbstractJavaFloatingPointBitsFromCharSequence.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;-><init>()V

    return-void
.end method

.method private parseDecFloatLiteral(Ljava/lang/CharSequence;IIIZZ)J
    .locals 20

    move-object/from16 v1, p1

    move/from16 v3, p4

    const/4 v0, -0x1

    move/from16 v6, p2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0xa

    const/16 v13, 0x2e

    const/16 v14, 0xa

    const/4 v15, 0x1

    if-ge v6, v3, :cond_2

    .line 79
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v2, v9, -0x30

    int-to-char v2, v2

    if-ge v2, v14, :cond_0

    mul-long v7, v7, v11

    int-to-long v11, v2

    add-long/2addr v7, v11

    goto :goto_2

    :cond_0
    if-ne v9, v13, :cond_2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    or-int/2addr v10, v15

    move v0, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    sub-int v0, v6, p2

    move v2, v0

    move v0, v6

    const/16 v16, 0x0

    goto :goto_3

    :cond_3
    sub-int v2, v6, p2

    sub-int/2addr v2, v15

    sub-int v16, v0, v6

    add-int/lit8 v16, v16, 0x1

    :goto_3
    or-int/lit8 v4, v9, 0x20

    const/16 v5, 0x65

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v6, 0x1

    .line 116
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    const/16 v9, 0x2d

    if-ne v5, v9, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    if-nez v17, :cond_5

    const/16 v9, 0x2b

    if-ne v5, v9, :cond_6

    :cond_5
    add-int/lit8 v4, v6, 0x2

    .line 119
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    :cond_6
    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    if-lt v5, v14, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    or-int v18, v10, v9

    const/4 v9, 0x0

    :goto_6
    const/16 v10, 0x400

    if-ge v9, v10, :cond_8

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v5

    :cond_8
    add-int/2addr v4, v15

    .line 128
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    add-int/lit8 v10, v5, -0x30

    int-to-char v10, v10

    if-lt v10, v14, :cond_a

    if-eqz v17, :cond_9

    neg-int v9, v9

    :cond_9
    add-int v16, v16, v9

    move/from16 v10, v18

    move/from16 v19, v9

    move v9, v5

    move/from16 v5, v19

    goto :goto_7

    :cond_a
    move v5, v10

    goto :goto_6

    :cond_b
    move v4, v6

    const/4 v5, 0x0

    :goto_7
    or-int/lit8 v9, v9, 0x22

    const/16 v14, 0x66

    if-ne v9, v14, :cond_c

    add-int/lit8 v4, v4, 0x1

    .line 146
    :cond_c
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->skipWhitespace(Ljava/lang/CharSequence;II)I

    move-result v4

    if-nez v10, :cond_12

    if-lt v4, v3, :cond_12

    if-nez p6, :cond_d

    if-eqz v2, :cond_12

    :cond_d
    const/16 v4, 0x13

    if-le v2, v4, :cond_11

    move/from16 v2, p2

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_8
    if-ge v2, v6, :cond_f

    .line 160
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    const-wide v13, 0xde0b6b3a7640000L

    .line 164
    invoke-static {v7, v8, v13, v14}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v13

    if-gez v13, :cond_f

    mul-long v7, v7, v11

    int-to-long v13, v9

    add-long/2addr v7, v13

    const-wide/16 v13, 0x30

    sub-long/2addr v7, v13

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0x2e

    goto :goto_8

    :cond_f
    if-ge v2, v6, :cond_10

    goto :goto_a

    :cond_10
    const/4 v15, 0x0

    :goto_a
    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    move v9, v0

    move-wide v5, v7

    move v8, v15

    goto :goto_b

    :cond_11
    move-wide v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v7, v16

    .line 177
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->valueOfFloatLiteral(Ljava/lang/CharSequence;IIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_12
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHexFloatLiteral(Ljava/lang/CharSequence;IIIZ)J
    .locals 20

    move-object/from16 v1, p1

    move/from16 v3, p4

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    move/from16 v6, p2

    move-wide v7, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v6, v3, :cond_3

    .line 275
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 277
    invoke-static {v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->lookupHex(C)I

    move-result v13

    if-ltz v13, :cond_0

    shl-long/2addr v7, v11

    int-to-long v13, v13

    or-long/2addr v7, v13

    goto :goto_3

    :cond_0
    const/4 v14, -0x4

    if-ne v13, v14, :cond_3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v10, v2

    move v2, v6

    :goto_2
    add-int/lit8 v11, v3, -0x8

    if-ge v2, v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    .line 284
    invoke-static {v1, v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->tryToParseEightHexDigits(Ljava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-ltz v11, :cond_2

    const/16 v11, 0x20

    shl-long/2addr v7, v11

    add-long/2addr v7, v13

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_2
    move/from16 v19, v6

    move v6, v2

    move/from16 v2, v19

    :goto_3
    add-int/2addr v6, v12

    goto :goto_0

    :cond_3
    const/16 v13, 0x400

    if-gez v2, :cond_4

    sub-int v2, v6, p2

    move v14, v2

    move v2, v6

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    sub-int v14, v6, p2

    sub-int/2addr v14, v12

    sub-int v15, v2, v6

    add-int/2addr v15, v12

    .line 302
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x4

    :goto_4
    or-int/lit8 v0, v9, 0x20

    const/16 v4, 0x70

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    add-int/lit8 v4, v6, 0x1

    .line 310
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    const/16 v9, 0x2d

    if-ne v5, v9, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    :goto_6
    if-nez v17, :cond_7

    const/16 v9, 0x2b

    if-ne v5, v9, :cond_8

    :cond_7
    add-int/lit8 v4, v6, 0x2

    .line 313
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    :cond_8
    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    const/16 v9, 0xa

    if-lt v5, v9, :cond_9

    const/16 v18, 0x1

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    :goto_7
    or-int v18, v10, v18

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v13, :cond_a

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v5

    :cond_a
    add-int/2addr v4, v12

    .line 322
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v5

    add-int/lit8 v12, v5, -0x30

    int-to-char v12, v12

    if-lt v12, v9, :cond_c

    if-eqz v17, :cond_b

    neg-int v10, v10

    :cond_b
    add-int/2addr v15, v10

    move v9, v5

    move v5, v10

    move/from16 v10, v18

    goto :goto_9

    :cond_c
    move v5, v12

    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    move v4, v6

    const/4 v5, 0x0

    :goto_9
    or-int/lit8 v9, v9, 0x22

    const/16 v12, 0x66

    if-ne v9, v12, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 340
    :cond_e
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->skipWhitespace(Ljava/lang/CharSequence;II)I

    move-result v4

    if-nez v10, :cond_13

    if-lt v4, v3, :cond_13

    if-eqz v14, :cond_13

    if-eqz v0, :cond_13

    const/16 v0, 0x10

    if-le v14, v0, :cond_12

    move/from16 v0, p2

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_a
    if-ge v0, v6, :cond_10

    .line 354
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 356
    invoke-static {v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->lookupHex(C)I

    move-result v9

    if-ltz v9, :cond_f

    const-wide v12, 0xde0b6b3a7640000L

    .line 358
    invoke-static {v7, v8, v12, v13}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v10

    if-gez v10, :cond_10

    shl-long/2addr v7, v11

    int-to-long v9, v9

    or-long/2addr v7, v9

    goto :goto_b

    :cond_f
    add-int/lit8 v4, v4, 0x1

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    if-ge v0, v6, :cond_11

    const/16 v16, 0x1

    goto :goto_c

    :cond_11
    const/16 v16, 0x0

    :goto_c
    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_d
    sub-int/2addr v2, v4

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v9, v2, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-wide v5, v7

    move v7, v15

    move/from16 v8, v16

    .line 372
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->valueOfHexLiteral(Ljava/lang/CharSequence;IIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 344
    :cond_13
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNaNOrInfinity(Ljava/lang/CharSequence;IIZ)J
    .locals 4

    .line 378
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    add-int/lit8 p4, p2, 0x2

    if-ge p4, p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 381
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_2

    .line 382
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p4, v1, :cond_2

    add-int/lit8 p2, p2, 0x3

    .line 384
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->skipWhitespace(Ljava/lang/CharSequence;II)I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->nan()J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v0, p2, 0x7

    if-ge v0, p3, :cond_2

    .line 391
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 392
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x2

    .line 393
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x66

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, p2, 0x3

    .line 394
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, p2, 0x4

    .line 395
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x5

    .line 396
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, p2, 0x6

    .line 397
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    .line 398
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x79

    if-ne v0, v1, :cond_2

    add-int/lit8 p2, p2, 0x8

    .line 400
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->skipWhitespace(Ljava/lang/CharSequence;II)I

    move-result p1

    if-ne p1, p3, :cond_2

    if-eqz p4, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->negativeInfinity()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->positiveInfinity()J

    move-result-wide p1

    :goto_0
    return-wide p1

    .line 406
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "illegal syntax"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static skipWhitespace(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 28
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method abstract nan()J
.end method

.method abstract negativeInfinity()J
.end method

.method public final parseFloatingPointLiteral(Ljava/lang/CharSequence;II)J
    .locals 8

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->checkBounds(III)I

    move-result v5

    .line 204
    invoke-static {p1, p2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->skipWhitespace(Ljava/lang/CharSequence;II)I

    move-result p3

    .line 205
    const-string v0, "illegal syntax"

    if-eq p3, v5, :cond_8

    .line 208
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 214
    invoke-static {p1, p3, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/16 v0, 0x49

    if-lt v1, v0, :cond_3

    .line 223
    invoke-direct {p0, p1, p3, v5, v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->parseNaNOrInfinity(Ljava/lang/CharSequence;IIZ)J

    move-result-wide p1

    return-wide p1

    :cond_3
    const/16 v0, 0x30

    if-ne v1, v0, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    add-int/lit8 v0, p3, 0x1

    .line 230
    invoke-static {p1, v0, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->charAt(Ljava/lang/CharSequence;II)C

    move-result v1

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x78

    if-ne v1, v2, :cond_5

    add-int/lit8 v3, p3, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 232
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->parseHexFloatLiteral(Ljava/lang/CharSequence;IIIZ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    move v3, v0

    goto :goto_2

    :cond_6
    move v3, p3

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 236
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharSequence;->parseDecFloatLiteral(Ljava/lang/CharSequence;IIIZZ)J

    move-result-wide p1

    return-wide p1

    .line 216
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract positiveInfinity()J
.end method

.method abstract valueOfFloatLiteral(Ljava/lang/CharSequence;IIZJIZI)J
.end method

.method abstract valueOfHexLiteral(Ljava/lang/CharSequence;IIZJIZI)J
.end method
