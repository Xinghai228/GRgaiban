package com.elvishew.xlog.printer.file.backup;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FileSizeBackupStrategy implements BackupStrategy {
    private long maxSize;

    public FileSizeBackupStrategy(long j) {
        this.maxSize = j;
    }

    @Override // com.elvishew.xlog.printer.file.backup.BackupStrategy
    public boolean shouldBackup(File file) {
        return file.length() > this.maxSize;
    }
}
