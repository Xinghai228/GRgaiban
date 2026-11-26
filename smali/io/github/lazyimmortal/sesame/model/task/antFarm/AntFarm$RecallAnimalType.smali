.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RecallAnimalType;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecallAnimalType"
.end annotation


# static fields
.field public static final ALWAYS:I = 0x0

.field public static final NEVER:I = 0x3

.field public static final WHEN_HUNGRY:I = 0x2

.field public static final WHEN_THIEF:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4730
    const-string v0, "\u9965\u997f\u53ec\u56de"

    const-string v1, "\u6682\u4e0d\u53ec\u56de"

    const-string v2, "\u59cb\u7ec8\u53ec\u56de"

    const-string v3, "\u5077\u5403\u53ec\u56de"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$RecallAnimalType;->nickNames:[Ljava/lang/String;

    return-void
.end method
