.class public final Lcom/fasterxml/jackson/core/io/BigDecimalParser;
.super Ljava/lang/Object;
.source "BigDecimalParser.java"


# static fields
.field static final MAX_CHARS_TO_REPORT:I = 0x3e8

.field private static final SIZE_FOR_SWITCH_TO_FASTDOUBLEPARSER:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _generateExceptionMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 176
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "Value %s can not be deserialized as `java.math.BigDecimal`, reason:  %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static _getValueDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_0

    .line 159
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "\"%s\""

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object v3, v4, v1

    const/4 p0, 0x2

    aput-object v0, v4, p0

    .line 161
    const-string p0, "\"%s\" (truncated to %d chars (from %d))"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static _getValueDesc([CII)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-gt p2, v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    new-array p0, v0, [Ljava/lang/Object;

    aput-object v2, p0, v1

    const-string p1, "\"%s\""

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v1

    aput-object p0, p2, v0

    const/4 p0, 0x2

    aput-object p1, p2, p0

    .line 170
    const-string p0, "\"%s\" (truncated to %d chars (from %d))"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static _parseFailure(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 1

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 137
    const-string p0, "Not a valid number representation"

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_getValueDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_generateExceptionMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static _parseFailure(Ljava/lang/Exception;[CII)Ljava/lang/NumberFormatException;
    .locals 0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 150
    const-string p0, "Not a valid number representation"

    .line 152
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_getValueDesc([CII)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance p2, Ljava/lang/NumberFormatException;

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_generateExceptionMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    :goto_0
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_parseFailure(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static parse([C)Ljava/math/BigDecimal;
    .locals 2

    const/4 v0, 0x0

    .line 93
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parse([CII)Ljava/math/BigDecimal;
    .locals 1

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 72
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 77
    :goto_0
    invoke-static {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_parseFailure(Ljava/lang/Exception;[CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithFastParser(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 111
    :goto_0
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_parseFailure(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithFastParser([CII)Ljava/math/BigDecimal;
    .locals 1

    .line 127
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 129
    :goto_0
    invoke-static {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->_parseFailure(Ljava/lang/Exception;[CII)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method
