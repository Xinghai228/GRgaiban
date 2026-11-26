.class public Lio/github/lazyimmortal/sesame/util/RandomUtil;
.super Ljava/lang/Object;
.source "RandomUtil.java"


# static fields
.field private static final rnd:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delay()I
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x12c

    .line 10
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static getRandom(I)Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 39
    sget-object v2, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 48
    sget-object v2, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 49
    const-string v3, "abcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomUUID()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nextDouble()D
    .locals 2

    .line 33
    sget-object v0, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextInt(II)I
    .locals 1

    if-lt p0, p1, :cond_0

    return p0

    :cond_0
    sub-int/2addr p1, p0

    if-gtz p1, :cond_1

    return p0

    .line 19
    :cond_1
    sget-object v0, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static nextLong()J
    .locals 2

    .line 23
    sget-object v0, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    return-wide p0

    :cond_0
    sub-long/2addr p2, p0

    .line 29
    sget-object v0, Lio/github/lazyimmortal/sesame/util/RandomUtil;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    rem-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method
