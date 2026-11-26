.class Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;
.super Ljava/lang/Object;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field final synthetic this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)V
    .locals 1

    .line 355
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$000(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 359
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$100(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)Z

    move-result p1

    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 363
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->isFirst:Z

    if-nez v0, :cond_1

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->isFirst:Z

    .line 372
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 373
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$300(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    .line 374
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 369
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 379
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 384
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$000(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 385
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 386
    iput v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    return-void

    .line 390
    :cond_0
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 391
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$000(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v2

    iget v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v6, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 396
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 397
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$500(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 398
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_2
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v3, v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$600(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    move-result v3

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    .line 402
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$300(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    move-result v0

    goto :goto_0

    .line 407
    :cond_3
    :goto_1
    iput v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 408
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$600(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$202(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    .line 409
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 410
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    invoke-static {v0, v4}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$102(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;Z)Z

    .line 411
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->this$0:Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->access$600(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;->index:I

    return-void

    .line 380
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
