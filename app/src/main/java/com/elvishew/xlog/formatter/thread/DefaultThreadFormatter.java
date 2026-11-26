package com.elvishew.xlog.formatter.thread;

/* JADX INFO: loaded from: classes.dex */
public class DefaultThreadFormatter implements ThreadFormatter {
    @Override // com.elvishew.xlog.formatter.Formatter
    public String format(Thread thread) {
        return "Thread: " + thread.getName();
    }
}
