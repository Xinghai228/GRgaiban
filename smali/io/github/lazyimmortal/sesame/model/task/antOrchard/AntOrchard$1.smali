.class synthetic Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$1;
.super Ljava/lang/Object;
.source "AntOrchard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 897
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->values()[Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene:[I

    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->main:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$1;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->yeb:Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchard$PlantScene;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
