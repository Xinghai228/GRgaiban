.class public Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;
.super Ljava/lang/Object;
.source "JavaBigDecimalParser.java"


# static fields
.field private static final BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;

.field private static final CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;

.field private static final CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;

    .line 100
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBigDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal(Ljava/lang/CharSequence;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal(Ljava/lang/CharSequence;II)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharSequence;->parseBigDecimalString(Ljava/lang/CharSequence;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([B)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([BII)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromByteArray;->parseBigDecimalString([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([C)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigDecimalFromCharArray;->parseBigDecimalString([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method
