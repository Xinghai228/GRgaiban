.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MedalGenerationStatusType"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final CAN_GENERATE:I = 0x2

.field public static final CAN_NOT_GENERATE:I = 0x1

.field public static final GENERATED:I = 0x3

.field public static final nickNames:[Ljava/lang/String;

.field public static final types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1281
    const-string v0, "\u53ef\u4ee5\u5408\u6210"

    const-string v1, "\u5df2\u7ecf\u5408\u6210"

    const-string v2, "\u5168\u90e8\u7c7b\u578b"

    const-string v3, "\u672a\u80fd\u5408\u6210"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;->nickNames:[Ljava/lang/String;

    .line 1282
    const-string v0, "CAN_GENERATE"

    const-string v1, "GENERATED"

    const-string v2, "ALL"

    const-string v3, "CAN_NOT_GENERATE"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$MedalGenerationStatusType;->types:[Ljava/lang/String;

    return-void
.end method
