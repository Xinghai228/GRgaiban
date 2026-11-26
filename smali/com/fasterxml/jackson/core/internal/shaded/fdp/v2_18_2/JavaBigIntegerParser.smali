.class public Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;
.super Ljava/lang/Object;
.source "JavaBigIntegerParser.java"


# static fields
.field private static final BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

.field private static final CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

.field private static final CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    .line 77
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBigInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;
    .locals 4

    .line 96
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;->parseBigIntegerString(Ljava/lang/CharSequence;III)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger(Ljava/lang/CharSequence;I)Ljava/math/BigInteger;
    .locals 3

    .line 109
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;->parseBigIntegerString(Ljava/lang/CharSequence;III)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;
    .locals 2

    .line 124
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;->parseBigIntegerString(Ljava/lang/CharSequence;III)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger(Ljava/lang/CharSequence;III)Ljava/math/BigInteger;
    .locals 1

    .line 141
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_SEQUENCE_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharSequence;->parseBigIntegerString(Ljava/lang/CharSequence;III)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([B)Ljava/math/BigInteger;
    .locals 4

    .line 153
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    array-length v1, p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;->parseBigIntegerString([BIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([BI)Ljava/math/BigInteger;
    .locals 3

    .line 166
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;->parseBigIntegerString([BIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([BII)Ljava/math/BigInteger;
    .locals 2

    .line 185
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;->parseBigIntegerString([BIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([BIII)Ljava/math/BigInteger;
    .locals 1

    .line 205
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->BYTE_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromByteArray;->parseBigIntegerString([BIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([C)Ljava/math/BigInteger;
    .locals 4

    .line 217
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    array-length v1, p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;->parseBigIntegerString([CIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([CI)Ljava/math/BigInteger;
    .locals 3

    .line 230
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;->parseBigIntegerString([CIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([CII)Ljava/math/BigInteger;
    .locals 2

    .line 249
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;->parseBigIntegerString([CIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parseBigInteger([CIII)Ljava/math/BigInteger;
    .locals 1

    .line 269
    sget-object v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerParser;->CHAR_ARRAY_PARSER:Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/JavaBigIntegerFromCharArray;->parseBigIntegerString([CIII)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
