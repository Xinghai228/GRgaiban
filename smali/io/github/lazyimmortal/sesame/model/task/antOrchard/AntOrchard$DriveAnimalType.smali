.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$DriveAnimalType;
.super Ljava/lang/Object;
.source "AntOrchard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DriveAnimalType"
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final NONE:I

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1901
    const-string v0, "\u4e0d\u64cd\u4f5c"

    const-string v1, "\u9a71\u8d76\u6240\u6709"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$DriveAnimalType;->nickNames:[Ljava/lang/String;

    return-void
.end method
