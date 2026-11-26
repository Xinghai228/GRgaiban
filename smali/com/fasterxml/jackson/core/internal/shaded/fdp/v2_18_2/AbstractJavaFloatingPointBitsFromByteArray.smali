.class abstract Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;
.super Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;
.source "AbstractJavaFloatingPointBitsFromByteArray.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;-><init>()V

    return-void
.end method

.method private parseDecFloatLiteral([BIIIZZ)J
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

    if-ge v6, v3, :cond_4

    .line 79
    aget-byte v9, v1, v6

    add-int/lit8 v2, v9, -0x30

    int-to-char v2, v2

    if-ge v2, v14, :cond_0

    mul-long v7, v7, v11

    int-to-long v11, v2

    add-long/2addr v7, v11

    goto :goto_4

    :cond_0
    if-ne v9, v13, :cond_4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v10, v0

    move v0, v6

    :goto_2
    add-int/lit8 v2, v3, -0x4

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    .line 88
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->tryToParseFourDigits([BI)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 v11, 0x2710

    mul-long v7, v7, v11

    int-to-long v11, v2

    add-long/2addr v7, v11

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    move/from16 v19, v6

    move v6, v0

    move/from16 v0, v19

    :goto_4
    add-int/2addr v6, v15

    goto :goto_0

    :cond_4
    if-gez v0, :cond_5

    sub-int v0, v6, p2

    move v2, v0

    move v0, v6

    const/16 v16, 0x0

    goto :goto_5

    :cond_5
    sub-int v2, v6, p2

    sub-int/2addr v2, v15

    sub-int v16, v0, v6

    add-int/lit8 v16, v16, 0x1

    :goto_5
    or-int/lit8 v4, v9, 0x20

    const/16 v5, 0x65

    if-ne v4, v5, :cond_d

    add-int/lit8 v4, v6, 0x1

    .line 115
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

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

    .line 118
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v5

    :cond_8
    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    if-lt v5, v14, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    or-int v18, v10, v9

    const/4 v9, 0x0

    :goto_8
    const/16 v10, 0x400

    if-ge v9, v10, :cond_a

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v5

    :cond_a
    add-int/2addr v4, v15

    .line 127
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v5

    add-int/lit8 v10, v5, -0x30

    int-to-char v10, v10

    if-lt v10, v14, :cond_c

    if-eqz v17, :cond_b

    neg-int v9, v9

    :cond_b
    add-int v16, v16, v9

    move/from16 v10, v18

    move/from16 v19, v9

    move v9, v5

    move/from16 v5, v19

    goto :goto_9

    :cond_c
    move v5, v10

    goto :goto_8

    :cond_d
    move v4, v6

    const/4 v5, 0x0

    :goto_9
    or-int/lit8 v9, v9, 0x22

    const/16 v14, 0x66

    if-ne v9, v14, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 145
    :cond_e
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->skipWhitespace([BII)I

    move-result v4

    if-nez v10, :cond_14

    if-lt v4, v3, :cond_14

    if-nez p6, :cond_f

    if-eqz v2, :cond_14

    :cond_f
    const/16 v4, 0x13

    if-le v2, v4, :cond_13

    move/from16 v2, p2

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_a
    if-ge v2, v6, :cond_11

    .line 159
    aget-byte v9, v1, v2

    if-ne v9, v13, :cond_10

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    const-wide v13, 0xde0b6b3a7640000L

    .line 163
    invoke-static {v7, v8, v13, v14}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v13

    if-gez v13, :cond_11

    mul-long v7, v7, v11

    int-to-long v13, v9

    add-long/2addr v7, v13

    const-wide/16 v13, 0x30

    sub-long/2addr v7, v13

    :goto_b
    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0x2e

    goto :goto_a

    :cond_11
    if-ge v2, v6, :cond_12

    goto :goto_c

    :cond_12
    const/4 v15, 0x0

    :goto_c
    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    move v9, v0

    move-wide v5, v7

    move v8, v15

    goto :goto_d

    :cond_13
    move-wide v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v7, v16

    .line 176
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->valueOfFloatLiteral([BIIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 148
    :cond_14
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHexFloatingPointLiteral([BIIIZ)J
    .locals 20

    move-object/from16 v1, p1

    move/from16 v3, p4

    const/4 v2, -0x1

    move/from16 v6, p2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v6, v3, :cond_2

    .line 275
    aget-byte v9, v1, v6

    .line 277
    invoke-static {v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->lookupHex(B)I

    move-result v13

    if-ltz v13, :cond_0

    shl-long/2addr v7, v11

    int-to-long v11, v13

    or-long/2addr v7, v11

    goto :goto_2

    :cond_0
    const/4 v14, -0x4

    if-ne v13, v14, :cond_2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    or-int/2addr v10, v12

    move v2, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v13, 0x400

    if-gez v2, :cond_3

    sub-int v2, v6, p2

    move v14, v2

    move v2, v6

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    sub-int v14, v6, p2

    sub-int/2addr v14, v12

    sub-int v15, v2, v6

    add-int/2addr v15, v12

    .line 304
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x4

    :goto_3
    or-int/lit8 v0, v9, 0x20

    const/16 v4, 0x70

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_c

    add-int/lit8 v4, v6, 0x1

    .line 312
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v5

    const/16 v9, 0x2d

    if-ne v5, v9, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    if-nez v17, :cond_6

    const/16 v9, 0x2b

    if-ne v5, v9, :cond_7

    :cond_6
    add-int/lit8 v4, v6, 0x2

    .line 315
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v5

    :cond_7
    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    const/16 v9, 0xa

    if-lt v5, v9, :cond_8

    const/16 v18, 0x1

    goto :goto_6

    :cond_8
    const/16 v18, 0x0

    :goto_6
    or-int v18, v10, v18

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v13, :cond_9

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v5

    :cond_9
    add-int/2addr v4, v12

    .line 324
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v5

    add-int/lit8 v12, v5, -0x30

    int-to-char v12, v12

    if-lt v12, v9, :cond_b

    if-eqz v17, :cond_a

    neg-int v10, v10

    :cond_a
    add-int/2addr v15, v10

    move v9, v5

    move v5, v10

    move/from16 v10, v18

    goto :goto_8

    :cond_b
    move v5, v12

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    move v4, v6

    const/4 v5, 0x0

    :goto_8
    or-int/lit8 v9, v9, 0x22

    const/16 v12, 0x66

    if-ne v9, v12, :cond_d

    add-int/lit8 v4, v4, 0x1

    .line 342
    :cond_d
    invoke-static {v1, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->skipWhitespace([BII)I

    move-result v4

    if-nez v10, :cond_12

    if-lt v4, v3, :cond_12

    if-eqz v14, :cond_12

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    if-le v14, v0, :cond_11

    move/from16 v0, p2

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_9
    if-ge v0, v6, :cond_f

    .line 356
    aget-byte v9, v1, v0

    .line 358
    invoke-static {v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->lookupHex(B)I

    move-result v9

    if-ltz v9, :cond_e

    const-wide v12, 0xde0b6b3a7640000L

    .line 360
    invoke-static {v7, v8, v12, v13}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v10

    if-gez v10, :cond_f

    shl-long/2addr v7, v11

    int-to-long v9, v9

    or-long/2addr v7, v9

    goto :goto_a

    :cond_e
    add-int/lit8 v4, v4, 0x1

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    if-ge v0, v6, :cond_10

    const/16 v16, 0x1

    goto :goto_b

    :cond_10
    const/16 v16, 0x0

    :goto_b
    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_c
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

    .line 374
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->valueOfHexLiteral([BIIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 346
    :cond_12
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNaNOrInfinity([BIIZ)J
    .locals 5

    .line 380
    aget-byte v0, p1, p2

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    add-int/lit8 p4, p2, 0x2

    if-ge p4, p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 381
    aget-byte v0, p1, v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_2

    aget-byte p4, p1, p4

    if-ne p4, v1, :cond_2

    add-int/lit8 p2, p2, 0x3

    .line 386
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->skipWhitespace([BII)I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->nan()J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v0, p2, 0x7

    if-ge v0, p3, :cond_2

    .line 393
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->readLongLE([BI)J

    move-result-wide v0

    const-wide v2, 0x7974696e69666e49L    # 1.1307281516072049E277

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    add-int/lit8 p2, p2, 0x8

    .line 395
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->skipWhitespace([BII)I

    move-result p1

    if-ne p1, p3, :cond_2

    if-eqz p4, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->negativeInfinity()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->positiveInfinity()J

    move-result-wide p1

    :goto_0
    return-wide p1

    .line 401
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "illegal syntax"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static skipWhitespace([BII)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 28
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

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

.method public parseFloatingPointLiteral([BII)J
    .locals 8

    .line 200
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->checkBounds(III)I

    move-result v5

    .line 204
    invoke-static {p1, p2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->skipWhitespace([BII)I

    move-result p3

    .line 205
    const-string v0, "illegal syntax"

    if-eq p3, v5, :cond_8

    .line 208
    aget-byte v1, p1, p3

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
    invoke-static {p1, p3, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/16 v0, 0x49

    if-lt v1, v0, :cond_3

    .line 223
    invoke-direct {p0, p1, p3, v5, v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->parseNaNOrInfinity([BIIZ)J

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
    invoke-static {p1, v0, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->charAt([BII)B

    move-result v1

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x78

    if-ne v1, v2, :cond_5

    add-int/lit8 v3, p3, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 232
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->parseHexFloatingPointLiteral([BIIIZ)J

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
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromByteArray;->parseDecFloatLiteral([BIIIZZ)J

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

.method abstract valueOfFloatLiteral([BIIZJIZI)J
.end method

.method abstract valueOfHexLiteral([BIIZJIZI)J
.end method
