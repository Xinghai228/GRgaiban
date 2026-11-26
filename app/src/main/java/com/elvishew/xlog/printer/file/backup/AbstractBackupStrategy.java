package com.elvishew.xlog.printer.file.backup;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBackupStrategy implements BackupStrategy2 {
    @Override // com.elvishew.xlog.printer.file.backup.BackupStrategy2
    public String getBackupFileName(String str, int i) {
        return str + ".bak." + i;
    }
}
