.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ConsumeAnimalPropType;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConsumeAnimalPropType"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final QUANTITY:I = 0x2

.field public static final SEQUENCE:I = 0x1

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6365
    const-string v0, "\u6309\u9ed8\u8ba4\u987a\u5e8f\u6d3e\u9063"

    const-string v1, "\u6309\u6700\u5927\u6570\u91cf\u6d3e\u9063"

    const-string v2, "\u4e0d\u6d3e\u9063\u52a8\u7269"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$ConsumeAnimalPropType;->nickNames:[Ljava/lang/String;

    return-void
.end method
