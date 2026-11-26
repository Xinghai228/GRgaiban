.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FantasticLevelType"
.end annotation


# static fields
.field public static final COMMON:I = 0x0

.field public static final MAGIC:I = 0x2

.field public static final RARE:I = 0x1

.field public static final nickNames:[Ljava/lang/String;

.field public static final stars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1290
    const-string v0, "\u7a00\u6709"

    const-string v1, "\u795e\u5947"

    const-string v2, "\u666e\u901a"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->nickNames:[Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 1291
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$FantasticLevelType;->stars:[I

    return-void
.end method
