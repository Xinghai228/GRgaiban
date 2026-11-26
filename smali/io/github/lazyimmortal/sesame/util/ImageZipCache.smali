.class public Lio/github/lazyimmortal/sesame/util/ImageZipCache;
.super Ljava/lang/Object;
.source "ImageZipCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageZipCache"

.field private static final downloadPool:Ljava/util/concurrent/ExecutorService;

.field private static final writeLock:Ljava/lang/Object;

.field private static final writer:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final zipFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 40
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->downloadPool:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writer:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    return-void
.end method

.method private cachedDigests()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 144
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 151
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 156
    :goto_1
    :try_start_2
    const-string v3, "ImageZipCache"

    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 158
    :cond_2
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return-object v0

    :catchall_2
    move-exception v0

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 159
    throw v0
.end method

.method private static closeQuietly(Ljava/util/zip/ZipFile;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 289
    new-array v0, v0, [B

    .line 291
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 308
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 309
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    .line 312
    const-string v6, "%02x"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 316
    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static digestOfEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static download(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 230
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x1388

    .line 236
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 237
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 238
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v0

    .line 241
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 242
    :try_start_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 243
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    if-eqz p0, :cond_4

    .line 249
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 241
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object p0, v0

    .line 245
    :goto_1
    :try_start_7
    const-string v2, "ImageZipCache"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p0, :cond_6

    .line 249
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    :cond_7
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method private static entryName(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->sniffExt([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$predownload$0(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->download(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 280
    new-array v1, v1, [B

    .line 282
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 283
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private readEntry(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 124
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 125
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 127
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    :try_start_2
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 131
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :cond_3
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_4

    .line 129
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v1, v0

    .line 135
    :goto_1
    :try_start_6
    const-string v2, "ImageZipCache"

    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 137
    :cond_5
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return-object v0

    :catchall_4
    move-exception p1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 138
    throw p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private static sniffExt([B)Ljava/lang/String;
    .locals 11

    .line 256
    const-string v0, "img"

    if-eqz p0, :cond_5

    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 259
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x89

    const/16 v4, 0x47

    const/16 v5, 0x50

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v2, p0, v8

    if-ne v2, v5, :cond_1

    aget-byte v2, p0, v7

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_1

    aget-byte v2, p0, v6

    if-ne v2, v4, :cond_1

    .line 260
    const-string p0, "png"

    return-object p0

    :cond_1
    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    .line 262
    aget-byte v2, p0, v8

    and-int/2addr v2, v3

    const/16 v9, 0xd8

    if-ne v2, v9, :cond_2

    aget-byte v2, p0, v7

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 263
    const-string p0, "jpg"

    return-object p0

    :cond_2
    const/16 v2, 0x49

    const/16 v3, 0x46

    if-ne v1, v4, :cond_3

    .line 265
    aget-byte v4, p0, v8

    if-ne v4, v2, :cond_3

    aget-byte v4, p0, v7

    if-ne v4, v3, :cond_3

    aget-byte v4, p0, v6

    const/16 v9, 0x38

    if-ne v4, v9, :cond_3

    .line 266
    const-string p0, "gif"

    return-object p0

    .line 268
    :cond_3
    array-length v4, p0

    const/16 v9, 0xc

    const/16 v10, 0x42

    if-lt v4, v9, :cond_4

    const/16 v4, 0x52

    if-ne v1, v4, :cond_4

    aget-byte v4, p0, v8

    if-ne v4, v2, :cond_4

    aget-byte v2, p0, v7

    if-ne v2, v3, :cond_4

    aget-byte v2, p0, v6

    if-ne v2, v3, :cond_4

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_4

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    const/16 v2, 0xa

    aget-byte v2, p0, v2

    if-ne v2, v10, :cond_4

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_4

    .line 270
    const-string p0, "webp"

    return-object p0

    :cond_4
    if-ne v1, v10, :cond_5

    .line 272
    aget-byte p0, p0, v8

    const/16 v1, 0x4d

    if-ne p0, v1, :cond_5

    .line 273
    const-string p0, "bmp"

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private writeEntries(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;",
            ">;)V"
        }
    .end annotation

    .line 165
    sget-object v0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 168
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;

    .line 170
    iget-object v6, v5, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v5, v5, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->digestOfEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 175
    :try_start_1
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    new-instance v5, Ljava/util/zip/ZipFile;

    iget-object v6, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 178
    :goto_1
    :try_start_2
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v5, :cond_6

    .line 180
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 181
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 182
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 183
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->digestOfEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 187
    :cond_3
    new-instance v10, Ljava/util/zip/ZipEntry;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 188
    invoke-virtual {v5, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 189
    :try_start_4
    invoke-static {v8, v6}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_4

    .line 190
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_4
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v8, :cond_5

    .line 188
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1

    .line 194
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;

    .line 195
    new-instance v3, Ljava/util/zip/ZipEntry;

    iget-object v7, v2, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->name:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 196
    iget-object v2, v2, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->data:[B

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 197
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_4

    .line 199
    :cond_7
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 200
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 202
    :try_start_9
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_8

    .line 203
    const-string p1, "ImageZipCache"

    new-instance v2, Ljava/io/IOException;

    const-string v3, "\u65e7\u7f13\u5b58\u5305\u5220\u9664\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_8
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 206
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 207
    :try_start_a
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->zipFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 208
    :try_start_b
    invoke-static {p1, v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 209
    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 210
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_7

    :catchall_2
    move-exception v3

    .line 207
    :try_start_e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v2

    :try_start_f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v2

    .line 206
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_11
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 215
    :cond_9
    :goto_7
    :try_start_12
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 216
    :goto_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_b

    :catchall_6
    move-exception p1

    .line 178
    :try_start_13
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v2

    :try_start_14
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception p1

    move-object v4, v5

    goto :goto_a

    :catchall_9
    move-exception p1

    .line 213
    :goto_a
    :try_start_15
    const-string v2, "ImageZipCache"

    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 215
    :try_start_16
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    goto :goto_8

    .line 218
    :goto_b
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    .line 215
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 217
    throw p1

    :catchall_b
    move-exception p1

    .line 218
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    throw p1
.end method


# virtual methods
.method synthetic lambda$predownload$1$io-github-lazyimmortal-sesame-util-ImageZipCache(Ljava/util/List;)V
    .locals 6

    .line 85
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->cachedDigests()Ljava/util/Set;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 95
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    sget-object v3, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->downloadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lio/github/lazyimmortal/sesame/util/ImageZipCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_4

    .line 103
    new-instance v4, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->entryName(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 107
    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writeEntries(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 110
    const-string v0, "ImageZipCache"

    invoke-static {v0, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->readEntry(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadOrDownload(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 60
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->download(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 68
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    new-instance v3, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->entryName(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0, v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writeEntries(Ljava/util/List;)V

    :cond_2
    return-object v1
.end method

.method public predownload(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    sget-object p1, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->writer:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/github/lazyimmortal/sesame/util/ImageZipCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/util/ImageZipCache;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
