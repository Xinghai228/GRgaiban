package com.elvishew.xlog.interceptor;

import com.elvishew.xlog.LogItem;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFilterInterceptor implements Interceptor {
    protected abstract boolean reject(LogItem logItem);

    @Override // com.elvishew.xlog.interceptor.Interceptor
    public LogItem intercept(LogItem logItem) {
        if (reject(logItem)) {
            return null;
        }
        return logItem;
    }
}
