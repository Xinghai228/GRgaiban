.class final Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;
.super Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractBigDecimalParser;
.source "JavaBigDecimalFromCharArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/AbstractBigDecimalParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseBigDecimalString([CII)Ljava/math/BigDecimal;
    .locals 24

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 40
    :try_start_0
    array-length v2, v0

    move/from16 v3, p3

    invoke-static {v2, v1, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->checkBounds(III)I

    move-result v5

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->hasManyDigits(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->parseBigDecimalStringWithManyDigits([CII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    invoke-static {v0, v1, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/16 v7, 0x2b

    if-nez v9, :cond_3

    if-ne v2, v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v10, v1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    invoke-static {v0, v1, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1

    :goto_3
    const/4 v1, -0x1

    move v8, v10

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_4
    const-wide/16 v16, 0xa

    const/16 v4, 0xa

    if-ge v8, v5, :cond_8

    .line 67
    aget-char v2, v0, v8

    add-int/lit8 v11, v2, -0x30

    int-to-char v11, v11

    if-ge v11, v4, :cond_4

    mul-long v13, v13, v16

    int-to-long v11, v11

    add-long/2addr v13, v11

    goto :goto_8

    :cond_4
    const/16 v11, 0x2e

    if-ne v2, v11, :cond_8

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    or-int/2addr v15, v1

    move v1, v8

    :goto_6
    add-int/lit8 v4, v5, -0x4

    if-ge v1, v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .line 76
    invoke-static {v0, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->tryToParseFourDigits([CI)I

    move-result v4

    if-gez v4, :cond_6

    goto :goto_7

    :cond_6
    const-wide/16 v11, 0x2710

    mul-long v13, v13, v11

    int-to-long v11, v4

    add-long/2addr v13, v11

    add-int/lit8 v1, v1, 0x4

    goto :goto_6

    :cond_7
    :goto_7
    move/from16 v23, v8

    move v8, v1

    move/from16 v1, v23

    :goto_8
    add-int/2addr v8, v6

    goto :goto_4

    :cond_8
    if-gez v1, :cond_9

    sub-int v1, v8, v10

    move v11, v8

    const-wide/16 v6, 0x0

    goto :goto_9

    :cond_9
    sub-int v11, v8, v10

    sub-int/2addr v11, v6

    sub-int v12, v1, v8

    add-int/2addr v12, v6

    int-to-long v6, v12

    move/from16 v23, v11

    move v11, v1

    move/from16 v1, v23

    :goto_9
    or-int/lit8 v2, v2, 0x20

    const/16 v12, 0x65

    if-ne v2, v12, :cond_11

    add-int/lit8 v2, v8, 0x1

    .line 105
    invoke-static {v0, v2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v12

    if-ne v12, v3, :cond_a

    const/4 v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    const/16 v4, 0x2b

    if-ne v12, v4, :cond_c

    :cond_b
    add-int/lit8 v2, v8, 0x2

    .line 108
    invoke-static {v0, v2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v12

    :cond_c
    add-int/lit8 v12, v12, -0x30

    int-to-char v4, v12

    const/16 v12, 0xa

    if-lt v4, v12, :cond_d

    const/4 v12, 0x1

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    or-int/2addr v15, v12

    const-wide/16 v18, 0x0

    :goto_c
    const-wide/32 v21, 0x7fffffff

    cmp-long v12, v18, v21

    if-gez v12, :cond_e

    mul-long v18, v18, v16

    move v12, v10

    move/from16 v21, v11

    int-to-long v10, v4

    add-long v18, v18, v10

    goto :goto_d

    :cond_e
    move v12, v10

    move/from16 v21, v11

    :goto_d
    move-wide/from16 v10, v18

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 117
    invoke-static {v0, v2, v5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v18

    add-int/lit8 v4, v18, -0x30

    int-to-char v4, v4

    const/16 v0, 0xa

    if-lt v4, v0, :cond_10

    if-eqz v3, :cond_f

    neg-long v10, v10

    :cond_f
    add-long/2addr v6, v10

    move v4, v2

    move-wide v10, v6

    move v0, v8

    goto :goto_e

    :cond_10
    move-object/from16 v0, p1

    move-wide/from16 v18, v10

    move v10, v12

    move/from16 v11, v21

    goto :goto_c

    :cond_11
    move v12, v10

    move/from16 v21, v11

    move v0, v5

    move-wide v10, v6

    move v4, v8

    :goto_e
    if-nez v1, :cond_12

    const/16 v20, 0x1

    goto :goto_f

    :cond_12
    const/16 v20, 0x0

    :goto_f
    or-int v3, v15, v20

    move v6, v1

    move-wide v7, v10

    .line 128
    invoke-static/range {v3 .. v8}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->checkParsedBigDecimalBounds(ZIIIJ)V

    const/16 v2, 0x13

    if-ge v1, v2, :cond_14

    .line 130
    new-instance v0, Ljava/math/BigDecimal;

    if-eqz v9, :cond_13

    neg-long v13, v13

    :cond_13
    invoke-direct {v0, v13, v14}, Ljava/math/BigDecimal;-><init>(J)V

    long-to-int v1, v10

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_14
    add-int/lit8 v5, v21, 0x1

    long-to-int v8, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move/from16 v4, v21

    move v6, v0

    move v7, v9

    .line 132
    invoke-virtual/range {v1 .. v8}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->valueOfBigDecimalString([CIIIIZI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value exceeds limits"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v1
.end method

.method parseBigDecimalStringWithManyDigits([CII)Ljava/math/BigDecimal;
    .locals 23

    move-object/from16 v1, p1

    move/from16 v0, p2

    add-int v4, v0, p3

    .line 152
    invoke-static {v1, v0, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v2

    const/4 v3, 0x1

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/16 v7, 0x2b

    if-nez v8, :cond_1

    if-ne v2, v7, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 159
    invoke-static {v1, v0, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v2

    if-eqz v2, :cond_17

    :cond_2
    add-int/lit8 v9, v4, -0x8

    const/high16 v10, 0x40000000    # 2.0f

    .line 170
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v0

    :goto_1
    if-ge v10, v9, :cond_3

    .line 171
    invoke-static {v1, v10}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isEightZeroes([CI)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v10, v10, 0x8

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v11, 0x30

    if-ge v10, v4, :cond_4

    .line 174
    aget-char v12, v1, v10

    if-ne v12, v11, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v12, v10

    :goto_3
    if-ge v12, v9, :cond_5

    .line 179
    invoke-static {v1, v12}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isEightDigits([CI)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v12, v12, 0x8

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v12, v4, :cond_6

    .line 182
    aget-char v2, v1, v12

    invoke-static {v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_b

    add-int/lit8 v13, v12, 0x1

    :goto_5
    if-ge v13, v9, :cond_7

    .line 188
    invoke-static {v1, v13}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isEightZeroes([CI)Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v13, v13, 0x8

    goto :goto_5

    :cond_7
    :goto_6
    if-ge v13, v4, :cond_8

    .line 191
    aget-char v14, v1, v13

    if-ne v14, v11, :cond_8

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    move v14, v13

    :goto_7
    if-ge v14, v9, :cond_9

    .line 196
    invoke-static {v1, v14}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isEightDigits([CI)Z

    move-result v15

    if-eqz v15, :cond_9

    add-int/lit8 v14, v14, 0x8

    goto :goto_7

    :cond_9
    :goto_8
    if-ge v14, v4, :cond_a

    .line 199
    aget-char v2, v1, v14

    invoke-static {v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_a
    move v9, v13

    move v13, v12

    move v12, v14

    goto :goto_9

    :cond_b
    const/4 v13, -0x1

    const/4 v9, -0x1

    :goto_9
    if-gez v13, :cond_c

    sub-int v9, v12, v10

    move v5, v9

    move v9, v12

    move v13, v9

    const-wide/16 v14, 0x0

    goto :goto_b

    :cond_c
    if-ne v10, v13, :cond_d

    sub-int v16, v12, v9

    goto :goto_a

    :cond_d
    sub-int v16, v12, v10

    add-int/lit8 v16, v16, -0x1

    :goto_a
    sub-int v17, v13, v12

    add-int/lit8 v5, v17, 0x1

    int-to-long v14, v5

    move/from16 v5, v16

    :goto_b
    or-int/lit8 v2, v2, 0x20

    const/16 v3, 0x65

    if-ne v2, v3, :cond_15

    add-int/lit8 v2, v12, 0x1

    .line 224
    invoke-static {v1, v2, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v3

    if-ne v3, v6, :cond_e

    const/4 v6, 0x1

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_f

    if-ne v3, v7, :cond_10

    :cond_f
    add-int/lit8 v2, v12, 0x2

    .line 227
    invoke-static {v1, v2, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v3

    :cond_10
    sub-int/2addr v3, v11

    int-to-char v3, v3

    const/16 v7, 0xa

    if-lt v3, v7, :cond_11

    const/16 v19, 0x1

    goto :goto_d

    :cond_11
    const/16 v19, 0x0

    :goto_d
    const-wide/16 v17, 0x0

    :goto_e
    const-wide/32 v20, 0x7fffffff

    cmp-long v22, v17, v20

    if-gez v22, :cond_12

    const-wide/16 v20, 0xa

    mul-long v17, v17, v20

    move/from16 v20, v8

    int-to-long v7, v3

    add-long v17, v17, v7

    goto :goto_f

    :cond_12
    move/from16 v20, v8

    :goto_f
    move-wide/from16 v7, v17

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 236
    invoke-static {v1, v2, v4}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->charAt([CII)C

    move-result v16

    add-int/lit8 v3, v16, -0x30

    int-to-char v3, v3

    const/16 v11, 0xa

    if-lt v3, v11, :cond_14

    if-eqz v6, :cond_13

    neg-long v7, v7

    :cond_13
    add-long/2addr v14, v7

    move v3, v2

    goto :goto_10

    :cond_14
    move-wide/from16 v17, v7

    move/from16 v8, v20

    const/16 v7, 0xa

    const/16 v11, 0x30

    goto :goto_e

    :cond_15
    move/from16 v20, v8

    move v3, v12

    const/16 v19, 0x0

    move v12, v4

    :goto_10
    if-ne v0, v13, :cond_16

    if-ne v13, v12, :cond_16

    const/16 v17, 0x1

    goto :goto_11

    :cond_16
    const/16 v17, 0x0

    :goto_11
    or-int v2, v19, v17

    move-wide v6, v14

    .line 247
    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->checkParsedBigDecimalBounds(ZIIIJ)V

    long-to-int v7, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v13

    move v4, v9

    move v5, v12

    move/from16 v6, v20

    .line 249
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->valueOfBigDecimalString([CIIIIZI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 161
    :cond_17
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal syntax"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method valueOfBigDecimalString([CIIIIZI)Ljava/math/BigDecimal;
    .locals 5

    sub-int v0, p5, p3

    add-int/lit8 v0, v0, -0x1

    sub-int v1, p5, p4

    sub-int v2, p3, p2

    const/16 v3, 0x190

    const/4 v4, 0x0

    if-lez v2, :cond_1

    if-le v2, v3, :cond_0

    .line 292
    invoke-static {}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastIntegerMath;->createPowersOfTenFloor16Map()Ljava/util/NavigableMap;

    move-result-object v4

    .line 293
    invoke-static {v4, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastIntegerMath;->fillPowersOfNFloor16Recursive(Ljava/util/NavigableMap;II)V

    .line 294
    invoke-static {p1, p2, p3, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/ParseDigitsTaskCharArray;->parseDigitsRecursive([CIILjava/util/Map;I)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/ParseDigitsTaskCharArray;->parseDigitsIterative([CII)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_0

    .line 299
    :cond_1
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    if-lez v0, :cond_5

    if-le v1, v3, :cond_3

    if-nez v4, :cond_2

    .line 308
    invoke-static {}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastIntegerMath;->createPowersOfTenFloor16Map()Ljava/util/NavigableMap;

    move-result-object v4

    .line 310
    :cond_2
    invoke-static {v4, p4, p5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastIntegerMath;->fillPowersOfNFloor16Recursive(Ljava/util/NavigableMap;II)V

    .line 311
    invoke-static {p1, p4, p5, v4, v3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/ParseDigitsTaskCharArray;->parseDigitsRecursive([CIILjava/util/Map;I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    .line 313
    :cond_3
    invoke-static {p1, p4, p5}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/ParseDigitsTaskCharArray;->parseDigitsIterative([CII)Ljava/math/BigInteger;

    move-result-object p1

    .line 316
    :goto_1
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    .line 319
    :cond_4
    invoke-static {v4, v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastIntegerMath;->computePowerOfTen(Ljava/util/NavigableMap;I)Ljava/math/BigInteger;

    move-result-object p3

    .line 320
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier;->multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_2
    move-object p2, p1

    .line 328
    :cond_5
    new-instance p1, Ljava/math/BigDecimal;

    if-eqz p6, :cond_6

    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    :cond_6
    neg-int p3, p7

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1
.end method
