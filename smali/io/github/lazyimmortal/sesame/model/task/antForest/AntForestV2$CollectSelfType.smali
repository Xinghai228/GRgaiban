.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectSelfType;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollectSelfType"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final BELOW_THRESHOLD:I = 0x2

.field public static final OVER_THRESHOLD:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6382
    const-string v0, "\u5927\u4e8e\u9608\u503c"

    const-string v1, "\u5c0f\u4e8e\u9608\u503c"

    const-string v2, "\u6240\u6709"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectSelfType;->nickNames:[Ljava/lang/String;

    return-void
.end method
