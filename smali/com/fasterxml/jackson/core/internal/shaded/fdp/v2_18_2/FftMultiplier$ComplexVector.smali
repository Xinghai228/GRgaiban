.class final Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;
.super Ljava/lang/Object;
.source "FftMultiplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComplexVector"
.end annotation


# static fields
.field private static final COMPLEX_SIZE_SHIFT:I = 0x1

.field static final IMAG:I = 0x1

.field static final REAL:I


# instance fields
.field private final a:[D

.field private final length:I

.field private final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shl-int/lit8 v0, p1, 0x1

    .line 763
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    .line 764
    iput p1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    const/4 p1, 0x0

    .line 765
    iput p1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;II)V
    .locals 0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p3, p2

    .line 776
    iput p3, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    .line 777
    iget-object p1, p1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    iput-object p1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p2, 0x1

    .line 778
    iput p1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;)I
    .locals 0

    .line 739
    iget p0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    return p0
.end method

.method private imagIdx(I)I
    .locals 1

    shl-int/lit8 p1, p1, 0x1

    .line 848
    iget v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private realIdx(I)I
    .locals 1

    shl-int/lit8 p1, p1, 0x1

    .line 949
    iget v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method add(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 6

    .line 782
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v2, v0, v1

    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 783
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    iget-wide v3, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    add-double/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method addInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 5

    .line 787
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v1, v0, v1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->real(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 788
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imag(I)D

    move-result-wide p1

    add-double/2addr v1, p1

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method addTimesIInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v1, v0, v1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imag(I)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 793
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->real(I)D

    move-result-wide p1

    add-double/2addr v1, p1

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method applyInverseWeights(Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 801
    iget v2, v1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    .line 802
    iget-object v1, v1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    .line 803
    iget v3, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    iget v4, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    add-int/2addr v4, v3

    shl-int/lit8 v4, v4, 0x1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 807
    iget-object v5, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v12, v5, v3

    add-int/lit8 v14, v3, 0x1

    .line 808
    aget-wide v15, v5, v14

    .line 809
    aget-wide v8, v1, v2

    add-int/lit8 v17, v2, 0x1

    aget-wide v6, v1, v17

    mul-double v10, v15, v6

    move-wide v6, v12

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 810
    iget-object v5, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    neg-double v6, v12

    aget-wide v8, v1, v17

    aget-wide v10, v1, v2

    mul-double v10, v10, v15

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v5, v14

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method applyWeights(Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;)V
    .locals 9

    .line 823
    iget v0, p1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    .line 824
    iget-object p1, p1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    .line 825
    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    iget v2, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 827
    iget-object v3, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v4, v3, v1

    .line 828
    aget-wide v6, p1, v0

    mul-double v6, v6, v4

    aput-wide v6, v3, v1

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, 0x1

    .line 829
    aget-wide v7, p1, v7

    mul-double v4, v4, v7

    aput-wide v4, v3, v6

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method copyInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v1, v0, v1

    iput-wide v1, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 836
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    iput-wide v1, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method imag(I)D
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method imag(ID)V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    aput-wide p2, v0, p1

    return-void
.end method

.method multiply(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 856
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v0

    .line 857
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    .line 858
    iget-object v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v8, v1, v0

    .line 859
    aget-wide v10, v1, p1

    .line 860
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    neg-double v2, v10

    iget-wide v6, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v6, v6, v2

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 861
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    iget-wide v1, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v6, v10, v1

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method multiplyByIAnd(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 869
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v0

    .line 870
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    .line 871
    iget-object v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v2, v1, v0

    .line 872
    aget-wide v4, v1, p1

    neg-double v6, v2

    .line 873
    iget-wide v8, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    neg-double v4, v4

    iget-wide v10, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v10, v10, v4

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 874
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    iget-wide v6, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    iget-wide v8, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v8, v8, v4

    move-wide v4, v6

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method multiplyConjugate(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 882
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v0

    .line 883
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    .line 884
    iget-object v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v8, v1, v0

    .line 885
    aget-wide v10, v1, p1

    .line 886
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    iget-wide v2, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v6, v10, v2

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 887
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    neg-double v1, v8

    iget-wide v3, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    iget-wide v5, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v5, v5, v10

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method multiplyConjugateInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 891
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v8, v0, v1

    .line 892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v10, v0, p1

    .line 893
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    iget-wide v0, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v6, v10, v0

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    neg-double v2, v8

    .line 894
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    iget-wide p1, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v6, v10, p1

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method multiplyConjugateTimesI(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 903
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v0

    .line 904
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    .line 905
    iget-object v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v2, v1, v0

    .line 906
    aget-wide v4, v1, p1

    neg-double v2, v2

    .line 907
    iget-wide v8, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    iget-wide v6, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v10, v4, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 908
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    iget-wide v8, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    neg-double v4, v4

    iget-wide v6, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v10, v4, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method multiplyInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 12

    .line 912
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v8, v0, v1

    .line 913
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v10, v0, p1

    .line 914
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    neg-double v0, v10

    iget-wide v2, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    mul-double v6, v0, v2

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 915
    iget-wide v4, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    iget-wide p1, p2, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    mul-double v6, v10, p1

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method multiplyPointwise(Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 921
    iget v2, v1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    .line 922
    iget-object v1, v1, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    .line 923
    iget v3, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    iget v4, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    add-int/2addr v4, v3

    shl-int/lit8 v4, v4, 0x1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 926
    iget-object v5, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v12, v5, v3

    add-int/lit8 v14, v3, 0x1

    .line 927
    aget-wide v10, v5, v14

    .line 928
    aget-wide v15, v1, v2

    add-int/lit8 v6, v2, 0x1

    .line 929
    aget-wide v17, v1, v6

    neg-double v6, v10

    mul-double v19, v6, v17

    move-wide v6, v12

    move-wide v8, v15

    move-wide/from16 v21, v10

    move-wide/from16 v10, v19

    .line 930
    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 931
    iget-object v5, v0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    mul-double v10, v21, v15

    move-wide v6, v12

    move-wide/from16 v8, v17

    invoke-static/range {v6 .. v11}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v6

    aput-wide v6, v5, v14

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method part(II)D
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method real(I)D
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method real(ID)V
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    shl-int/lit8 p1, p1, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    add-int/2addr p1, v1

    aput-wide p2, v0, p1

    return-void
.end method

.method set(IDD)V
    .locals 1

    .line 953
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result p1

    .line 954
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aput-wide p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 955
    aput-wide p4, v0, p1

    return-void
.end method

.method squarePointwise()V
    .locals 14

    .line 964
    iget v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->offset:I

    iget v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->length:I

    add-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 966
    iget-object v2, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v9, v2, v0

    add-int/lit8 v11, v0, 0x1

    .line 967
    aget-wide v12, v2, v11

    neg-double v3, v12

    mul-double v7, v3, v12

    move-wide v3, v9

    move-wide v5, v9

    .line 968
    invoke-static/range {v3 .. v8}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleSwar;->fma(DDD)D

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 969
    iget-object v2, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v3

    mul-double v9, v9, v12

    aput-wide v9, v2, v11

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method subtractInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 5

    .line 974
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v1, v0, v1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->real(I)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 975
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imag(I)D

    move-result-wide p1

    sub-double/2addr v1, p1

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method subtractTimesIInto(ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;ILcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;)V
    .locals 5

    .line 979
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v1

    aget-wide v1, v0, v1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imag(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->real:D

    .line 980
    iget-object v0, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    aget-wide v1, v0, p1

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->real(I)D

    move-result-wide p1

    sub-double/2addr v1, p1

    iput-wide v1, p4, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$MutableComplex;->imag:D

    return-void
.end method

.method timesTwoToThe(II)V
    .locals 8

    .line 984
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->realIdx(I)I

    move-result v0

    .line 985
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->imagIdx(I)I

    move-result p1

    .line 986
    iget-object v1, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    aget-wide v2, v1, v0

    .line 987
    aget-wide v4, v1, p1

    int-to-long v6, p2

    .line 988
    invoke-static {v2, v3, v6, v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleMath;->fastScalb(DJ)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 989
    iget-object p2, p0, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FftMultiplier$ComplexVector;->a:[D

    invoke-static {v4, v5, v6, v7}, Lcom/fasterxml/jackson/core/internal/shaded/fdp/v2_18_2/FastDoubleMath;->fastScalb(DJ)D

    move-result-wide v0

    aput-wide v0, p2, p1

    return-void
.end method
