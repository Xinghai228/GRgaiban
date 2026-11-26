.class public abstract Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;
.super Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;
.source "NonBlockingUtf8JsonParserBase.java"


# static fields
.field private static final FEAT_MASK_ALLOW_JAVA_COMMENTS:I

.field private static final FEAT_MASK_ALLOW_MISSING:I

.field private static final FEAT_MASK_ALLOW_SINGLE_QUOTES:I

.field private static final FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

.field private static final FEAT_MASK_ALLOW_YAML_COMMENTS:I

.field private static final FEAT_MASK_LEADING_ZEROS:I

.field private static final FEAT_MASK_TRAILING_COMMA:I

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _origBufferLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    .line 28
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_LEADING_ZEROS:I

    .line 30
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_MISSING:I

    .line 31
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    .line 32
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    .line 33
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    .line 37
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icUTF8:[I

    .line 41
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    return-void
.end method

.method private final _decodeCharEscape()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2885
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2887
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitEscaped(II)I

    move-result v0

    return v0

    .line 2889
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeFastCharEscape()I

    move-result v0

    return v0
.end method

.method private final _decodeFastCharEscape()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2894
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 2922
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    return v0

    .line 2926
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    .line 2927
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 2931
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    .line 2932
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_2

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr v0, v2

    .line 2935
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v1

    .line 2936
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    .line 2939
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v1

    .line 2940
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v1

    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 2947
    const-string v1, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_3
    const/16 v0, 0x9

    return v0

    :cond_4
    const/16 v0, 0xd

    return v0

    :cond_5
    const/16 v0, 0xa

    return v0

    :cond_6
    const/16 v0, 0xc

    return v0

    :cond_7
    const/16 v0, 0x8

    return v0

    :cond_8
    int-to-char v0, v0

    return v0
.end method

.method private _decodeSplitEscaped(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2435
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 2436
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quoted32:I

    .line 2437
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quotedDigits:I

    return v2

    .line 2440
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    if-ne p2, v2, :cond_9

    const/16 p2, 0x22

    if-eq v0, p2, :cond_8

    const/16 p2, 0x2f

    if-eq v0, p2, :cond_8

    const/16 p2, 0x5c

    if-eq v0, p2, :cond_8

    const/16 p2, 0x62

    if-eq v0, p2, :cond_7

    const/16 p2, 0x66

    if-eq v0, p2, :cond_6

    const/16 p2, 0x6e

    if-eq v0, p2, :cond_5

    const/16 p2, 0x72

    if-eq v0, p2, :cond_4

    const/16 p2, 0x74

    if-eq v0, p2, :cond_3

    const/16 p2, 0x75

    if-eq v0, p2, :cond_1

    int-to-char p1, v0

    .line 2469
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_handleUnrecognizedCharacterEscape(C)C

    move-result p1

    return p1

    .line 2472
    :cond_1
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_2

    .line 2473
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quotedDigits:I

    .line 2474
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quoted32:I

    return v2

    .line 2477
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    return p1

    :cond_4
    const/16 p1, 0xd

    return p1

    :cond_5
    const/16 p1, 0xa

    return p1

    :cond_6
    const/16 p1, 0xc

    return p1

    :cond_7
    const/16 p1, 0x8

    return p1

    :cond_8
    return v0

    :cond_9
    :goto_0
    and-int/lit16 v0, v0, 0xff

    .line 2482
    :goto_1
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v1

    if-gez v1, :cond_a

    and-int/lit16 v0, v0, 0xff

    .line 2484
    const-string v3, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a
    const/4 v0, 0x4

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_b

    return p1

    .line 2490
    :cond_b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_c

    .line 2491
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quotedDigits:I

    .line 2492
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quoted32:I

    return v2

    .line 2495
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    goto :goto_1
.end method

.method private final _decodeSplitMultiByte(IIZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/16 p2, 0x20

    if-ge p1, p2, :cond_0

    .line 2800
    const-string p2, "string value"

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidChar(I)V

    .line 2805
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1

    :cond_1
    and-int/lit8 p1, p1, 0x7

    if-eqz p3, :cond_2

    .line 2791
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitUTF8_4(III)Z

    move-result p1

    return p1

    .line 2793
    :cond_2
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2794
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    const/16 p1, 0x2c

    .line 2795
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    return v0

    :cond_3
    and-int/lit8 p1, p1, 0xf

    if-eqz p3, :cond_4

    .line 2782
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitUTF8_3(III)Z

    move-result p1

    return p1

    :cond_4
    const/16 p2, 0x2b

    .line 2784
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2785
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2786
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    return v0

    :cond_5
    if-eqz p3, :cond_6

    .line 2772
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_2(II)I

    move-result p1

    .line 2773
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1

    :cond_6
    const/16 p2, 0x2a

    .line 2776
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2777
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    return v0

    :cond_7
    const/4 p1, -0x1

    .line 2762
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitEscaped(II)I

    move-result p1

    if-gez p1, :cond_8

    const/16 p1, 0x29

    .line 2764
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    return v0

    .line 2767
    :cond_8
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1
.end method

.method private final _decodeSplitUTF8_3(III)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v0, :cond_0

    and-int/lit16 p2, p3, 0xff

    .line 2815
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2818
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, p3, :cond_1

    const/16 p2, 0x2b

    .line 2819
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2820
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    const/4 p1, 0x2

    .line 2821
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    const/4 p1, 0x0

    return p1

    .line 2824
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p3

    :cond_2
    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v0, :cond_3

    and-int/lit16 p2, p3, 0xff

    .line 2827
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    .line 2829
    :cond_3
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p1, p3

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1
.end method

.method private final _decodeSplitUTF8_4(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x2c

    const/16 v2, 0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_0

    and-int/lit16 p2, p3, 0xff

    .line 2840
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2843
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, p3, :cond_1

    .line 2844
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2845
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2846
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    return v0

    .line 2850
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p3

    const/4 p2, 0x2

    :cond_2
    if-ne p2, v3, :cond_5

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_3

    and-int/lit16 p2, p3, 0xff

    .line 2854
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2857
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, p3, :cond_4

    .line 2858
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2859
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    const/4 p1, 0x3

    .line 2860
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    return v0

    .line 2863
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p3

    :cond_5
    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_6

    and-int/lit16 p2, p3, 0xff

    .line 2866
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_6
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    .line 2870
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    shr-int/lit8 p3, p1, 0xa

    const v0, 0xd800

    or-int/2addr p3, v0

    int-to-char p3, p3

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    and-int/lit16 p1, p1, 0x3ff

    const p2, 0xdc00

    or-int/2addr p1, p2

    .line 2873
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v4
.end method

.method private final _decodeUTF8_2(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2960
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    return p1
.end method

.method private final _decodeUTF8_3(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0xf

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2969
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v1, :cond_1

    and-int/lit16 p2, p3, 0xff

    .line 2973
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    return p1
.end method

.method private final _decodeUTF8_4(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2983
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v1, :cond_1

    and-int/lit16 p2, p3, 0xff

    .line 2987
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xc0

    if-eq p2, v1, :cond_2

    and-int/lit16 p2, p4, 0xff

    .line 2991
    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidOther(II)V

    :cond_2
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p4, 0x3f

    or-int/2addr p1, p2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    return p1
.end method

.method private final _fastParseName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1934
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    .line 1935
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    .line 1937
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1938
    aget v4, v0, v3

    const/4 v5, 0x0

    const/16 v6, 0x22

    if-nez v4, :cond_8

    add-int/lit8 v4, v1, 0x2

    .line 1939
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1940
    aget v7, v0, v2

    if-nez v7, :cond_6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    .line 1942
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 1943
    aget v7, v0, v4

    if-nez v7, :cond_4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    .line 1945
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1946
    aget v7, v0, v3

    if-nez v7, :cond_2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x5

    .line 1948
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1949
    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 1950
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    .line 1951
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseMediumName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne v3, v6, :cond_1

    .line 1954
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v0, 0x4

    .line 1955
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v5

    :cond_2
    if-ne v3, v6, :cond_3

    .line 1960
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v0, 0x3

    .line 1961
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v5

    :cond_4
    if-ne v4, v6, :cond_5

    .line 1966
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v0, 0x2

    .line 1967
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v5

    :cond_6
    if-ne v2, v6, :cond_7

    .line 1972
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v0, 0x1

    .line 1973
    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v5

    :cond_8
    if-ne v3, v6, :cond_9

    .line 1978
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1979
    const-string v0, ""

    return-object v0

    :cond_9
    return-object v5
.end method

.method private _finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2287
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    .line 2288
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    .line 2291
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v4, 0x9

    if-lt v2, v3, :cond_0

    .line 2292
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    .line 2293
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2294
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    .line 2295
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2296
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2298
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    if-lez p3, :cond_2

    .line 2367
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 2368
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 2370
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_padLastQuad(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 2372
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2374
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 2376
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2378
    :cond_4
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v3, 0x22

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v2, v3, :cond_d

    .line 2303
    aget v3, v1, v2

    if-eqz v3, :cond_d

    const/16 v3, 0x5c

    const/16 v7, 0x8

    if-eq v2, v3, :cond_6

    .line 2306
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2309
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeCharEscape()I

    move-result v2

    if-gez v2, :cond_7

    .line 2311
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2312
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    .line 2313
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    .line 2314
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2315
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    .line 2316
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    const/16 v3, 0x7f

    if-le v2, v3, :cond_d

    const/4 v3, 0x0

    if-lt p3, v5, :cond_9

    .line 2322
    array-length p3, v0

    if-lt p1, p3, :cond_8

    .line 2323
    array-length p3, v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_8
    add-int/lit8 p3, p1, 0x1

    .line 2325
    aput p2, v0, p1

    move p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_9
    const/16 v4, 0x800

    if-ge v2, v4, :cond_a

    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int/2addr p2, v4

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v5, :cond_c

    .line 2338
    array-length p3, v0

    if-lt p1, p3, :cond_b

    .line 2339
    array-length p3, v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    move-object v0, p3

    :cond_b
    add-int/lit8 p3, p1, 0x1

    .line 2341
    aput p2, v0, p1

    move p1, p3

    const/4 p3, 0x0

    goto :goto_3

    :cond_c
    move v3, p2

    :goto_3
    shl-int/lit8 p2, v3, 0x8

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr p2, v3

    add-int/2addr p3, v6

    :goto_4
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    :cond_d
    if-ge p3, v5, :cond_e

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    goto/16 :goto_0

    .line 2357
    :cond_e
    array-length p3, v0

    if-lt p1, p3, :cond_f

    .line 2358
    array-length p3, v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_f
    add-int/lit8 p3, p1, 0x1

    .line 2360
    aput p2, v0, p1

    move p1, p3

    move p2, v2

    const/4 p3, 0x1

    goto/16 :goto_0
.end method

.method private final _finishAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2662
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icUTF8:[I

    .line 2664
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 2665
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 2666
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2667
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    add-int/lit8 v4, v4, -0x5

    .line 2673
    :cond_0
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v6, 0x2d

    if-lt v3, v5, :cond_1

    .line 2674
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2675
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2676
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2677
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2679
    :cond_1
    array-length v5, v1

    const/4 v7, 0x0

    if-lt v2, v5, :cond_2

    .line 2680
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v2, 0x0

    .line 2683
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    array-length v8, v1

    sub-int/2addr v8, v2

    .line 2685
    invoke-static {v3, v8}, Lcom/fasterxml/jackson/core/util/InternalJacksonUtil;->addOverflowSafe(II)I

    move-result v8

    .line 2683
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v3, 0x1

    .line 2687
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 2688
    aget v10, v0, v9

    if-eqz v10, :cond_d

    const/16 v11, 0x22

    if-eq v9, v11, :cond_d

    const/4 v5, 0x1

    if-lt v8, v4, :cond_5

    .line 2702
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2703
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2704
    aget v1, v0, v9

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v8, v2, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-direct {p0, v9, v1, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitMultiByte(IIZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2705
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    .line 2706
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2708
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 2709
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 2710
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    goto :goto_0

    :cond_5
    if-eq v10, v5, :cond_b

    const/4 v5, 0x2

    if-eq v10, v5, :cond_a

    const/4 v5, 0x3

    if-eq v10, v5, :cond_9

    const/4 v5, 0x4

    if-eq v10, v5, :cond_7

    const/16 v3, 0x20

    if-ge v9, v3, :cond_6

    .line 2741
    const-string v3, "string value"

    invoke-virtual {p0, v9, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2744
    :cond_6
    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidChar(I)V

    :goto_2
    move v3, v8

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v3, 0x2

    .line 2727
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v6

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    add-int/lit8 v3, v3, 0x4

    .line 2728
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v8

    .line 2727
    invoke-direct {p0, v9, v6, v5, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_4(IIII)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v8, v5, 0xa

    const v9, 0xd800

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 2730
    aput-char v8, v1, v2

    .line 2731
    array-length v2, v1

    if-lt v6, v2, :cond_8

    .line 2732
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    move v2, v6

    :goto_3
    and-int/lit16 v5, v5, 0x3ff

    const v6, 0xdc00

    or-int v9, v5, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, 0x2

    .line 2724
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    invoke-direct {p0, v9, v6, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_3(III)I

    move-result v9

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x2

    .line 2721
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    invoke-direct {p0, v9, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_2(II)I

    move-result v9

    goto :goto_4

    .line 2716
    :cond_b
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2717
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeFastCharEscape()I

    move-result v9

    .line 2718
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2748
    :goto_4
    array-length v5, v1

    if-lt v2, v5, :cond_c

    .line 2749
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    goto :goto_5

    :cond_c
    move v7, v2

    :goto_5
    add-int/lit8 v2, v7, 0x1

    int-to-char v5, v9

    .line 2753
    aput-char v5, v1, v7

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x27

    if-ne v9, v3, :cond_e

    .line 2692
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2693
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2694
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_e
    add-int/lit8 v3, v2, 0x1

    int-to-char v9, v9

    .line 2696
    aput-char v9, v1, v2

    move v2, v3

    move v3, v8

    goto/16 :goto_1
.end method

.method private final _finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputProcessed:J

    const-wide/16 v3, 0x3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputProcessed:J

    .line 455
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xbf

    if-eq v0, v1, :cond_3

    .line 458
    const-string v1, "Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xbb

    if-eq v0, v1, :cond_3

    .line 463
    const-string v1, "Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 469
    :cond_4
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 470
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 471
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x34

    goto :goto_1

    :cond_0
    const/16 p2, 0x35

    .line 1041
    :goto_1
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1042
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 1043
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1045
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    const/16 p2, 0xa

    if-ne v0, p2, :cond_2

    .line 1048
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    .line 1049
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_2

    :cond_2
    const/16 p2, 0xd

    if-ne v0, p2, :cond_3

    .line 1051
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    .line 1052
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_2

    :cond_3
    const/16 p2, 0x9

    if-eq v0, p2, :cond_6

    .line 1054
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_6

    .line 1066
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private final _finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x36

    .line 1015
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1016
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 1017
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1022
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    .line 1023
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1026
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    .line 1027
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    .line 1034
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1030
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x23

    .line 985
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_YAML_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 988
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x37

    .line 989
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 990
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 991
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 996
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    .line 997
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1000
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    .line 1001
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    .line 1008
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1004
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2536
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icUTF8:[I

    .line 2538
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 2539
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 2540
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2541
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    add-int/lit8 v4, v4, -0x5

    .line 2548
    :cond_0
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v6, 0x28

    if-lt v3, v5, :cond_1

    .line 2549
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2550
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2551
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2552
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2554
    :cond_1
    array-length v5, v1

    const/4 v7, 0x0

    if-lt v2, v5, :cond_2

    .line 2555
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v2, 0x0

    .line 2558
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    array-length v8, v1

    sub-int/2addr v8, v2

    .line 2560
    invoke-static {v3, v8}, Lcom/fasterxml/jackson/core/util/InternalJacksonUtil;->addOverflowSafe(II)I

    move-result v8

    .line 2558
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v3, 0x1

    .line 2562
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 2563
    aget v10, v0, v9

    if-eqz v10, :cond_e

    const/16 v5, 0x22

    if-ne v9, v5, :cond_3

    .line 2571
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2572
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2573
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v5, 0x1

    if-lt v8, v4, :cond_6

    .line 2577
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2578
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2579
    aget v1, v0, v9

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v8, v2, :cond_4

    const/4 v7, 0x1

    :cond_4
    invoke-direct {p0, v9, v1, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitMultiByte(IIZ)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2580
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    .line 2581
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2583
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 2584
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 2585
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    goto :goto_0

    :cond_6
    if-eq v10, v5, :cond_c

    const/4 v5, 0x2

    if-eq v10, v5, :cond_b

    const/4 v5, 0x3

    if-eq v10, v5, :cond_a

    const/4 v5, 0x4

    if-eq v10, v5, :cond_8

    const/16 v3, 0x20

    if-ge v9, v3, :cond_7

    .line 2616
    const-string v3, "string value"

    invoke-virtual {p0, v9, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2619
    :cond_7
    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidChar(I)V

    :goto_2
    move v3, v8

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v3, 0x2

    .line 2602
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v6

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    add-int/lit8 v3, v3, 0x4

    .line 2603
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v8

    .line 2602
    invoke-direct {p0, v9, v6, v5, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_4(IIII)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v8, v5, 0xa

    const v9, 0xd800

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 2605
    aput-char v8, v1, v2

    .line 2606
    array-length v2, v1

    if-lt v6, v2, :cond_9

    .line 2607
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    move v2, v6

    :goto_3
    and-int/lit16 v5, v5, 0x3ff

    const v6, 0xdc00

    or-int v9, v5, v6

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v3, 0x2

    .line 2599
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    invoke-direct {p0, v9, v6, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_3(III)I

    move-result v9

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x2

    .line 2596
    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    invoke-direct {p0, v9, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_2(II)I

    move-result v9

    goto :goto_4

    .line 2591
    :cond_c
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2592
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeFastCharEscape()I

    move-result v9

    .line 2593
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2623
    :goto_4
    array-length v5, v1

    if-lt v2, v5, :cond_d

    .line 2624
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    goto :goto_5

    :cond_d
    move v7, v2

    :goto_5
    add-int/lit8 v2, v7, 0x1

    int-to-char v5, v9

    .line 2628
    aput-char v5, v1, v7

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v3, v2, 0x1

    int-to-char v9, v9

    .line 2566
    aput-char v9, v1, v2

    move v2, v3

    move v3, v8

    goto/16 :goto_1
.end method

.method private _finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2239
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    .line 2240
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v1

    .line 2245
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2246
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    .line 2247
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2248
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    const/16 p1, 0xa

    .line 2249
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2250
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2252
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 2253
    aget v3, v1, v2

    if-eqz v3, :cond_4

    if-lez p3, :cond_2

    .line 2272
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 2273
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 2275
    aput p2, v0, p1

    move p1, v1

    .line 2277
    :cond_2
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 2279
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2281
    :cond_3
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2256
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    const/4 v3, 0x4

    if-ge p3, v3, :cond_5

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    goto :goto_0

    .line 2262
    :cond_5
    array-length p3, v0

    if-lt p1, p3, :cond_6

    .line 2263
    array-length p3, v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_6
    add-int/lit8 p3, p1, 0x1

    .line 2265
    aput p2, v0, p1

    move p1, p3

    move p2, v2

    const/4 p3, 0x1

    goto :goto_0
.end method

.method private _handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x23

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2204
    :cond_1
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2206
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 2207
    invoke-direct {p0, v2, v2, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2199
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v3, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 2200
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2214
    :cond_4
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    int-to-char v0, p1

    .line 2218
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2222
    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 2224
    aget v0, v0, p1

    if-eqz v0, :cond_6

    .line 2225
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    .line 2228
    invoke-direct {p0, v2, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    .line 2082
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    .line 2085
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v4, 0x7

    if-lt v2, v3, :cond_0

    .line 2086
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    .line 2087
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2088
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    .line 2089
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2090
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v2

    .line 2093
    aget v3, v1, v2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v3, :cond_3

    if-ge p3, v5, :cond_1

    :goto_1
    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    goto :goto_0

    .line 2099
    :cond_1
    array-length p3, v0

    if-lt p1, p3, :cond_2

    .line 2100
    array-length p3, v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    move-object v0, p3

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 2102
    aput p2, v0, p1

    :goto_2
    move p1, p3

    move p2, v2

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_8

    if-lez p3, :cond_5

    .line 2172
    array-length v1, v0

    if-lt p1, v1, :cond_4

    .line 2173
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_4
    add-int/lit8 v1, p1, 0x1

    .line 2175
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_padLastQuad(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    .line 2177
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2179
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    .line 2181
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2183
    :cond_7
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    const/16 v3, 0x5c

    const/16 v7, 0x8

    if-eq v2, v3, :cond_9

    .line 2115
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_4

    .line 2118
    :cond_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeCharEscape()I

    move-result v2

    if-gez v2, :cond_a

    .line 2120
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2121
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    .line 2122
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    .line 2123
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2124
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    .line 2125
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2132
    :cond_a
    :goto_4
    array-length v3, v0

    if-lt p1, v3, :cond_b

    .line 2133
    array-length v3, v0

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    :cond_b
    const/16 v3, 0x7f

    if-le v2, v3, :cond_f

    const/4 v3, 0x0

    if-lt p3, v5, :cond_c

    add-int/lit8 p3, p1, 0x1

    .line 2138
    aput p2, v0, p1

    move p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_c
    const/16 v4, 0x800

    if-ge v2, v4, :cond_d

    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_d
    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int/2addr p2, v4

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v5, :cond_e

    add-int/lit8 p3, p1, 0x1

    .line 2151
    aput p2, v0, p1

    move p1, p3

    const/4 p3, 0x0

    goto :goto_5

    :cond_e
    move v3, p2

    :goto_5
    shl-int/lit8 p2, v3, 0x8

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr p2, v3

    add-int/2addr p3, v6

    :goto_6
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    :cond_f
    if-ge p3, v5, :cond_10

    goto/16 :goto_1

    :cond_10
    add-int/lit8 p3, p1, 0x1

    .line 2166
    aput p2, v0, p1

    goto/16 :goto_2
.end method

.method private final _parseMediumName(II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1986
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    add-int/lit8 v1, p1, 0x1

    .line 1989
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1990
    aget v3, v0, v2

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-nez v3, :cond_6

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    add-int/lit8 v2, p1, 0x2

    .line 1992
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1993
    aget v3, v0, v1

    if-nez v3, :cond_4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, p1, 0x3

    .line 1995
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1996
    aget v3, v0, v2

    if-nez v3, :cond_2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    const/4 v2, 0x4

    add-int/2addr p1, v2

    .line 1998
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1999
    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 2000
    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseMediumName2(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-ne v1, v5, :cond_1

    .line 2003
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2004
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v4

    :cond_2
    if-ne v2, v5, :cond_3

    .line 2009
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2010
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v4

    :cond_4
    if-ne v1, v5, :cond_5

    .line 2015
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2016
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v4

    :cond_6
    if-ne v2, v5, :cond_7

    .line 2021
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2022
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v4
.end method

.method private final _parseMediumName2(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2029
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icLatin1:[I

    add-int/lit8 v1, p1, 0x1

    .line 2032
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 2033
    aget v3, v0, v2

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_0

    .line 2035
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2036
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v4

    :cond_1
    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    add-int/lit8 v2, p1, 0x2

    .line 2041
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2042
    aget v3, v0, v1

    if-eqz v3, :cond_3

    if-ne v1, v5, :cond_2

    .line 2044
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2045
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v4

    :cond_3
    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, p1, 0x3

    .line 2050
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 2051
    aget v0, v0, v2

    if-eqz v0, :cond_5

    if-ne v2, v5, :cond_4

    .line 2053
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2054
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v4

    :cond_5
    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 2059
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v5, :cond_6

    .line 2061
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2062
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quad1:I

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v4
.end method

.method private final _skipWS(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 940
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    .line 941
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 943
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    .line 944
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 946
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwInvalidSpace(I)V

    .line 949
    :cond_3
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p1, v1, :cond_4

    .line 950
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p1, 0x0

    return p1

    .line 953
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result p1

    if-le p1, v0, :cond_0

    return p1
.end method

.method private final _startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1073
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1074
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1092
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/4 p1, 0x0

    return-object p1

    .line 1089
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1087
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1085
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1083
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1081
    :cond_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1079
    :cond_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final _startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xef

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 409
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    if-eq v0, v1, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    const/16 v0, 0x20

    if-gt p1, v0, :cond_7

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 417
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRow:I

    .line 418
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 420
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowAlt:I

    .line 421
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 423
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_throwInvalidSpace(I)V

    .line 426
    :cond_3
    :goto_1
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x3

    .line 427
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 428
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closed:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 432
    :cond_4
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_endOfInput:Z

    if-eqz p1, :cond_5

    .line 433
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 435
    :cond_5
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result p1

    goto :goto_0

    .line 439
    :cond_7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 488
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    .line 490
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 491
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 499
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 502
    :cond_2
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-gt p1, v0, :cond_3

    .line 503
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fastParseName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 505
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 508
    invoke-direct {p0, p1, p1, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 515
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 517
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 518
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x7d

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x23

    if-ne p1, v2, :cond_2

    .line 526
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 529
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 531
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 533
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 534
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v2, 0x4

    if-lt p1, v0, :cond_5

    .line 535
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 536
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 538
    :cond_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 539
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    if-gt v0, v1, :cond_6

    .line 541
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result v0

    if-gtz v0, :cond_6

    .line 543
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 544
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 547
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-eq v0, p1, :cond_8

    if-ne v0, v3, :cond_7

    .line 550
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    .line 551
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 554
    :cond_7
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 557
    :cond_8
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-gt p1, v0, :cond_9

    .line 558
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fastParseName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 560
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    .line 563
    invoke-direct {p0, p1, p1, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    .line 961
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 965
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v2, :cond_1

    .line 966
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    const/16 p1, 0x33

    .line 967
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 968
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 970
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 972
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 975
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    and-int/lit16 p1, v0, 0xff

    .line 977
    const-string v0, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final _startValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0xc

    if-gt p1, v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 583
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 584
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    .line 589
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x23

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x66

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x74

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 615
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 602
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 609
    :pswitch_3
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloatThatStartsWithPeriod()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 600
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 639
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 637
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 631
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 629
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 627
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 635
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 633
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 598
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 596
    :cond_b
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0xf

    if-gt p1, v0, :cond_0

    .line 826
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 828
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 829
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x23

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_7

    const/16 v0, 0x66

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x74

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 860
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 850
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 844
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 879
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 876
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 866
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 864
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 862
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 871
    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 868
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 842
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 840
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 838
    :cond_c
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 750
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 752
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 753
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x3a

    const/16 v3, 0x23

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_1

    .line 758
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 761
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 764
    :cond_2
    const-string v0, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 766
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 767
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v2, 0xc

    if-lt p1, v0, :cond_4

    .line 768
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 769
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 771
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 772
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    if-gt v0, v1, :cond_5

    .line 774
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result v0

    if-gtz v0, :cond_5

    .line 776
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 777
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 780
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-ne v0, p1, :cond_6

    .line 782
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_6
    if-eq v0, v3, :cond_e

    const/16 p1, 0x2b

    if-eq v0, p1, :cond_d

    const/16 p1, 0x2d

    if-eq v0, p1, :cond_c

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_b

    const/16 p1, 0x66

    if-eq v0, p1, :cond_a

    const/16 p1, 0x6e

    if-eq v0, p1, :cond_9

    const/16 p1, 0x74

    if-eq v0, p1, :cond_8

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_7

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 818
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 805
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 798
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 792
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 815
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 811
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 809
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 807
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 813
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 790
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 788
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 786
    :cond_e
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 653
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 654
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x23

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    if-eq p1, v2, :cond_5

    if-ne p1, v5, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p1, v4, :cond_2

    .line 662
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 665
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 668
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 670
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 674
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    .line 676
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 677
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v2, 0xf

    if-lt p1, v0, :cond_6

    .line 678
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 679
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 681
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    const/4 v6, 0x1

    add-int/2addr p1, v6

    .line 682
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    if-gt v0, v1, :cond_7

    .line 684
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_skipWS(I)I

    move-result v0

    if-gtz v0, :cond_7

    .line 686
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 687
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 690
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-ne v0, p1, :cond_8

    .line 692
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    if-eq v0, v3, :cond_13

    const/16 p1, 0x2b

    if-eq v0, p1, :cond_12

    const/16 p1, 0x2d

    if-eq v0, p1, :cond_11

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_10

    if-eq v0, v5, :cond_e

    const/16 p1, 0x66

    if-eq v0, p1, :cond_d

    const/16 p1, 0x6e

    if-eq v0, p1, :cond_c

    const/16 p1, 0x74

    if-eq v0, p1, :cond_b

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_a

    if-eq v0, v4, :cond_9

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 715
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 708
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 702
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 734
    :cond_9
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    .line 735
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 731
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 721
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 719
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 717
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 726
    :cond_e
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    .line 727
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 740
    :cond_f
    :goto_0
    invoke-virtual {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 723
    :cond_10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 700
    :cond_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 698
    :cond_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startPositiveNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 696
    :cond_13
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/16 v0, 0x20

    return v0
.end method

.method protected _finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v0, v1, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v0

    int-to-char v0, v0

    .line 1244
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1248
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->errorReportConfiguration()Lcom/fasterxml/jackson/core/ErrorReportConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/ErrorReportConfiguration;->getMaxErrorTokenLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected final _finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2384
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitEscaped(II)I

    move-result v0

    const/16 v1, 0x8

    if-gez v0, :cond_0

    .line 2386
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 2387
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2389
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2390
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_growNameDecodeBuffer([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    .line 2392
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 2393
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    const/16 v4, 0x7f

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v0, v4, :cond_5

    const/4 v4, 0x0

    if-lt v3, v5, :cond_2

    .line 2397
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    aput v2, v3, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    const/16 v7, 0x800

    if-ge v0, v7, :cond_3

    shl-int/2addr v2, v1

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    :goto_0
    or-int/2addr v2, v4

    add-int/2addr v3, v6

    goto :goto_2

    :cond_3
    shl-int/2addr v2, v1

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    or-int/2addr v2, v7

    add-int/2addr v3, v6

    if-lt v3, v5, :cond_4

    .line 2409
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    aput v2, v3, v7

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    shl-int/lit8 v2, v4, 0x8

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    goto :goto_0

    :goto_2
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_5
    if-ge v3, v5, :cond_6

    add-int/2addr v6, v3

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    goto :goto_3

    .line 2423
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadBuffer:[I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    aput v2, v1, v3

    .line 2427
    :goto_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    .line 2428
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2430
    :cond_7
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    .line 1879
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p2, v0, :cond_2

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1882
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, v0, :cond_1

    .line 1883
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    const/4 p1, 0x0

    .line 1884
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1885
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1887
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p2

    .line 1891
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object p1

    .line 1892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1893
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    :goto_0
    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v2, 0x39

    if-gt p2, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 1897
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 1898
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char p2, p2

    .line 1900
    aput-char p2, p1, v0

    .line 1901
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, v0, :cond_4

    .line 1902
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1903
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1904
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1906
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result p2

    move v0, v2

    goto :goto_0

    :cond_5
    and-int/lit16 p1, p2, 0xff

    if-nez v1, :cond_6

    .line 1911
    const-string p2, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1914
    :cond_6
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1915
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1917
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1918
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fractLength:I

    .line 1818
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 1819
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 1822
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    const/16 v7, 0x30

    if-lt v3, v7, :cond_2

    const/16 v7, 0x39

    if-gt v3, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1827
    array-length v6, v1

    if-lt v2, v6, :cond_0

    .line 1828
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    :cond_0
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    .line 1830
    aput-char v3, v1, v2

    .line 1831
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1832
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1833
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fractLength:I

    .line 1834
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1836
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    move v2, v6

    goto :goto_0

    :cond_2
    or-int/lit8 v7, v3, 0x22

    const/16 v8, 0x66

    if-ne v7, v8, :cond_3

    .line 1838
    const-string v6, "JSON does not support parsing numbers that have \'f\' or \'d\' suffixes"

    invoke-virtual {p0, v3, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_4

    .line 1840
    const-string v6, "Cannot parse number with more than one decimal point"

    invoke-virtual {p0, v3, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 1849
    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1850
    const-string v1, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1853
    :cond_6
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fractLength:I

    .line 1854
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    or-int/lit8 v0, v3, 0x20

    const/16 v1, 0x65

    if-ne v0, v1, :cond_8

    .line 1858
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1859
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1860
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_7

    const/16 v0, 0x1f

    .line 1861
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1862
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_7
    const/16 v0, 0x20

    .line 1864
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1869
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1870
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1872
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1873
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1163
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1164
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    .line 1165
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1167
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    if-ne p2, v0, :cond_2

    const/16 v0, 0x30

    if-lt v1, v0, :cond_1

    or-int/lit8 v0, v1, 0x20

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    .line 1170
    :cond_1
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1174
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    const/16 p3, 0x32

    .line 1180
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1181
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1182
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 1178
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    goto :goto_0
.end method

.method protected _finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1189
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateToken(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1191
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1192
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1201
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1202
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_nonStdTokenType:I

    .line 1203
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    const/16 p1, 0x13

    .line 1204
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1205
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1207
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    if-ne p2, v1, :cond_2

    const/16 v1, 0x30

    if-lt v2, v1, :cond_1

    or-int/lit8 v1, v2, 0x20

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 1210
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1214
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    const/16 p1, 0x32

    .line 1220
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1221
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 1218
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    goto :goto_0
.end method

.method protected _finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1231
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1232
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1689
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1692
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_1

    const/16 p1, 0x1a

    .line 1693
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1694
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1695
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1697
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    add-int/2addr v0, p2

    .line 1700
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1701
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1702
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    or-int/lit8 v2, v1, 0x20

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    add-int/2addr v0, p2

    .line 1708
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1709
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1710
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/2addr v0, p2

    .line 1722
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1723
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1724
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1714
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1715
    array-length v2, p1

    if-lt p2, v2, :cond_5

    .line 1718
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_5
    add-int/lit8 v2, p2, 0x1

    int-to-char v1, v1

    .line 1720
    aput-char v1, p1, p2

    move p2, v2

    goto :goto_0
.end method

.method protected _finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1628
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingPosNegZeroes(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNumberLeadingPosNegZeroes(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1639
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto :goto_1

    :cond_0
    const/16 p1, 0x18

    .line 1640
    :goto_1
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1641
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1643
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-ge v0, v5, :cond_3

    const/16 v7, 0x2e

    if-ne v0, v7, :cond_6

    .line 1646
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x2b

    .line 1647
    :goto_2
    aput-char v2, v7, v4

    .line 1648
    aput-char v5, v7, v6

    .line 1649
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1650
    invoke-virtual {p0, v7, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v7, 0x39

    if-le v0, v7, :cond_7

    or-int/lit8 v7, v0, 0x20

    const/16 v8, 0x65

    if-ne v7, v8, :cond_5

    .line 1654
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x2b

    .line 1655
    :goto_3
    aput-char v2, v7, v4

    .line 1656
    aput-char v5, v7, v6

    .line 1657
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1658
    invoke-virtual {p0, v7, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 p1, 0x7d

    if-eq v7, p1, :cond_6

    .line 1664
    const-string p1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1683
    :cond_6
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1684
    const-string p1, "0"

    invoke-virtual {p0, v4, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1670
    :cond_7
    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v8, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v7, v8

    if-nez v7, :cond_8

    .line 1671
    const-string v7, "Leading zeroes not allowed"

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_8
    if-ne v0, v5, :cond_9

    goto/16 :goto_0

    .line 1676
    :cond_9
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v2, 0x2b

    .line 1678
    :goto_4
    aput-char v2, v5, v4

    int-to-char p1, v0

    .line 1679
    aput-char p1, v5, v6

    .line 1680
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1681
    invoke-virtual {p0, v5, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNumberLeadingPosZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1632
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingPosNegZeroes(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    .line 1582
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1583
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 1588
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1589
    aput-char v2, v4, v1

    .line 1590
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1591
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x39

    if-le v0, v4, :cond_4

    or-int/lit8 v4, v0, 0x20

    const/16 v5, 0x65

    if-ne v4, v5, :cond_2

    .line 1595
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1596
    aput-char v2, v4, v1

    .line 1597
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1598
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x7d

    if-eq v4, v2, :cond_3

    .line 1604
    const-string v2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1622
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1623
    const-string v0, "0"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1610
    :cond_4
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v5, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    .line 1611
    const-string v4, "Leading zeroes not allowed"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_5
    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 1616
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    int-to-char v0, v0

    .line 1618
    aput-char v0, v2, v1

    .line 1619
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1620
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1520
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberPlusMinus(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNumberPlus(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberPlusMinus(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNumberPlusMinus(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const-string v1, "expected digit (0-9) for valid numeric value"

    const/4 v2, 0x2

    const-string v3, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    const/4 v4, 0x1

    const/16 v5, 0x2b

    const/16 v6, 0x30

    if-gt p1, v6, :cond_7

    if-ne p1, v6, :cond_2

    if-eqz p2, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1535
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1536
    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1538
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingPosZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v6, 0x2e

    if-ne p1, v6, :cond_5

    .line 1540
    sget-object v6, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_3

    .line 1542
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1545
    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1546
    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1548
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingPosZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 1555
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const/16 v6, 0x39

    if-le p1, v6, :cond_b

    const/16 v6, 0x49

    if-ne p1, v6, :cond_9

    if-eqz p2, :cond_8

    const/4 p1, 0x3

    goto :goto_1

    :cond_8
    const/4 p1, 0x2

    .line 1559
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    move-object v0, v1

    .line 1564
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    :cond_b
    :goto_3
    if-nez p2, :cond_c

    .line 1566
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1567
    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1569
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    if-eqz p2, :cond_d

    const/16 v5, 0x2d

    :cond_d
    const/4 p2, 0x0

    .line 1570
    aput-char v5, v0, p2

    int-to-char p1, p1

    .line 1571
    aput-char p1, v0, v4

    .line 1572
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1573
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected final _finishToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_3

    const/16 v3, 0x2d

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 317
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/4 v0, 0x0

    return-object v0

    .line 315
    :pswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 311
    :pswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 309
    :pswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 302
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitUTF8_4(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 280
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitUTF8_3(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 272
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 275
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeUTF8_2(II)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 264
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_4

    .line 265
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_a
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_decodeSplitEscaped(II)I

    move-result v0

    if-gez v0, :cond_5

    .line 289
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 293
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_6

    .line 294
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 296
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 258
    :pswitch_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 252
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberPlus(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_14
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_nonStdTokenType:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_15
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_16
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_17
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 227
    :pswitch_18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_19
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_1a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_1b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 220
    :pswitch_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 218
    :pswitch_1d
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 216
    :pswitch_1e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 214
    :pswitch_1f
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 210
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 208
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 206
    :cond_9
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final _finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 335
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": was expecting rest of token (internal state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    .line 377
    :pswitch_0
    const-string v0, ": was expecting fraction after exponent marker"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 385
    :pswitch_1
    const-string v0, ": was expecting closing \'*/\' for comment"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 390
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 371
    :pswitch_3
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 374
    :pswitch_4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 363
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 366
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 368
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 358
    :pswitch_6
    const-string v0, "0"

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_nonStdTokenType:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 345
    :pswitch_9
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 343
    :pswitch_a
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected _reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    .line 1266
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_validJsonTokenList()Ljava/lang/String;

    move-result-object v0

    .line 1265
    const-string v1, "Unrecognized token \'%s\': was expecting %s"

    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1267
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected _startAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2634
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2636
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 2637
    sget-object v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icUTF8:[I

    .line 2639
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 2641
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x27

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2643
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2644
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2645
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2648
    :cond_0
    aget v6, v2, v5

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 2652
    aput-char v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 2654
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2655
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2656
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x4

    .line 1105
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1106
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    .line 1107
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x3

    .line 1108
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x4

    .line 1109
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 1110
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 1112
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1113
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x12

    .line 1117
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1118
    const-string v0, "false"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x39

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x2e

    if-ne p3, v3, :cond_5

    .line 1731
    array-length p3, p1

    if-lt p2, p3, :cond_0

    .line 1732
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_0
    add-int/lit8 p3, p2, 0x1

    .line 1734
    aput-char v3, p1, p2

    move p2, p3

    const/4 p3, 0x0

    .line 1736
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 1737
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    const/16 p1, 0x1e

    .line 1738
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1739
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fractLength:I

    .line 1740
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1742
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    if-lt v3, v1, :cond_4

    if-le v3, v0, :cond_2

    goto :goto_1

    .line 1753
    :cond_2
    array-length v4, p1

    if-lt p2, v4, :cond_3

    .line 1754
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_3
    add-int/lit8 v4, p2, 0x1

    int-to-char v3, v3

    .line 1756
    aput-char v3, p1, p2

    add-int/lit8 p3, p3, 0x1

    move p2, v4

    goto :goto_0

    :cond_4
    :goto_1
    and-int/lit16 v3, v3, 0xff

    if-nez p3, :cond_6

    .line 1747
    sget-object v4, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1748
    const-string v4, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v3, p3

    const/4 p3, 0x0

    .line 1760
    :cond_6
    :goto_2
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_fractLength:I

    or-int/lit8 p3, v3, 0x20

    const/16 v4, 0x65

    if-ne p3, v4, :cond_10

    .line 1763
    array-length p3, p1

    if-lt p2, p3, :cond_7

    .line 1764
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_7
    add-int/lit8 p3, p2, 0x1

    int-to-char v3, v3

    .line 1766
    aput-char v3, p1, p2

    .line 1767
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v3, v4, :cond_8

    .line 1768
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    const/16 p1, 0x1f

    .line 1769
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1770
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1771
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1773
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x20

    if-eq v3, v4, :cond_a

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    move p2, p3

    goto :goto_5

    .line 1775
    :cond_a
    :goto_4
    array-length v4, p1

    if-lt p3, v4, :cond_b

    .line 1776
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_b
    add-int/lit8 p2, p2, 0x2

    int-to-char v3, v3

    .line 1778
    aput-char v3, p1, p3

    .line 1779
    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p3, v3, :cond_c

    .line 1780
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1781
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1782
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1783
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1785
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    :goto_5
    if-lt v3, v1, :cond_f

    if-gt v3, v0, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 1789
    array-length p3, p1

    if-lt p2, p3, :cond_d

    .line 1790
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_d
    add-int/lit8 p3, p2, 0x1

    int-to-char v3, v3

    .line 1792
    aput-char v3, p1, p2

    .line 1793
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p2, v3, :cond_e

    .line 1794
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1795
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1796
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1797
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1799
    :cond_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextSignedByteFromBuffer()B

    move-result v3

    goto :goto_3

    :cond_f
    and-int/lit16 p1, v3, 0xff

    if-nez v2, :cond_10

    .line 1804
    const-string p3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1808
    :cond_10
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1809
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1811
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_expLength:I

    .line 1812
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _startFloatThatStartsWithPeriod()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1279
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    .line 1280
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1281
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    const/16 v2, 0x2e

    .line 1282
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1337
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    .line 1338
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x17

    .line 1339
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1340
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v1

    .line 1343
    const-string v2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/16 v3, 0x39

    const/4 v4, 0x2

    const/16 v5, 0x30

    if-gt v1, v5, :cond_2

    if-ne v1, v5, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1348
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_4

    const/16 v6, 0x49

    if-ne v1, v6, :cond_3

    const/4 v0, 0x3

    .line 1351
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1353
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1355
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x2d

    .line 1356
    aput-char v7, v2, v6

    int-to-char v1, v1

    .line 1357
    aput-char v1, v2, v0

    .line 1358
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v7, 0x1a

    if-lt v1, v6, :cond_5

    .line 1359
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1360
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1361
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1362
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1364
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    :goto_1
    if-ge v1, v5, :cond_6

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_7

    add-int/lit8 v3, v4, -0x1

    .line 1370
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1371
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1372
    invoke-virtual {p0, v2, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_6
    if-le v1, v3, :cond_8

    or-int/lit8 v3, v1, 0x20

    const/16 v5, 0x65

    if-ne v3, v5, :cond_7

    add-int/lit8 v3, v4, -0x1

    .line 1378
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1379
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1380
    invoke-virtual {p0, v2, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_7
    add-int/lit8 v0, v4, -0x1

    .line 1396
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1397
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1398
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1384
    :cond_8
    array-length v6, v2

    if-lt v4, v6, :cond_9

    .line 1386
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v2

    :cond_9
    add-int/lit8 v6, v4, 0x1

    int-to-char v1, v1

    .line 1388
    aput-char v1, v2, v4

    .line 1389
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v1, v4, :cond_a

    .line 1390
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1391
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1392
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1394
    :cond_a
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v4, v6

    goto :goto_1
.end method

.method protected _startNullToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    .line 1142
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1143
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    .line 1144
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x3

    .line 1145
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1146
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 1148
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1149
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x10

    .line 1153
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1154
    const-string v0, "null"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1476
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    .line 1477
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1478
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 1485
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 1489
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1490
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1491
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1492
    aput-char v3, v1, v2

    .line 1493
    invoke-virtual {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    or-int/lit8 v5, v0, 0x20

    const/16 v6, 0x65

    if-ne v5, v6, :cond_2

    .line 1497
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1498
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1499
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1500
    aput-char v3, v1, v2

    .line 1501
    invoke-virtual {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x7d

    if-eq v5, v1, :cond_3

    .line 1507
    const-string v1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1515
    :cond_3
    const-string v0, "0"

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1512
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startPositiveNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1403
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    .line 1404
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x16

    .line 1405
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1406
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1408
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v1

    .line 1409
    const-string v2, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    const-string v3, "expected digit (0-9) to follow plus sign, for valid numeric value"

    const/16 v4, 0x39

    const/16 v5, 0x2b

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-gt v1, v6, :cond_3

    if-ne v1, v6, :cond_2

    .line 1411
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    invoke-virtual {p0, v5, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1414
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNumberLeadingPosZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1417
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-le v1, v4, :cond_5

    const/16 v8, 0x49

    if-ne v1, v8, :cond_4

    .line 1420
    invoke-virtual {p0, v7, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1422
    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1424
    :cond_5
    :goto_0
    sget-object v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1425
    invoke-virtual {p0, v5, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedNumberChar(ILjava/lang/String;)Ljava/lang/Object;

    .line 1427
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1428
    aput-char v5, v2, v0

    int-to-char v0, v1

    const/4 v1, 0x1

    .line 1429
    aput-char v0, v2, v1

    .line 1430
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v5, 0x1a

    if-lt v0, v3, :cond_7

    .line 1431
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1432
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1433
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1434
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1436
    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    :goto_1
    if-ge v0, v6, :cond_8

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_9

    add-int/lit8 v3, v7, -0x1

    .line 1442
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1443
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1444
    invoke-virtual {p0, v2, v7, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_8
    if-le v0, v4, :cond_a

    or-int/lit8 v3, v0, 0x20

    const/16 v4, 0x65

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v7, -0x1

    .line 1450
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1451
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1452
    invoke-virtual {p0, v2, v7, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_9
    add-int/lit8 v0, v7, -0x1

    .line 1468
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1469
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1470
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1456
    :cond_a
    array-length v3, v2

    if-lt v7, v3, :cond_b

    .line 1458
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v2

    :cond_b
    add-int/lit8 v3, v7, 0x1

    int-to-char v0, v0

    .line 1460
    aput-char v0, v2, v7

    .line 1461
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v7, :cond_c

    .line 1462
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1463
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1466
    :cond_c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    move v7, v3

    goto :goto_1
.end method

.method protected _startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1287
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numberNegative:Z

    .line 1288
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    int-to-char p1, p1

    .line 1289
    aput-char p1, v1, v0

    .line 1291
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    .line 1292
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1293
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1294
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1299
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x30

    if-ge p1, v4, :cond_1

    const/16 v2, 0x2e

    if-ne p1, v2, :cond_2

    .line 1303
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1304
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1305
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v4, 0x39

    if-le p1, v4, :cond_3

    or-int/lit8 v2, p1, 0x20

    const/16 v4, 0x65

    if-ne v2, v4, :cond_2

    .line 1311
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1312
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1313
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_intLength:I

    .line 1331
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1332
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1317
    :cond_3
    array-length v4, v1

    if-lt v0, v4, :cond_4

    .line 1320
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    :cond_4
    add-int/lit8 v4, v0, 0x1

    int-to-char p1, p1

    .line 1322
    aput-char p1, v1, v0

    .line 1323
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt p1, v0, :cond_5

    .line 1324
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1325
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1326
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_updateTokenToNA()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1328
    :cond_5
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    move v0, v4

    goto :goto_0
.end method

.method protected _startString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2507
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2509
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 2510
    sget-object v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_icUTF8:[I

    .line 2512
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 2514
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 2515
    aget v6, v2, v5

    if-eqz v6, :cond_0

    const/16 v1, 0x22

    if-ne v5, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2517
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2518
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2519
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 2524
    aput-char v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 2526
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2527
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 2528
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    .line 1124
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1125
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x2

    .line 1126
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x3

    .line 1127
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 1128
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getByteFromBuffer(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 1130
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 1131
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x11

    .line 1135
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_minorState:I

    .line 1136
    const-string v0, "true"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x27

    if-eq p2, p1, :cond_5

    const/16 p1, 0x49

    const/4 v0, 0x1

    if-eq p2, p1, :cond_4

    const/16 p1, 0x4e

    if-eq p2, p1, :cond_3

    const/16 p1, 0x5d

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7d

    if-eq p2, p1, :cond_6

    const/16 p1, 0x2b

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 918
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 892
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 901
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result p1

    if-nez p1, :cond_6

    .line 902
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_MISSING:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 903
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    .line 904
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 920
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 922
    :cond_4
    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 913
    :cond_5
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_features:I

    sget v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 914
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 925
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "expected a valid value "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_validJsonValueList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public endOfInput()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_endOfInput:Z

    return-void
.end method

.method protected abstract getByteFromBuffer(I)B
.end method

.method protected abstract getNextSignedByteFromBuffer()B
.end method

.method protected abstract getNextUnsignedByteFromBuffer()I
.end method

.method public final needMoreInput()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_endOfInput:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputEnd:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 120
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_closed:Z

    if-eqz v0, :cond_0

    return-object v2

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_endOfInput:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 132
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_finishToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_numTypesValid:I

    .line 141
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_inputPtr:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_tokenInputTotal:J

    .line 143
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_binaryValue:[B

    .line 144
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->getNextUnsignedByteFromBuffer()I

    move-result v0

    .line 146
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_majorState:I

    packed-switch v1, :pswitch_data_0

    .line 169
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    return-object v2

    .line 165
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingUtf8JsonParserBase;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
