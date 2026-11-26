.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$CleanOceanType;
.super Ljava/lang/Object;
.source "AntOcean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CleanOceanType"
.end annotation


# static fields
.field public static final CLEAN:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOT_CLEAN:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1169
    const-string v0, "\u6e05\u7406\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u6e05\u7406\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u6e05\u7406\u6d77\u57df"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOcean/AntOcean$CleanOceanType;->nickNames:[Ljava/lang/String;

    return-void
.end method
