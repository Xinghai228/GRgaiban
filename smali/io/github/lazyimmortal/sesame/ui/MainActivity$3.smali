.class synthetic Lio/github/lazyimmortal/sesame/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$data$RunType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 489
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/RunType;->values()[Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$3;->$SwitchMap$io$github$lazyimmortal$sesame$data$RunType:[I

    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/RunType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$3;->$SwitchMap$io$github$lazyimmortal$sesame$data$RunType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->MODEL:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/RunType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$3;->$SwitchMap$io$github$lazyimmortal$sesame$data$RunType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->PACKAGE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/RunType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
