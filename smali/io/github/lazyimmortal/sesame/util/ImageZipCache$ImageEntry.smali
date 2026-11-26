.class final Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;
.super Ljava/lang/Object;
.source "ImageZipCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/ImageZipCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageEntry"
.end annotation


# instance fields
.field final data:[B

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->name:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/util/ImageZipCache$ImageEntry;->data:[B

    return-void
.end method
