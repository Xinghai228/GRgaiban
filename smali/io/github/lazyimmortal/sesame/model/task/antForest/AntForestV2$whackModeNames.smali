.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$whackModeNames;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "whackModeNames"
.end annotation


# static fields
.field public static final CLOSE:I = 0x0

.field public static final WHACK_MODE_AGGRESSIVE:I = 0x2

.field public static final WHACK_MODE_COMPATIBLE:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6389
    const-string v0, "\u517c\u5bb9\u6a21\u5f0f"

    const-string v1, "\u6fc0\u8fdb\u6a21\u5f0f"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$whackModeNames;->nickNames:[Ljava/lang/String;

    return-void
.end method
