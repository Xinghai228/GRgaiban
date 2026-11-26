package io.github.lazyimmortal.sesame.data.task;

import android.os.Build;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.ThreadUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
public class ProgramChildTaskExecutor implements ChildTaskExecutor {
    private final Map<String, ThreadPoolExecutor> groupChildTaskExecutorMap = new ConcurrentHashMap();

    @Override // io.github.lazyimmortal.sesame.data.task.ChildTaskExecutor
    public Boolean addChildTask(final ModelTask.ChildModelTask childModelTask) {
        final Future<?> futureSubmit;
        ThreadPoolExecutor childGroupThreadPool = getChildGroupThreadPool(childModelTask.getGroup());
        if (childModelTask.getExecTime().longValue() > 0) {
            futureSubmit = childGroupThreadPool.submit(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ProgramChildTaskExecutor$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ProgramChildTaskExecutor.lambda$addChildTask$0(childModelTask);
                }
            });
        } else {
            futureSubmit = childGroupThreadPool.submit(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ProgramChildTaskExecutor$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ProgramChildTaskExecutor.lambda$addChildTask$1(childModelTask);
                }
            });
        }
        childModelTask.setCancelTask(new ModelTask.CancelTask() { // from class: io.github.lazyimmortal.sesame.data.task.ProgramChildTaskExecutor$$ExternalSyntheticLambda3
            @Override // io.github.lazyimmortal.sesame.data.task.ModelTask.CancelTask
            public final void cancel() {
                futureSubmit.cancel(true);
            }
        });
        return true;
    }

    static /* synthetic */ void lambda$addChildTask$0(ModelTask.ChildModelTask childModelTask) {
        try {
            if (childModelTask.getIsCancel().booleanValue()) {
                return;
            }
            try {
                long jLongValue = childModelTask.getExecTime().longValue() - System.currentTimeMillis();
                if (jLongValue > 0) {
                    try {
                        Thread.sleep(jLongValue);
                    } catch (Exception unused) {
                        return;
                    }
                }
                childModelTask.run();
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
        } finally {
            childModelTask.getModelTask().removeChildTask(childModelTask.getId());
        }
    }

    static /* synthetic */ void lambda$addChildTask$1(ModelTask.ChildModelTask childModelTask) {
        try {
            try {
                childModelTask.run();
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
        } finally {
            childModelTask.getModelTask().removeChildTask(childModelTask.getId());
        }
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ChildTaskExecutor
    public Boolean removeChildTask(ModelTask.ChildModelTask childModelTask) {
        childModelTask.cancel();
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ChildTaskExecutor
    public Boolean clearGroupChildTask(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.groupChildTaskExecutorMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.ProgramChildTaskExecutor$$ExternalSyntheticLambda4
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return ProgramChildTaskExecutor.lambda$clearGroupChildTask$3((String) obj, (ThreadPoolExecutor) obj2);
                }
            });
        } else {
            synchronized (this.groupChildTaskExecutorMap) {
                ThreadPoolExecutor threadPoolExecutor = this.groupChildTaskExecutorMap.get(str);
                if (threadPoolExecutor != null) {
                    ThreadUtil.shutdownAndAwaitTermination(threadPoolExecutor, 3L, TimeUnit.SECONDS);
                    this.groupChildTaskExecutorMap.remove(str);
                }
            }
        }
        return true;
    }

    static /* synthetic */ ThreadPoolExecutor lambda$clearGroupChildTask$3(String str, ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor == null) {
            return null;
        }
        ThreadUtil.shutdownAndAwaitTermination(threadPoolExecutor, 3L, TimeUnit.SECONDS);
        return null;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ChildTaskExecutor
    public Boolean clearAllChildTask() {
        Iterator<ThreadPoolExecutor> it = this.groupChildTaskExecutorMap.values().iterator();
        while (it.hasNext()) {
            ThreadUtil.shutdownNow(it.next());
        }
        this.groupChildTaskExecutorMap.clear();
        return true;
    }

    private ThreadPoolExecutor getChildGroupThreadPool(String str) {
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2 = this.groupChildTaskExecutorMap.get(str);
        if (threadPoolExecutor2 != null) {
            return threadPoolExecutor2;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return (ThreadPoolExecutor) this.groupChildTaskExecutorMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.ProgramChildTaskExecutor$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return ProgramChildTaskExecutor.lambda$getChildGroupThreadPool$4((String) obj, (ThreadPoolExecutor) obj2);
                }
            });
        }
        synchronized (this.groupChildTaskExecutorMap) {
            ThreadPoolExecutor threadPoolExecutor3 = this.groupChildTaskExecutorMap.get(str);
            if (threadPoolExecutor3 == null) {
                threadPoolExecutor3 = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy());
                this.groupChildTaskExecutorMap.put(str, threadPoolExecutor3);
            }
            threadPoolExecutor = threadPoolExecutor3;
        }
        return threadPoolExecutor;
    }

    static /* synthetic */ ThreadPoolExecutor lambda$getChildGroupThreadPool$4(String str, ThreadPoolExecutor threadPoolExecutor) {
        return threadPoolExecutor == null ? new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy()) : threadPoolExecutor;
    }
}
