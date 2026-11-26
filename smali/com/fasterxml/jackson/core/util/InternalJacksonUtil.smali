.class public abstract Lcom/fasterxml/jackson/core/util/InternalJacksonUtil;
.super Ljava/lang/Object;
.source "InternalJacksonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOverflowSafe(II)I
    .locals 0

    add-int/2addr p0, p1

    if-gez p0, :cond_0

    const p0, 0x7fffffff

    :cond_0
    return p0
.end method
