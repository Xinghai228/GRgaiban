package io.github.lazyimmortal.sesame.util;

import android.content.Context;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.github.lazyimmortal.sesame.R;
import java.io.File;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class Statistics {
    public static final Statistics INSTANCE = new Statistics();
    private static final String TAG = "Statistics";
    private TimeStatistics year = new TimeStatistics();
    private TimeStatistics month = new TimeStatistics();
    private TimeStatistics day = new TimeStatistics();

    public enum DataType {
        TIME,
        COLLECTED,
        HELPED,
        WATERED,
        WATEREDCOUNT,
        WATERINGCOUNT
    }

    public enum TimeType {
        YEAR,
        MONTH,
        DAY
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof Statistics;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Statistics)) {
            return false;
        }
        Statistics statistics = (Statistics) obj;
        if (!statistics.canEqual(this)) {
            return false;
        }
        TimeStatistics year = getYear();
        TimeStatistics year2 = statistics.getYear();
        if (year != null ? !year.equals(year2) : year2 != null) {
            return false;
        }
        TimeStatistics month = getMonth();
        TimeStatistics month2 = statistics.getMonth();
        if (month != null ? !month.equals(month2) : month2 != null) {
            return false;
        }
        TimeStatistics day = getDay();
        TimeStatistics day2 = statistics.getDay();
        return day != null ? day.equals(day2) : day2 == null;
    }

    public int hashCode() {
        TimeStatistics year = getYear();
        int iHashCode = year == null ? 43 : year.hashCode();
        TimeStatistics month = getMonth();
        int iHashCode2 = ((iHashCode + 59) * 59) + (month == null ? 43 : month.hashCode());
        TimeStatistics day = getDay();
        return (iHashCode2 * 59) + (day != null ? day.hashCode() : 43);
    }

    public void setDay(TimeStatistics timeStatistics) {
        this.day = timeStatistics;
    }

    public void setMonth(TimeStatistics timeStatistics) {
        this.month = timeStatistics;
    }

    public void setYear(TimeStatistics timeStatistics) {
        this.year = timeStatistics;
    }

    public String toString() {
        return "Statistics(year=" + getYear() + ", month=" + getMonth() + ", day=" + getDay() + ")";
    }

    public TimeStatistics getYear() {
        return this.year;
    }

    public TimeStatistics getMonth() {
        return this.month;
    }

    public TimeStatistics getDay() {
        return this.day;
    }

    public static void addData(DataType dataType, int i) {
        Statistics statistics = INSTANCE;
        int i2 = AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[dataType.ordinal()];
        if (i2 == 1) {
            statistics.day.collected += i;
            statistics.month.collected += i;
            statistics.year.collected += i;
            return;
        }
        if (i2 == 2) {
            statistics.day.helped += i;
            statistics.month.helped += i;
            statistics.year.helped += i;
            return;
        }
        if (i2 == 3) {
            statistics.day.watered += i;
            statistics.month.watered += i;
            statistics.year.watered += i;
            return;
        }
        if (i2 == 4) {
            statistics.day.wateredcount += i;
            statistics.month.wateredcount += i;
            statistics.year.wateredcount += i;
            return;
        }
        if (i2 != 5) {
            return;
        }
        statistics.day.wateringcount += i;
        statistics.month.wateringcount += i;
        statistics.year.wateringcount += i;
    }

    public static int getData(TimeType timeType, DataType dataType) {
        TimeStatistics timeStatistics;
        Statistics statistics = INSTANCE;
        int i = AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType[timeType.ordinal()];
        if (i == 1) {
            timeStatistics = statistics.year;
        } else if (i == 2) {
            timeStatistics = statistics.month;
        } else {
            timeStatistics = i != 3 ? null : statistics.day;
        }
        if (timeStatistics != null) {
            switch (AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[dataType.ordinal()]) {
                case 1:
                    return timeStatistics.collected;
                case 2:
                    return timeStatistics.helped;
                case 3:
                    return timeStatistics.watered;
                case 4:
                    return timeStatistics.wateredcount;
                case 5:
                    return timeStatistics.wateringcount;
                case 6:
                    return timeStatistics.time;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.util.Statistics$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType;
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType;

        static {
            int[] iArr = new int[TimeType.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType = iArr;
            try {
                iArr[TimeType.YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType[TimeType.MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$TimeType[TimeType.DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[DataType.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType = iArr2;
            try {
                iArr2[DataType.COLLECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[DataType.HELPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[DataType.WATERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[DataType.WATEREDCOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[DataType.WATERINGCOUNT.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$util$Statistics$DataType[DataType.TIME.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static String getText() {
        return "今年  收: " + getData(TimeType.YEAR, DataType.COLLECTED) + " 帮: " + getData(TimeType.YEAR, DataType.HELPED) + " 浇: " + getData(TimeType.YEAR, DataType.WATERED) + "\n今月  收: " + getData(TimeType.MONTH, DataType.COLLECTED) + " 帮: " + getData(TimeType.MONTH, DataType.HELPED) + " 浇: " + getData(TimeType.MONTH, DataType.WATERED) + "\n今日  收: " + getData(TimeType.DAY, DataType.COLLECTED) + " 帮: " + getData(TimeType.DAY, DataType.HELPED) + " 浇: " + getData(TimeType.DAY, DataType.WATERED) + "\n被水次数  日: " + getData(TimeType.DAY, DataType.WATEREDCOUNT) + " 月: " + getData(TimeType.MONTH, DataType.WATEREDCOUNT) + " 年: " + getData(TimeType.YEAR, DataType.WATEREDCOUNT) + "\n浇水次数  日: " + getData(TimeType.DAY, DataType.WATERINGCOUNT) + " 月: " + getData(TimeType.MONTH, DataType.WATERINGCOUNT) + " 年: " + getData(TimeType.YEAR, DataType.WATERINGCOUNT);
    }

    public static String getText(Context context) {
        return getText(context.getString(R.string.year), context.getString(R.string.month), context.getString(R.string.day), context.getString(R.string.collected), context.getString(R.string.helped), context.getString(R.string.watered), context.getString(R.string.wateredcount), context.getString(R.string.wateringcount));
    }

    public static String getText(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return str + "  " + str4 + ": " + getData(TimeType.YEAR, DataType.COLLECTED) + " " + str5 + ": " + getData(TimeType.YEAR, DataType.HELPED) + " " + str6 + ": " + getData(TimeType.YEAR, DataType.WATERED) + "\n" + str2 + "  " + str4 + ": " + getData(TimeType.MONTH, DataType.COLLECTED) + " " + str5 + ": " + getData(TimeType.MONTH, DataType.HELPED) + " " + str6 + ": " + getData(TimeType.MONTH, DataType.WATERED) + "\n" + str3 + "  " + str4 + ": " + getData(TimeType.DAY, DataType.COLLECTED) + " " + str5 + ": " + getData(TimeType.DAY, DataType.HELPED) + " " + str6 + ": " + getData(TimeType.DAY, DataType.WATERED) + "\n" + str7 + "  日: " + getData(TimeType.DAY, DataType.WATEREDCOUNT) + "; 月: " + getData(TimeType.MONTH, DataType.WATEREDCOUNT) + ";  年: " + getData(TimeType.YEAR, DataType.WATEREDCOUNT) + "\n" + str8 + "  日: " + getData(TimeType.DAY, DataType.WATERINGCOUNT) + ";  月: " + getData(TimeType.MONTH, DataType.WATERINGCOUNT) + ";  年: " + getData(TimeType.YEAR, DataType.WATERINGCOUNT);
    }

    public static synchronized Statistics load() {
        try {
            File statisticsFile = FileUtil.getStatisticsFile();
            if (statisticsFile.exists()) {
                String fromFile = FileUtil.readFromFile(statisticsFile);
                ObjectMapper objectMapperCopyMapper = JsonUtil.copyMapper();
                Statistics statistics = INSTANCE;
                objectMapperCopyMapper.readerForUpdating(statistics).readValue(fromFile);
                String formatJsonString = JsonUtil.toFormatJsonString(statistics);
                if (formatJsonString != null && !formatJsonString.equals(fromFile)) {
                    String str = TAG;
                    Log.i(str, "重新格式化 statistics.json");
                    Log.system(str, "重新格式化 statistics.json");
                    FileUtil.write2File(formatJsonString, statisticsFile);
                }
            } else {
                ObjectMapper objectMapperCopyMapper2 = JsonUtil.copyMapper();
                Statistics statistics2 = INSTANCE;
                objectMapperCopyMapper2.updateValue(statistics2, new Statistics());
                String str2 = TAG;
                Log.i(str2, "初始化 statistics.json");
                Log.system(str2, "初始化 statistics.json");
                FileUtil.write2File(JsonUtil.toFormatJsonString(statistics2), statisticsFile);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.printStackTrace(str3, th);
            Log.i(str3, "统计文件格式有误，已重置统计文件");
            Log.system(str3, "统计文件格式有误，已重置统计文件");
            try {
                ObjectMapper objectMapperCopyMapper3 = JsonUtil.copyMapper();
                Statistics statistics3 = INSTANCE;
                objectMapperCopyMapper3.updateValue(statistics3, new Statistics());
                FileUtil.write2File(JsonUtil.toFormatJsonString(statistics3), FileUtil.getStatisticsFile());
            } catch (JsonMappingException e) {
                Log.printStackTrace(TAG, e);
            }
        }
        return INSTANCE;
    }

    public static synchronized void unload() {
        try {
            JsonUtil.copyMapper().updateValue(INSTANCE, new Statistics());
        } catch (JsonMappingException e) {
            Log.printStackTrace(TAG, e);
        }
    }

    public static synchronized void save() {
        save(Calendar.getInstance());
    }

    public static synchronized void save(Calendar calendar) {
        if (updateDay(calendar).booleanValue()) {
            Log.system(TAG, "重置 statistics.json");
        } else {
            Log.system(TAG, "保存 statistics.json");
        }
        FileUtil.write2File(JsonUtil.toFormatJsonString(INSTANCE), FileUtil.getStatisticsFile());
    }

    public static Boolean updateDay(Calendar calendar) {
        int i = calendar.get(1);
        int i2 = calendar.get(2) + 1;
        int i3 = calendar.get(5);
        Statistics statistics = INSTANCE;
        if (i != statistics.year.time) {
            statistics.year.reset(i);
            statistics.month.reset(i2);
            statistics.day.reset(i3);
        } else if (i2 != statistics.month.time) {
            statistics.month.reset(i2);
            statistics.day.reset(i3);
        } else if (i3 != statistics.day.time) {
            statistics.day.reset(i3);
        } else {
            return false;
        }
        return true;
    }

    public static class TimeStatistics {
        int collected;
        int helped;
        int time;
        int watered;
        int wateredcount;
        int wateringcount;

        protected boolean canEqual(Object obj) {
            return obj instanceof TimeStatistics;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TimeStatistics)) {
                return false;
            }
            TimeStatistics timeStatistics = (TimeStatistics) obj;
            return timeStatistics.canEqual(this) && getTime() == timeStatistics.getTime() && getCollected() == timeStatistics.getCollected() && getHelped() == timeStatistics.getHelped() && getWatered() == timeStatistics.getWatered() && getWateredcount() == timeStatistics.getWateredcount() && getWateringcount() == timeStatistics.getWateringcount();
        }

        public int hashCode() {
            return ((((((((((getTime() + 59) * 59) + getCollected()) * 59) + getHelped()) * 59) + getWatered()) * 59) + getWateredcount()) * 59) + getWateringcount();
        }

        public void setCollected(int i) {
            this.collected = i;
        }

        public void setHelped(int i) {
            this.helped = i;
        }

        public void setTime(int i) {
            this.time = i;
        }

        public void setWatered(int i) {
            this.watered = i;
        }

        public void setWateredcount(int i) {
            this.wateredcount = i;
        }

        public void setWateringcount(int i) {
            this.wateringcount = i;
        }

        public String toString() {
            return "Statistics.TimeStatistics(time=" + getTime() + ", collected=" + getCollected() + ", helped=" + getHelped() + ", watered=" + getWatered() + ", wateredcount=" + getWateredcount() + ", wateringcount=" + getWateringcount() + ")";
        }

        public int getTime() {
            return this.time;
        }

        public int getCollected() {
            return this.collected;
        }

        public int getHelped() {
            return this.helped;
        }

        public int getWatered() {
            return this.watered;
        }

        public int getWateredcount() {
            return this.wateredcount;
        }

        public int getWateringcount() {
            return this.wateringcount;
        }

        public TimeStatistics() {
        }

        TimeStatistics(int i) {
            reset(i);
        }

        public void reset(int i) {
            this.time = i;
            this.collected = 0;
            this.helped = 0;
            this.watered = 0;
            this.wateredcount = 0;
            this.wateringcount = 0;
        }
    }
}
