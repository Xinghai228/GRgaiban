.class public Lio/github/lazyimmortal/sesame/entity/AlipayVersion;
.super Ljava/lang/Object;
.source "AlipayVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/github/lazyimmortal/sesame/entity/AlipayVersion;",
        ">;"
    }
.end annotation


# instance fields
.field private final versionArray:[Ljava/lang/Integer;

.field private final versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionString:Ljava/lang/String;

    .line 14
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    array-length v0, p1

    .line 16
    new-array v1, v0, [Ljava/lang/Integer;

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 19
    :try_start_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lio/github/lazyimmortal/sesame/entity/AlipayVersion;)I
    .locals 9

    .line 28
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    array-length v0, v0

    .line 29
    iget-object v1, p1, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    array-length v1, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 43
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    aget-object v5, v5, v3

    .line 44
    iget-object v6, p1, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    aget-object v6, v6, v3

    .line 45
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_2

    return v2

    .line 47
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->compareTo(Lio/github/lazyimmortal/sesame/entity/AlipayVersion;)I

    move-result p1

    return p1
.end method

.method public getVersionArray()[Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionArray:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->versionString:Ljava/lang/String;

    return-object v0
.end method
