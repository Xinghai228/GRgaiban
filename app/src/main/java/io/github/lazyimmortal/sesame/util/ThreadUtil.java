package io.github.lazyimmortal.sesame.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ThreadUtil {
    private static final String TAG = "ThreadUtil";

    public static void shutdownAndWait(Thread thread, long j, TimeUnit timeUnit) {
        if (thread != null) {
            thread.interrupt();
            if (j > -1) {
                try {
                    thread.join(timeUnit.toMillis(j));
                } catch (InterruptedException e) {
                    String str = TAG;
                    Log.i(str, "thread shutdownAndWait err:");
                    Log.printStackTrace(str, e);
                }
            }
        }
    }

    public static void shutdownNow(ExecutorService executorService) {
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        executorService.shutdownNow();
    }

    public boolean shutdownAndAwaitTermination(ExecutorService executorService) {
        try {
            shutdownAndAwaitTermination(executorService, 30L, TimeUnit.SECONDS);
            return true;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "thread shutdownAndWait err:");
            Log.printStackTrace(str, e);
            return false;
        }
    }

    public static void shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        executorService.shutdown();
        try {
            if (executorService.awaitTermination(1L, TimeUnit.SECONDS)) {
                return;
            }
            executorService.shutdownNow();
            if (executorService.awaitTermination(j, timeUnit)) {
                return;
            }
            Log.i(TAG, "thread pool can't close");
        } catch (InterruptedException unused) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }
}
