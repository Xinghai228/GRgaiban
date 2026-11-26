.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$TimingType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimingType"
.end annotation


# static fields
.field public static final EVERY_DAY:I = 0x0

.field public static final LAST_DAY:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1244
    const-string v0, "\u6bcf\u5929\u4f7f\u7528"

    const-string v1, "\u4e13\u8f91\u6700\u540e\u4e00\u5929"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$TimingType;->nickNames:[Ljava/lang/String;

    return-void
.end method
