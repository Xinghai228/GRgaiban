.class public final synthetic Lokio/NioSystemFileSystem$$ExternalSyntheticApiModelOutline5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    .line 0
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    .line 0
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p0

    return p0
.end method
