.class public interface abstract Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$TimedTaskModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimedTaskModel"
.end annotation


# static fields
.field public static final PROGRAM:I = 0x1

.field public static final SYSTEM:I

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 206
    const-string v0, "\u7cfb\u7edf\u8ba1\u65f6"

    const-string v1, "\u7a0b\u5e8f\u8ba1\u65f6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel$TimedTaskModel;->nickNames:[Ljava/lang/String;

    return-void
.end method
