.class public Lio/github/lazyimmortal/sesame/util/WatermarkUtil;
.super Ljava/lang/Object;
.source "WatermarkUtil.java"


# static fields
.field private static isLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    :try_start_0
    const-string v0, "watermark"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->isLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->isLibraryLoaded:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWatermarkAlpha()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method private static native getWatermarkAlphaNative()I
.end method

.method public static getWatermarkRotation()F
    .locals 2

    .line 74
    sget-boolean v0, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->isLibraryLoaded:Z

    const/high16 v1, -0x3e100000    # -30.0f

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkRotationNative()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private static native getWatermarkRotationNative()F
.end method

.method public static getWatermarkText()Ljava/lang/String;
    .locals 2

    .line 26
    sget-boolean v0, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->isLibraryLoaded:Z

    const-string v1, "\u8d1d\u5409\u5854"

    if-nez v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/WatermarkUtil;->getWatermarkTextNative()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private static native getWatermarkTextNative()Ljava/lang/String;
.end method

.method public static getWatermarkTextSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method private static native getWatermarkTextSizeNative()I
.end method
