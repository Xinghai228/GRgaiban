package io.github.lazyimmortal.sesame.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TimeUtil {
    public static Boolean checkNowInTimeRange(String str) {
        return checkInTimeRange(Long.valueOf(System.currentTimeMillis()), str);
    }

    public static Boolean checkInTimeRange(Long l, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (checkInTimeRange(l, it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static Boolean checkInTimeRange(Long l, String str) {
        try {
            String[] strArrSplit = str.split("-");
            if (strArrSplit.length == 2) {
                String str2 = strArrSplit[0];
                boolean z = true;
                String str3 = strArrSplit[1];
                if (!isAfterOrCompareTimeStr(l, str2).booleanValue() || !isBeforeOrCompareTimeStr(l, str3).booleanValue()) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
        return false;
    }

    public static Boolean isNowBeforeTimeStr(String str) {
        return isBeforeTimeStr(Long.valueOf(System.currentTimeMillis()), str);
    }

    public static Boolean isNowAfterTimeStr(String str) {
        return isAfterTimeStr(Long.valueOf(System.currentTimeMillis()), str);
    }

    public static Boolean isNowBeforeOrCompareTimeStr(String str) {
        return isBeforeOrCompareTimeStr(Long.valueOf(System.currentTimeMillis()), str);
    }

    public static Boolean isNowAfterOrCompareTimeStr(String str) {
        return isAfterOrCompareTimeStr(Long.valueOf(System.currentTimeMillis()), str);
    }

    public static Boolean isBeforeTimeStr(Long l, String str) {
        Integer numIsCompareTimeStr = isCompareTimeStr(l, str);
        if (numIsCompareTimeStr != null) {
            return Boolean.valueOf(numIsCompareTimeStr.intValue() < 0);
        }
        return false;
    }

    public static Boolean isAfterTimeStr(Long l, String str) {
        Integer numIsCompareTimeStr = isCompareTimeStr(l, str);
        if (numIsCompareTimeStr != null) {
            return Boolean.valueOf(numIsCompareTimeStr.intValue() > 0);
        }
        return false;
    }

    public static Boolean isBeforeOrCompareTimeStr(Long l, String str) {
        Integer numIsCompareTimeStr = isCompareTimeStr(l, str);
        if (numIsCompareTimeStr != null) {
            return Boolean.valueOf(numIsCompareTimeStr.intValue() <= 0);
        }
        return false;
    }

    public static Boolean isAfterOrCompareTimeStr(Long l, String str) {
        Integer numIsCompareTimeStr = isCompareTimeStr(l, str);
        if (numIsCompareTimeStr != null) {
            return Boolean.valueOf(numIsCompareTimeStr.intValue() >= 0);
        }
        return false;
    }

    public static Integer isCompareTimeStr(Long l, String str) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(l.longValue());
            Calendar todayCalendarByTimeStr = getTodayCalendarByTimeStr(str);
            if (todayCalendarByTimeStr != null) {
                return Integer.valueOf(calendar.compareTo(todayCalendarByTimeStr));
            }
            return null;
        } catch (Exception e) {
            Log.printStackTrace(e);
            return null;
        }
    }

    public static Calendar getTodayCalendarByTimeStr(String str) {
        return getCalendarByTimeStr((Long) null, str);
    }

    public static Calendar getCalendarByTimeStr(Long l, String str) {
        try {
            return getCalendarByTimeStr(getCalendarByTimeMillis(l), str);
        } catch (Exception e) {
            Log.printStackTrace(e);
            return null;
        }
    }

    public static Calendar getCalendarByTimeStr(Calendar calendar, String str) {
        try {
            int length = str.length();
            if (length == 2) {
                calendar.set(13, 0);
                calendar.set(12, 0);
                calendar.set(11, Integer.parseInt(str.substring(0, 2)));
            } else if (length == 4) {
                calendar.set(13, 0);
                calendar.set(12, Integer.parseInt(str.substring(2, 4)));
                calendar.set(11, Integer.parseInt(str.substring(0, 2)));
            } else {
                if (length != 6) {
                    return null;
                }
                calendar.set(13, Integer.parseInt(str.substring(4)));
                calendar.set(12, Integer.parseInt(str.substring(2, 4)));
                calendar.set(11, Integer.parseInt(str.substring(0, 2)));
            }
            calendar.set(14, 0);
            return calendar;
        } catch (Exception e) {
            Log.printStackTrace(e);
            return null;
        }
    }

    public static Calendar getCalendarByTimeMillis(Long l) {
        Calendar calendar = Calendar.getInstance();
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }

    public static String getTimeStr(long j) {
        return DateFormat.getTimeInstance().format(new Date(j));
    }

    public static String getDateStr() {
        return getDateStr(0);
    }

    public static String getDateStr(int i) {
        Calendar calendar = Calendar.getInstance();
        if (i != 0) {
            calendar.add(5, i);
        }
        return DateFormat.getDateInstance().format(calendar.getTime());
    }

    public static Calendar getToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar;
    }

    public static Calendar getNow() {
        return Calendar.getInstance();
    }

    public static void sleep(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public static int getWeekNumber(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.setFirstDayOfWeek(2);
        return calendar.get(3);
    }

    public static Boolean isLessThanSecondOfDays(Calendar calendar, Calendar calendar2) {
        boolean z = true;
        if (calendar.get(1) >= calendar2.get(1) && (calendar.get(1) != calendar2.get(1) || calendar.get(6) >= calendar2.get(6))) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static Boolean isLessThanSecondOfDays(Long l, Long l2) {
        return isLessThanSecondOfDays(getCalendarByTimeMillis(l), getCalendarByTimeMillis(l2));
    }

    public static Boolean isLessThanNowOfDays(Long l) {
        return isLessThanSecondOfDays(getCalendarByTimeMillis(l), getNow());
    }

    public static Boolean isSameDay(Calendar calendar, Calendar calendar2) {
        return Boolean.valueOf(calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6));
    }

    public static Boolean isSameDay(Long l, Long l2) {
        return isSameDay(getCalendarByTimeMillis(l), getCalendarByTimeMillis(l2));
    }

    public static Boolean isToday(Calendar calendar) {
        return isSameDay(getToday(), calendar);
    }

    public static Boolean isToday(Long l) {
        return isToday(getCalendarByTimeMillis(l));
    }

    public static DateFormat getCommonDateFormat() {
        return new SimpleDateFormat("dd日HH:mm:ss");
    }

    public static DateFormat getCommonDateFormatS() {
        return new SimpleDateFormat("dd日HHmmss");
    }

    public static String getCommonDate(Long l) {
        return getCommonDateFormat().format(l);
    }

    public static String getCommonDateS(Long l) {
        return getCommonDateFormatS().format(l);
    }
}
