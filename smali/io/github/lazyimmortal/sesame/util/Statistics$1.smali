.class synthetic Lio/github/lazyimmortal/sesame/util/Statistics$1;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

.field static final synthetic $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->values()[Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType:[I

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType:[I

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 26
    :catch_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->values()[Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    :try_start_3
    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->TIME:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
