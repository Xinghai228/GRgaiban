.class synthetic Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$1;
.super Ljava/lang/Object;
.source "WhackMole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 126
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->values()[Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode:[I

    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->COMPATIBLE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->AGGRESSIVE:Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antForest/WhackMole$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
