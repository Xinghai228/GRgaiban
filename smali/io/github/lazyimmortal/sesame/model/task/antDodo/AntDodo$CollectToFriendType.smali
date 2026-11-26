.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$CollectToFriendType;
.super Ljava/lang/Object;
.source "AntDodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollectToFriendType"
.end annotation


# static fields
.field public static final COLLECT:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOT_COLLECT:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1253
    const-string v0, "\u5e2e\u62bd\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u5e2e\u62bd\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u5e2e\u62bd"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antDodo/AntDodo$CollectToFriendType;->nickNames:[Ljava/lang/String;

    return-void
.end method
