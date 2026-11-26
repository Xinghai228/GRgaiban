.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookStatusType"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final DOING:I = 0x2

.field public static final END:I = 0x1

.field public static final nickNames:[Ljava/lang/String;

.field public static final types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1262
    const-string v0, "\u5f80\u671f\u56fe\u9274"

    const-string v1, "\u672c\u671f\u56fe\u9274"

    const-string v2, "\u5168\u90e8\u56fe\u9274"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;->nickNames:[Ljava/lang/String;

    .line 1263
    const-string v0, "END"

    const-string v1, "DOING"

    const-string v2, "ALL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$BookStatusType;->types:[Ljava/lang/String;

    return-void
.end method
