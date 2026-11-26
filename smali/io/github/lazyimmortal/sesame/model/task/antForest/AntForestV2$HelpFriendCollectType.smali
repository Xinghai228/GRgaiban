.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$HelpFriendCollectType;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HelpFriendCollectType"
.end annotation


# static fields
.field public static final HELP:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOT_HELP:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6356
    const-string v0, "\u590d\u6d3b\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u590d\u6d3b\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u590d\u6d3b\u80fd\u91cf"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$HelpFriendCollectType;->nickNames:[Ljava/lang/String;

    return-void
.end method
