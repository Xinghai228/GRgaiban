package io.github.lazyimmortal.sesame.util;

import com.elvishew.xlog.Logger;
import com.elvishew.xlog.XLog;
import com.elvishew.xlog.flattener.PatternFlattener;
import com.elvishew.xlog.printer.file.FilePrinter;
import com.elvishew.xlog.printer.file.backup.BackupStrategy2;
import com.elvishew.xlog.printer.file.backup.NeverBackupStrategy;
import com.elvishew.xlog.printer.file.clean.NeverCleanStrategy;
import com.elvishew.xlog.printer.file.naming.FileNameGenerator;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import java.io.File;
import java.io.FileWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Log {
    public static final ThreadLocal<SimpleDateFormat> DATE_FORMAT_THREAD_LOCAL;
    public static final ThreadLocal<SimpleDateFormat> DATE_TIME_FORMAT_THREAD_LOCAL;
    public static final ThreadLocal<SimpleDateFormat> OTHER_DATE_TIME_FORMAT_THREAD_LOCAL;
    private static final Logger debugLogger;
    private static final Logger errorLogger;
    private static final Logger farmLogger;
    private static final Logger forestLogger;
    private static final Logger infoLogger;
    private static final Logger otherLogger;
    private static final Logger recordLogger;
    private static final Logger runtimeLogger;
    private static final Logger systemLogger;

    static {
        XLog.init(Integer.MIN_VALUE);
        DATE_FORMAT_THREAD_LOCAL = new ThreadLocal<SimpleDateFormat>() { // from class: io.github.lazyimmortal.sesame.util.Log.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
            }
        };
        DATE_TIME_FORMAT_THREAD_LOCAL = new ThreadLocal<SimpleDateFormat>() { // from class: io.github.lazyimmortal.sesame.util.Log.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
            }
        };
        OTHER_DATE_TIME_FORMAT_THREAD_LOCAL = new ThreadLocal<SimpleDateFormat>() { // from class: io.github.lazyimmortal.sesame.util.Log.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.getDefault());
            }
        };
        runtimeLogger = XLog.tag("RUNTIME").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("runtime")).backupStrategy(new SizePagedBackupStrategy(52428800L)).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {t}: {m}")).build()).build();
        recordLogger = XLog.tag("RECORD").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("record")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {m}")).build()).build();
        systemLogger = XLog.tag("SYSTEM").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("system")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {t}: {m}")).build()).build();
        debugLogger = XLog.tag("DEBUG").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("debug")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {t}: {m}")).build()).build();
        forestLogger = XLog.tag("FOREST").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("forest")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {m}")).build()).build();
        farmLogger = XLog.tag("FARM").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("farm")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {m}")).build()).build();
        otherLogger = XLog.tag("OTHER").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("other")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {m}")).build()).build();
        infoLogger = XLog.tag("INFO").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("info")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {m}")).build()).build();
        errorLogger = XLog.tag("ERROR").printers(new FilePrinter.Builder(FileUtil.LOG_DIRECTORY_FILE.getPath()).fileNameGenerator(new CustomDateFileNameGenerator("error")).backupStrategy(new NeverBackupStrategy()).cleanStrategy(new NeverCleanStrategy()).flattener(new PatternFlattener("{d HH:mm:ss.SSS} {t}: {m}")).build()).build();
    }

    public static void i(String str) {
        runtimeLogger.i(str);
    }

    public static void i(String str, String str2) {
        i(str + ", " + str2);
    }

    public static void record(String str) {
        runtimeLogger.i(str);
        if (BaseModel.getRecordLog().getValue().booleanValue()) {
            recordLogger.i(str);
        }
    }

    public static void system(String str, String str2) {
        systemLogger.i(str + ", " + str2);
    }

    public static void debug(String str) {
        debugLogger.d(str);
    }

    public static void forest(String str) {
        record(str);
        forestLogger.i(str);
    }

    public static void farm(String str) {
        record(str);
        farmLogger.i(str);
    }

    public static void other(String str) {
        record(str);
        otherLogger.i(str);
    }

    public static void info(String str) {
        runtimeLogger.i(str);
        infoLogger.i(str);
    }

    public static String n(Integer num) {
        return num == null ? " " : Integer.toString(num.intValue());
    }

    public static void infoNewLine() {
        FileWriter fileWriter = null;
        try {
            try {
                FileWriter fileWriter2 = new FileWriter(FileUtil.getInfoLogFile(), true);
                try {
                    fileWriter2.write("\n");
                    fileWriter2.close();
                } catch (Throwable unused) {
                    fileWriter = fileWriter2;
                    if (fileWriter == null) {
                    } else {
                        fileWriter.close();
                    }
                }
            } catch (Exception unused2) {
            }
        } catch (Throwable unused3) {
        }
    }

    public static void error(String str) {
        errorLogger.i(str);
        i(str);
    }

    public static void printStackTrace(Throwable th) {
        String stackTraceString = android.util.Log.getStackTraceString(th);
        errorLogger.i(stackTraceString);
        i(stackTraceString);
    }

    public static void printStackTrace(String str, Throwable th) {
        String str2 = str + ", " + android.util.Log.getStackTraceString(th);
        errorLogger.i(str2);
        i(str2);
    }

    public static String getLogFileName(String str) {
        SimpleDateFormat simpleDateFormat = DATE_FORMAT_THREAD_LOCAL.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        }
        return str + "." + simpleDateFormat.format(new Date()) + ".log";
    }

    public static String getFormatDateTime() {
        SimpleDateFormat simpleDateFormat = DATE_TIME_FORMAT_THREAD_LOCAL.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        }
        return simpleDateFormat.format(new Date());
    }

    public static String getFormatDate() {
        return getFormatDateTime().split(" ")[0];
    }

    public static String getFormatTime() {
        return getFormatDateTime().split(" ")[1];
    }

    public static long timeToStamp(String str) {
        Date date = new Date();
        try {
            SimpleDateFormat simpleDateFormat = OTHER_DATE_TIME_FORMAT_THREAD_LOCAL.get();
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.getDefault());
            }
            Date date2 = simpleDateFormat.parse(str);
            if (date2 != null) {
                date = date2;
            }
        } catch (ParseException unused) {
        }
        return date.getTime();
    }

    public static class SizePagedBackupStrategy implements BackupStrategy2 {
        private final long maxSize;

        @Override // com.elvishew.xlog.printer.file.backup.BackupStrategy2
        public int getMaxBackupIndex() {
            return 0;
        }

        public SizePagedBackupStrategy(long j) {
            this.maxSize = j;
        }

        @Override // com.elvishew.xlog.printer.file.backup.BackupStrategy
        public boolean shouldBackup(File file) {
            return file.length() >= this.maxSize;
        }

        @Override // com.elvishew.xlog.printer.file.backup.BackupStrategy2
        public String getBackupFileName(String str, int i) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf <= 0) {
                return str + "." + i;
            }
            return str.substring(0, iLastIndexOf) + "." + i + str.substring(iLastIndexOf);
        }
    }

    public static class CustomDateFileNameGenerator implements FileNameGenerator {
        ThreadLocal<SimpleDateFormat> mLocalDateFormat = new ThreadLocal<SimpleDateFormat>() { // from class: io.github.lazyimmortal.sesame.util.Log.CustomDateFileNameGenerator.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
            }
        };
        private final String name;

        @Override // com.elvishew.xlog.printer.file.naming.FileNameGenerator
        public boolean isFileNameChangeable() {
            return true;
        }

        public CustomDateFileNameGenerator(String str) {
            this.name = str;
        }

        @Override // com.elvishew.xlog.printer.file.naming.FileNameGenerator
        public String generateFileName(int i, long j) {
            SimpleDateFormat simpleDateFormat = this.mLocalDateFormat.get();
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
            }
            return this.name + "." + simpleDateFormat.format(new Date(j)) + ".log";
        }
    }
}
