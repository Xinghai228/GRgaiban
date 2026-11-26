package com.elvishew.xlog.printer.file.backup;

/* JADX INFO: loaded from: classes.dex */
public interface BackupStrategy2 extends BackupStrategy {
    public static final int NO_LIMIT = 0;

    String getBackupFileName(String str, int i);

    int getMaxBackupIndex();
}
