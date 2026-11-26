.class synthetic Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$2;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$AntForestV2$CollectStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1332
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->values()[Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$2;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$AntForestV2$CollectStatus:[I

    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->AVAILABLE:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$2;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$AntForestV2$CollectStatus:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->WAITING:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$CollectStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
