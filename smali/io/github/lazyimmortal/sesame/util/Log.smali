.class public Lio/github/lazyimmortal/sesame/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;,
        Lio/github/lazyimmortal/sesame/util/Log$SizePagedBackupStrategy;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final OTHER_DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final debugLogger:Lcom/elvishew/xlog/Logger;

.field private static final errorLogger:Lcom/elvishew/xlog/Logger;

.field private static final farmLogger:Lcom/elvishew/xlog/Logger;

.field private static final forestLogger:Lcom/elvishew/xlog/Logger;

.field private static final infoLogger:Lcom/elvishew/xlog/Logger;

.field private static final otherLogger:Lcom/elvishew/xlog/Logger;

.field private static final recordLogger:Lcom/elvishew/xlog/Logger;

.field private static final runtimeLogger:Lcom/elvishew/xlog/Logger;

.field private static final systemLogger:Lcom/elvishew/xlog/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/high16 v0, -0x80000000

    .line 24
    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->init(I)V

    .line 27
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Log$1;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Log$1;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->DATE_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 36
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Log$2;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Log$2;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 45
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Log$3;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/util/Log$3;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->OTHER_DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 54
    const-string v0, "RUNTIME"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v4, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v5, "runtime"

    invoke-direct {v4, v5}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3, v4}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v4, Lio/github/lazyimmortal/sesame/util/Log$SizePagedBackupStrategy;

    const-wide/32 v5, 0x3200000

    invoke-direct {v4, v5, v6}, Lio/github/lazyimmortal/sesame/util/Log$SizePagedBackupStrategy;-><init>(J)V

    .line 57
    invoke-virtual {v3, v4}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v4, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v4}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 58
    invoke-virtual {v3, v4}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v4, Lcom/elvishew/xlog/flattener/PatternFlattener;

    const-string v5, "{d HH:mm:ss.SSS} {t}: {m}"

    invoke-direct {v4, v5}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v4}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->runtimeLogger:Lcom/elvishew/xlog/Logger;

    .line 62
    const-string v0, "RECORD"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v7, "record"

    invoke-direct {v6, v7}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 65
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 66
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    const-string v7, "{d HH:mm:ss.SSS} {m}"

    invoke-direct {v6, v7}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 62
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->recordLogger:Lcom/elvishew/xlog/Logger;

    .line 70
    const-string v0, "SYSTEM"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 71
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "system"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 73
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 74
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v5}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 70
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->systemLogger:Lcom/elvishew/xlog/Logger;

    .line 78
    const-string v0, "DEBUG"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 79
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "debug"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 81
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 82
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v5}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 78
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->debugLogger:Lcom/elvishew/xlog/Logger;

    .line 86
    const-string v0, "FOREST"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "forest"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 89
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 90
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v7}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 86
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->forestLogger:Lcom/elvishew/xlog/Logger;

    .line 94
    const-string v0, "FARM"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 95
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "farm"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 97
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 98
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v7}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 94
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->farmLogger:Lcom/elvishew/xlog/Logger;

    .line 102
    const-string v0, "OTHER"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 103
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "other"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 105
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 106
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v7}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 102
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->otherLogger:Lcom/elvishew/xlog/Logger;

    .line 110
    const-string v0, "INFO"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v2, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v3, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v6, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 111
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v8, "info"

    invoke-direct {v6, v8}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 113
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v6}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 114
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    new-instance v6, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v6, v7}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v6}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v3

    aput-object v3, v2, v4

    .line 110
    invoke-virtual {v0, v2}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->infoLogger:Lcom/elvishew/xlog/Logger;

    .line 118
    const-string v0, "ERROR"

    invoke-static {v0}, Lcom/elvishew/xlog/XLog;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    new-array v1, v1, [Lcom/elvishew/xlog/printer/Printer;

    new-instance v2, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/FileUtil;->LOG_DIRECTORY_FILE:Ljava/io/File;

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;

    const-string v6, "error"

    invoke-direct {v3, v6}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v2

    new-instance v3, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v3}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 121
    invoke-virtual {v2, v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v2

    new-instance v3, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;

    invoke-direct {v3}, Lcom/elvishew/xlog/printer/file/clean/NeverCleanStrategy;-><init>()V

    .line 122
    invoke-virtual {v2, v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v2

    new-instance v3, Lcom/elvishew/xlog/flattener/PatternFlattener;

    invoke-direct {v3, v5}, Lcom/elvishew/xlog/flattener/PatternFlattener;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2, v3}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v2

    aput-object v2, v1, v4

    .line 118
    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/Logger$Builder;->printers([Lcom/elvishew/xlog/printer/Printer;)Lcom/elvishew/xlog/Logger$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/elvishew/xlog/Logger$Builder;->build()Lcom/elvishew/xlog/Logger;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/Log;->errorLogger:Lcom/elvishew/xlog/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 147
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->debugLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 196
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->errorLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static farm(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->farmLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static forest(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->forestLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static getFormatDate()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Log;->getFormatDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getFormatDateTime()Ljava/lang/String;
    .locals 3

    .line 221
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatTime()Ljava/lang/String;
    .locals 2

    .line 233
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Log;->getFormatDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 213
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->DATE_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 127
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->runtimeLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .line 167
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->runtimeLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->infoLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static infoNewLine()V
    .locals 4

    const/4 v0, 0x0

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getInfoLogFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    :catchall_0
    nop

    move-object v0, v1

    goto :goto_0

    :catchall_1
    nop

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_1
    return-void
.end method

.method public static n(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 175
    const-string p0, " "

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static other(Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->otherLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    sget-object p1, Lio/github/lazyimmortal/sesame/util/Log;->errorLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {p1, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    .line 209
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    .line 201
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 202
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->errorLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    .line 203
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->runtimeLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getRecordLog()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->recordLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static system(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    sget-object v0, Lio/github/lazyimmortal/sesame/util/Log;->systemLogger:Lcom/elvishew/xlog/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static timeToStamp(Ljava/lang/String;)J
    .locals 4

    .line 238
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 241
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/Log;->OTHER_DATE_TIME_FORMAT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    :cond_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    move-object v0, p0

    .line 251
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
