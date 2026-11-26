.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookCollectedStatusType"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final COMPLETED:I = 0x2

.field public static final NOT_COMPLETED:I = 0x1

.field public static final nickNames:[Ljava/lang/String;

.field public static final types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1271
    const-string v0, "\u672a\u5b8c\u6210\u6536\u96c6"

    const-string v1, "\u5df2\u5b8c\u6210\u6536\u96c6"

    const-string v2, "\u5168\u90e8\u72b6\u6001"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;->nickNames:[Ljava/lang/String;

    .line 1272
    const-string v0, "NOT_COMPLETED"

    const-string v1, "COMPLETED"

    const-string v2, "ALL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookCollectedStatusType;->types:[Ljava/lang/String;

    return-void
.end method
