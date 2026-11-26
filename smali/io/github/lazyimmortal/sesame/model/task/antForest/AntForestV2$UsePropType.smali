.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$UsePropType;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsePropType"
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final CLOSE:I = 0x0

.field public static final ONLY_LIMIT_TIME:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6374
    const-string v0, "\u6240\u6709\u9053\u5177"

    const-string v1, "\u9650\u65f6\u9053\u5177"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$UsePropType;->nickNames:[Ljava/lang/String;

    return-void
.end method
