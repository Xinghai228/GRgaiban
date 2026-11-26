.class synthetic Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;
.super Ljava/lang/Object;
.source "AntFarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus:[I

.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 268
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->HUNGRY:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus:[I

    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->EATING:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$AnimalFeedStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :catch_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->values()[Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I

    :try_start_2
    sget-object v3, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->GUEST:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I

    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->NORMAL:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->PIRATE:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$3;->$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->WORK:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$SubAnimalType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
