.class abstract Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;
.super Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;
.source "AbstractJavaFloatingPointBitsFromCharArray.java"


# static fields
.field private static final CONDITIONAL_COMPILATION_PARSE_EIGHT_HEX_DIGITS:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractFloatValueParser;-><init>()V

    return-void
.end method

.method private parseDecFloatLiteral([CIIIZZ)J
    .locals 20

    move-object/from16 v1, p1

    move/from16 v3, p4

    add-int/lit8 v0, v3, -0x4

    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, -0x1

    move/from16 v7, p2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0xa

    const/16 v14, 0x2e

    const/16 v15, 0xa

    const/16 v16, 0x1

    if-ge v7, v3, :cond_4

    .line 83
    aget-char v10, v1, v7

    add-int/lit8 v4, v10, -0x30

    int-to-char v4, v4

    if-ge v4, v15, :cond_0

    mul-long v8, v8, v12

    int-to-long v4, v4

    add-long/2addr v8, v4

    goto :goto_4

    :cond_0
    if-ne v10, v14, :cond_4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v11, v2

    move v2, v7

    :goto_2
    if-ge v2, v0, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 92
    invoke-static {v1, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->tryToParseFourDigits([CI)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 v12, 0x2710

    mul-long v8, v8, v12

    int-to-long v4, v4

    add-long/2addr v8, v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    move/from16 v19, v7

    move v7, v2

    move/from16 v2, v19

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    sub-int v0, v7, p2

    move v2, v7

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    sub-int v0, v7, p2

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v2, v7

    add-int/lit8 v4, v4, 0x1

    :goto_5
    or-int/lit8 v5, v10, 0x20

    const/16 v6, 0x65

    if-ne v5, v6, :cond_d

    add-int/lit8 v5, v7, 0x1

    .line 119
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v6

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    :goto_6
    if-nez v17, :cond_7

    const/16 v10, 0x2b

    if-ne v6, v10, :cond_8

    :cond_7
    add-int/lit8 v5, v7, 0x2

    .line 122
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v6

    :cond_8
    add-int/lit8 v6, v6, -0x30

    int-to-char v6, v6

    if-lt v6, v15, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_7
    or-int v18, v11, v10

    const/4 v10, 0x0

    :goto_8
    const/16 v11, 0x400

    if-ge v10, v11, :cond_a

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 131
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v6

    add-int/lit8 v11, v6, -0x30

    int-to-char v11, v11

    if-lt v11, v15, :cond_c

    if-eqz v17, :cond_b

    neg-int v10, v10

    :cond_b
    add-int/2addr v4, v10

    move/from16 v11, v18

    move/from16 v19, v10

    move v10, v4

    move/from16 v4, v19

    goto :goto_9

    :cond_c
    move v6, v11

    goto :goto_8

    :cond_d
    move v5, v7

    move v6, v10

    move v10, v4

    const/4 v4, 0x0

    :goto_9
    or-int/lit8 v6, v6, 0x22

    const/16 v15, 0x66

    if-ne v6, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    .line 149
    :cond_e
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->skipWhitespace([CII)I

    move-result v5

    if-nez v11, :cond_14

    if-lt v5, v3, :cond_14

    if-nez p6, :cond_f

    if-eqz v0, :cond_14

    :cond_f
    const/16 v5, 0x13

    if-le v0, v5, :cond_13

    move/from16 v0, p2

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    :goto_a
    if-ge v0, v7, :cond_11

    .line 163
    aget-char v9, v1, v0

    if-ne v9, v14, :cond_10

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_10
    const-wide v14, 0xde0b6b3a7640000L

    .line 167
    invoke-static {v5, v6, v14, v15}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v14

    if-gez v14, :cond_11

    mul-long v5, v5, v12

    int-to-long v14, v9

    add-long/2addr v5, v14

    const-wide/16 v14, 0x30

    sub-long/2addr v5, v14

    :goto_b
    add-int/lit8 v0, v0, 0x1

    const/16 v14, 0x2e

    goto :goto_a

    :cond_11
    if-ge v0, v7, :cond_12

    goto :goto_c

    :cond_12
    const/16 v16, 0x0

    :goto_c
    sub-int/2addr v2, v0

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    move v9, v2

    move/from16 v8, v16

    goto :goto_d

    :cond_13
    move-wide v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move v7, v10

    .line 180
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->valueOfFloatLiteral([CIIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 152
    :cond_14
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHexFloatLiteral([CIIIZ)J
    .locals 21

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

    if-ge v6, v3, :cond_4

    .line 278
    aget-char v9, v1, v6

    .line 280
    invoke-static {v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->lookupHex(C)I

    move-result v13

    if-ltz v13, :cond_0

    shl-long/2addr v7, v11

    int-to-long v13, v13

    or-long/2addr v7, v13

    move-object/from16 v13, p0

    goto :goto_3

    :cond_0
    const/4 v14, -0x4

    if-ne v13, v14, :cond_4

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

    move-object/from16 v13, p0

    .line 288
    invoke-direct {v13, v1, v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->tryToParseEightHexDigits([CI)J

    move-result-wide v14

    cmp-long v11, v14, v4

    if-ltz v11, :cond_3

    const/16 v11, 0x20

    shl-long/2addr v7, v11

    add-long/2addr v7, v14

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_2
    move-object/from16 v13, p0

    :cond_3
    move/from16 v20, v6

    move v6, v2

    move/from16 v2, v20

    :goto_3
    add-int/2addr v6, v12

    goto :goto_0

    :cond_4
    move-object/from16 v13, p0

    const/16 v14, 0x400

    if-gez v2, :cond_5

    sub-int v2, v6, p2

    move v15, v2

    move v2, v6

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    sub-int v15, v6, p2

    sub-int/2addr v15, v12

    sub-int v16, v2, v6

    add-int/lit8 v0, v16, 0x1

    .line 307
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_4
    or-int/lit8 v4, v9, 0x20

    const/16 v5, 0x70

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    add-int/lit8 v5, v6, 0x1

    .line 315
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v9

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_8

    const/16 v12, 0x2b

    if-ne v9, v12, :cond_9

    :cond_8
    add-int/lit8 v5, v6, 0x2

    .line 318
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v9

    :cond_9
    add-int/lit8 v9, v9, -0x30

    int-to-char v9, v9

    const/16 v12, 0xa

    if-lt v9, v12, :cond_a

    const/16 v19, 0x1

    goto :goto_7

    :cond_a
    const/16 v19, 0x0

    :goto_7
    or-int v19, v10, v19

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v14, :cond_b

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v9

    :cond_b
    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 327
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v9

    add-int/lit8 v14, v9, -0x30

    int-to-char v14, v14

    if-lt v14, v12, :cond_d

    if-eqz v11, :cond_c

    neg-int v10, v10

    :cond_c
    add-int/2addr v0, v10

    move v11, v10

    move/from16 v10, v19

    goto :goto_9

    :cond_d
    move v9, v14

    const/16 v14, 0x400

    goto :goto_8

    :cond_e
    const/16 v18, 0x1

    move v5, v6

    const/4 v11, 0x0

    :goto_9
    move/from16 v20, v9

    move v9, v0

    move/from16 v0, v20

    or-int/lit8 v0, v0, 0x22

    const/16 v12, 0x66

    if-ne v0, v12, :cond_f

    add-int/lit8 v5, v5, 0x1

    .line 345
    :cond_f
    invoke-static {v1, v5, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->skipWhitespace([CII)I

    move-result v0

    if-nez v10, :cond_14

    if-lt v0, v3, :cond_14

    if-eqz v15, :cond_14

    if-eqz v4, :cond_14

    const/16 v4, 0x10

    if-le v15, v4, :cond_13

    move/from16 v0, p2

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v0, v6, :cond_11

    .line 359
    aget-char v8, v1, v0

    .line 361
    invoke-static {v8}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->lookupHex(C)I

    move-result v8

    if-ltz v8, :cond_10

    const-wide v14, 0xde0b6b3a7640000L

    .line 363
    invoke-static {v4, v5, v14, v15}, Lokhttp3/Cookie$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v10

    if-gez v10, :cond_11

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v14, v8

    or-long/2addr v4, v14

    goto :goto_b

    :cond_10
    add-int/lit8 v7, v7, 0x1

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    if-ge v0, v6, :cond_12

    const/16 v17, 0x1

    goto :goto_c

    :cond_12
    const/16 v17, 0x0

    :goto_c
    move-wide v5, v4

    move/from16 v8, v17

    move/from16 v17, v7

    goto :goto_d

    :cond_13
    move-wide v5, v7

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_d
    sub-int/2addr v2, v0

    add-int v2, v2, v17

    const/4 v0, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int v10, v2, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move v7, v9

    move v9, v10

    .line 377
    invoke-virtual/range {v0 .. v9}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->valueOfHexLiteral([CIIZJIZI)J

    move-result-wide v0

    return-wide v0

    .line 349
    :cond_14
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNaNOrInfinity([CIIZ)J
    .locals 4

    .line 382
    aget-char v0, p1, p2

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    add-int/lit8 p4, p2, 0x2

    if-ge p4, p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 383
    aget-char v0, p1, v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_2

    aget-char p4, p1, p4

    if-ne p4, v1, :cond_2

    add-int/lit8 p2, p2, 0x3

    .line 388
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->skipWhitespace([CII)I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->nan()J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v1, p2, 0x7

    if-ge v1, p3, :cond_2

    const/16 v2, 0x49

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 394
    aget-char v0, p1, v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p2, 0x2

    aget-char v0, p1, v0

    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p2, 0x3

    aget-char v0, p1, v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p1, v0

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p1, v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p2, 0x6

    aget-char v0, p1, v0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_2

    aget-char v0, p1, v1

    const/16 v1, 0x79

    if-ne v0, v1, :cond_2

    add-int/lit8 p2, p2, 0x8

    .line 404
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->skipWhitespace([CII)I

    move-result p1

    if-ne p1, p3, :cond_2

    if-eqz p4, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->negativeInfinity()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->positiveInfinity()J

    move-result-wide p1

    :goto_0
    return-wide p1

    .line 410
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "illegal syntax"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static skipWhitespace([CII)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 31
    aget-char v0, p0, p1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private tryToParseEightHexDigits([CI)J
    .locals 0

    .line 420
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->tryToParseEightHexDigits([CI)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method abstract nan()J
.end method

.method abstract negativeInfinity()J
.end method

.method public parseFloatingPointLiteral([CII)J
    .locals 8

    .line 203
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->checkBounds(III)I

    move-result v5

    .line 207
    invoke-static {p1, p2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->skipWhitespace([CII)I

    move-result p3

    .line 208
    const-string v0, "illegal syntax"

    if-eq p3, v5, :cond_8

    .line 211
    aget-char v1, p1, p3

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

    .line 217
    invoke-static {p1, p3, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/16 v0, 0x49

    if-lt v1, v0, :cond_3

    .line 226
    invoke-direct {p0, p1, p3, v5, v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->parseNaNOrInfinity([CIIZ)J

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

    .line 233
    invoke-static {p1, v0, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->charAt([CII)C

    move-result v1

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x78

    if-ne v1, v2, :cond_5

    add-int/lit8 v3, p3, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 235
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->parseHexFloatLiteral([CIIIZ)J

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

    .line 239
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractJavaFloatingPointBitsFromCharArray;->parseDecFloatLiteral([CIIIZZ)J

    move-result-wide p1

    return-wide p1

    .line 219
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract positiveInfinity()J
.end method

.method abstract valueOfFloatLiteral([CIIZJIZI)J
.end method

.method abstract valueOfHexLiteral([CIIZJIZI)J
.end method
