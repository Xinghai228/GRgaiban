.class public final Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;
.super Ljava/lang/Object;
.source "FriendWatchEnergyComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final field:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;->field:I

    return-void
.end method

.method public static getMetric(Lio/github/lazyimmortal/sesame/entity/IdAndName;I)J
    .locals 2

    check-cast p0, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDayGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getAllGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyAverage()J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getThisWeekAverage()J

    move-result-wide v0

    return-wide v0

    :pswitch_4
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getTwoWeekAverage()J

    move-result-wide v0

    return-wide v0

    :pswitch_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getThreeWeekAverage()J

    move-result-wide v0

    return-wide v0

    :pswitch_6
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getFourWeekAverage()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sortDescending(Ljava/util/List;I)V
    .locals 1

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;

    invoke-direct {v0, p1}, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    check-cast p2, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget v0, p0, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;->field:I

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;->getMetric(Lio/github/lazyimmortal/sesame/entity/IdAndName;I)J

    move-result-wide v1

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;->getMetric(Lio/github/lazyimmortal/sesame/entity/IdAndName;I)J

    move-result-wide v3

    move-wide v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method
