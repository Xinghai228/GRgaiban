.class public Lio/github/lazyimmortal/sesame/util/AverageMath;
.super Ljava/lang/Object;
.source "AverageMath.java"


# instance fields
.field private average:D

.field private final queue:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/lazyimmortal/sesame/util/CircularFifoQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sum:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-direct {v0, p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;-><init>(I)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->queue:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    .line 14
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->average:D

    return-void
.end method


# virtual methods
.method public averageDouble()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->average:D

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .line 39
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->queue:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->clear()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    .line 41
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->average:D

    return-void
.end method

.method public getAverageInteger()I
    .locals 2

    .line 35
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->average:D

    double-to-int v0, v0

    return v0
.end method

.method public nextDouble(I)D
    .locals 5

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->queue:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 20
    iget-wide v1, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v3, v0

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    .line 22
    :cond_0
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->sum:D

    .line 23
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->queue:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/util/AverageMath;->average:D

    return-wide v0
.end method

.method public nextInteger(I)I
    .locals 2

    .line 27
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/util/AverageMath;->nextDouble(I)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method
