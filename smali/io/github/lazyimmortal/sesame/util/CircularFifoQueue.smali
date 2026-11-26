.class public Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 44
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    .line 32
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    .line 35
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    if-lez p1, :cond_0

    .line 58
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 59
    array-length p1, p1

    iput p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;-><init>(I)V

    .line 71
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    return p0
.end method

.method static synthetic access$100(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    return p0
.end method

.method static synthetic access$102(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    return p0
.end method

.method static synthetic access$202(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I
    .locals 0

    .line 13
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    return p0
.end method

.method static synthetic access$600(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;I)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 343
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 328
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 99
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 102
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iput v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    .line 105
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    if-eqz p1, :cond_2

    .line 107
    iput v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    goto :goto_2

    .line 109
    :cond_2
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 83
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 84
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 230
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    aput-object p1, v0, v1

    .line 232
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    if-lt v2, p1, :cond_1

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    .line 236
    :cond_1
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 237
    iput-boolean v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    :cond_2
    return v1

    .line 223
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to add null object to queue"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    .line 182
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    .line 183
    iput v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    .line 184
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 258
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    rem-int/2addr v0, p1

    .line 259
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    .line 253
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    .line 254
    const-string p1, "The specified index (%1$d) is outside the available range [0, %2$d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAtFullCapacity()Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->size()I

    move-result v0

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 355
    new-instance v0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue$1;-><init>(Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 173
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    aput-object p1, v1, v2

    .line 201
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    if-lt v3, p1, :cond_1

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    .line 205
    :cond_1
    iget p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    :cond_2
    return-object v0

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to add null object to queue"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 309
    iput v3, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 311
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 312
    iput v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    .line 314
    :cond_0
    iput-boolean v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    :cond_1
    return-object v2

    .line 304
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 123
    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->end:I

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->start:I

    if-ge v0, v1, :cond_0

    .line 124
    iget v2, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 126
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->full:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/CircularFifoQueue;->maxElements:I

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    sub-int v2, v0, v1

    :goto_0
    return v2
.end method
