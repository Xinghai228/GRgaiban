.class public Lio/github/lazyimmortal/sesame/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInTimeRange(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 33
    :try_start_0
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 35
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 36
    aget-object p1, p1, v2

    .line 37
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 42
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkInTimeRange(Ljava/lang/Long;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->checkInTimeRange(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static checkNowInTimeRange(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->checkInTimeRange(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;
    .locals 3

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    return-object v0
.end method

.method public static getCalendarByTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 0

    .line 113
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p0

    .line 114
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeStr(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 116
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCalendarByTimeStr(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 9

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v1, v5, :cond_2

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    const/4 v8, 0x6

    if-eq v1, v8, :cond_0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 127
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 128
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 133
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 137
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 p1, 0xe

    .line 143
    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 146
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getCommonDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .line 294
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonDateFormat()Ljava/text/DateFormat;
    .locals 2

    .line 285
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd\u65e5HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCommonDateFormatS()Ljava/text/DateFormat;
    .locals 2

    .line 289
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd\u65e5HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCommonDateS(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .line 299
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCommonDateFormatS()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getDateStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateStr(I)Ljava/lang/String;
    .locals 2

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    .line 170
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 172
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNow()Ljava/util/Calendar;
    .locals 1

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStr(J)Ljava/lang/String;
    .locals 2

    .line 160
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToday()Ljava/util/Calendar;
    .locals 3

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getTodayCalendarByTimeStr(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 108
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getWeekNumber(Ljava/util/Date;)I
    .locals 1

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x2

    .line 205
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x3

    .line 206
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static isAfterOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isAfterTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 74
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isBeforeOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isBeforeTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 66
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 95
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTodayCalendarByTimeStr(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLessThanNowOfDays(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 1

    .line 239
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getNow()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isLessThanSecondOfDays(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isLessThanSecondOfDays(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    .line 228
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p0

    .line 229
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p1

    .line 230
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isLessThanSecondOfDays(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isLessThanSecondOfDays(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 218
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isNowAfterOrCompareTimeStr(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isNowAfterTimeStr(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isAfterTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isNowBeforeOrCompareTimeStr(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeOrCompareTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isNowBeforeTimeStr(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isBeforeTimeStr(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isSameDay(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    .line 260
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p0

    .line 261
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p1

    .line 262
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 250
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isToday(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    .line 280
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 1

    .line 271
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getToday()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static sleep(J)V
    .locals 0

    .line 190
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 192
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
