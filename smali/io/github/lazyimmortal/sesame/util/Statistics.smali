.class public Lio/github/lazyimmortal/sesame/util/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/util/Statistics$DataType;,
        Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;,
        Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

.field private static final TAG:Ljava/lang/String; = "Statistics"


# instance fields
.field private day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

.field private month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

.field private year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Statistics;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    .line 21
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    .line 22
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;-><init>()V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-void
.end method

.method public static addData(Lio/github/lazyimmortal/sesame/util/Statistics$DataType;I)V
    .locals 2

    .line 25
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    .line 26
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    .line 49
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    .line 50
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    goto :goto_0

    .line 43
    :cond_1
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    .line 44
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    .line 45
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    goto :goto_0

    .line 38
    :cond_2
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    .line 39
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    .line 40
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    goto :goto_0

    .line 33
    :cond_3
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    .line 34
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    .line 35
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    goto :goto_0

    .line 28
    :cond_4
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    .line 29
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    .line 30
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    :goto_0
    return-void
.end method

.method public static getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I
    .locals 2

    .line 56
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    .line 59
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType:[I

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    goto :goto_0

    .line 64
    :cond_1
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    goto :goto_0

    .line 61
    :cond_2
    iget-object p0, v0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    :goto_0
    if-eqz p0, :cond_3

    .line 71
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Statistics$1;->$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType:[I

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 73
    :pswitch_0
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    goto :goto_2

    .line 88
    :pswitch_1
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateringcount:I

    goto :goto_2

    .line 85
    :pswitch_2
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->wateredcount:I

    goto :goto_2

    .line 82
    :pswitch_3
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->watered:I

    goto :goto_2

    .line 79
    :pswitch_4
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->helped:I

    goto :goto_2

    .line 76
    :pswitch_5
    iget p0, p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->collected:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getText()Ljava/lang/String;
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4eca\u5e74  \u6536: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5e2e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u6d47: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "\n\u4eca\u6708  \u6536: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "\n\u4eca\u65e5  \u6536: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\n\u88ab\u6c34\u6b21\u6570  \u65e5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6708: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5e74: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, "\n\u6d47\u6c34\u6b21\u6570  \u65e5: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 108
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->year:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->month:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->day:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->collected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->helped:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->watered:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->wateredcount:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->wateringcount:I

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-static/range {v1 .. v8}, Lio/github/lazyimmortal/sesame/util/Statistics;->getText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {v3, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    .line 114
    invoke-static {p1, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p1, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p1, v4}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->COLLECTED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    .line 115
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->HELPED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERED:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  \u65e5: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    .line 116
    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; \u6708: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";  \u5e74: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p3, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATEREDCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p2, p3}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->DAY:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    .line 117
    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";  \u6708: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->MONTH:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p2, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p0, p2}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;->YEAR:Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;

    sget-object p1, Lio/github/lazyimmortal/sesame/util/Statistics$DataType;->WATERINGCOUNT:Lio/github/lazyimmortal/sesame/util/Statistics$DataType;

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getData(Lio/github/lazyimmortal/sesame/util/Statistics$TimeType;Lio/github/lazyimmortal/sesame/util/Statistics$DataType;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized load()Lio/github/lazyimmortal/sesame/util/Statistics;
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getStatisticsFile()Ljava/io/File;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    sget-object v4, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    const-string v4, "\u91cd\u65b0\u683c\u5f0f\u5316 statistics.json"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v4, "\u91cd\u65b0\u683c\u5f0f\u5316 statistics.json"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v3, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    new-instance v4, Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-direct {v4}, Lio/github/lazyimmortal/sesame/util/Statistics;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->updateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    const-string v4, "\u521d\u59cb\u5316 statistics.json"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "\u521d\u59cb\u5316 statistics.json"

    invoke-static {v2, v4}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 141
    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const-string v1, "\u7edf\u8ba1\u6587\u4ef6\u683c\u5f0f\u6709\u8bef\uff0c\u5df2\u91cd\u7f6e\u7edf\u8ba1\u6587\u4ef6"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "\u7edf\u8ba1\u6587\u4ef6\u683c\u5f0f\u6709\u8bef\uff0c\u5df2\u91cd\u7f6e\u7edf\u8ba1\u6587\u4ef6"

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    new-instance v3, Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/util/Statistics;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->updateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getStatisticsFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_2
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 149
    :try_start_3
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :cond_1
    :goto_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static declared-synchronized save()V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics;

    monitor-enter v0

    .line 165
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Statistics;->save(Ljava/util/Calendar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized save(Ljava/util/Calendar;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics;

    monitor-enter v0

    .line 169
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->updateDay(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    const-string v1, "\u91cd\u7f6e statistics.json"

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    const-string v1, "\u4fdd\u5b58 statistics.json"

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/Log;->system(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    sget-object p0, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getStatisticsFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized unload()V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/util/Statistics;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->copyMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    new-instance v3, Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-direct {v3}, Lio/github/lazyimmortal/sesame/util/Statistics;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->updateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 160
    :try_start_1
    sget-object v2, Lio/github/lazyimmortal/sesame/util/Statistics;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static updateDay(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 180
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x5

    .line 181
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 182
    sget-object v3, Lio/github/lazyimmortal/sesame/util/Statistics;->INSTANCE:Lio/github/lazyimmortal/sesame/util/Statistics;

    iget-object v4, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v4, v4, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    if-eq v1, v4, :cond_0

    .line 183
    iget-object v4, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v4, v1}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    .line 184
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    .line 185
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    if-eq v2, v1, :cond_1

    .line 188
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    .line 189
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    iget v1, v1, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->time:I

    if-eq p0, v1, :cond_2

    .line 192
    iget-object v1, v3, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    invoke-virtual {v1, p0}, Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;->reset(I)V

    .line 197
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 195
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/util/Statistics;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/util/Statistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/util/Statistics;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getYear()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getYear()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getMonth()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getMonth()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getDay()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/util/Statistics;->getDay()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getDay()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-object v0
.end method

.method public getMonth()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-object v0
.end method

.method public getYear()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getYear()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getMonth()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getDay()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setDay(Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->day:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-void
.end method

.method public setMonth(Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->month:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-void
.end method

.method public setYear(Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Statistics;->year:Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Statistics(year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getYear()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getMonth()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getDay()Lio/github/lazyimmortal/sesame/util/Statistics$TimeStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
