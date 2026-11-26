package io.github.lazyimmortal.sesame.data.task;

import android.os.Build;
import android.os.Handler;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
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
public class SystemChildTaskExecutor implements ChildTaskExecutor {
    private final Map<String, ThreadPoolExecutor> groupChildTaskExecutorMap = new ConcurrentHashMap();
    private final Handler handler = ApplicationHook.getMainHandler();

    @Override // io.github.lazyimmortal.sesame.data.task.ChildTaskExecutor
    public Boolean addChildTask(final ModelTask.ChildModelTask childModelTask) {
        final ThreadPoolExecutor childGroupHandler = getChildGroupHandler(childModelTask.getGroup());
        long jLongValue = childModelTask.getExecTime().longValue();
        if (jLongValue > 0) {
            final Runnable runnable = new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SystemChildTaskExecutor.lambda$addChildTask$2(childModelTask, childGroupHandler);
                }
            };
            long jCurrentTimeMillis = jLongValue - System.currentTimeMillis();
            if (jCurrentTimeMillis > 3000) {
                this.handler.postDelayed(runnable, jCurrentTimeMillis - 2500);
                childModelTask.setCancelTask(new ModelTask.CancelTask() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda2
                    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask.CancelTask
                    public final void cancel() {
                        this.f$0.m113x9648c196(runnable);
                    }
                });
            } else {
                childModelTask.setCancelTask(new ModelTask.CancelTask() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda3
                    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask.CancelTask
                    public final void cancel() {
                        this.f$0.m114xe4083997(runnable);
                    }
                });
                this.handler.post(runnable);
            }
        } else {
            final Future<?> futureSubmit = childGroupHandler.submit(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SystemChildTaskExecutor.lambda$addChildTask$5(childModelTask);
                }
            });
            childModelTask.setCancelTask(new ModelTask.CancelTask() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda5
                @Override // io.github.lazyimmortal.sesame.data.task.ModelTask.CancelTask
                public final void cancel() {
                    futureSubmit.cancel(true);
                }
            });
        }
        return true;
    }

    static /* synthetic */ void lambda$addChildTask$2(final ModelTask.ChildModelTask childModelTask, ThreadPoolExecutor threadPoolExecutor) {
        if (childModelTask.getIsCancel().booleanValue()) {
            return;
        }
        final Future<?> futureSubmit = threadPoolExecutor.submit(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SystemChildTaskExecutor.lambda$addChildTask$0(childModelTask);
            }
        });
        childModelTask.setCancelTask(new ModelTask.CancelTask() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda8
            @Override // io.github.lazyimmortal.sesame.data.task.ModelTask.CancelTask
            public final void cancel() {
                futureSubmit.cancel(true);
            }
        });
    }

    static /* synthetic */ void lambda$addChildTask$0(ModelTask.ChildModelTask childModelTask) {
        try {
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

    /* JADX INFO: renamed from: lambda$addChildTask$3$io-github-lazyimmortal-sesame-data-task-SystemChildTaskExecutor, reason: not valid java name */
    /* synthetic */ void m113x9648c196(Runnable runnable) {
        this.handler.removeCallbacks(runnable);
    }

    /* JADX INFO: renamed from: lambda$addChildTask$4$io-github-lazyimmortal-sesame-data-task-SystemChildTaskExecutor, reason: not valid java name */
    /* synthetic */ void m114xe4083997(Runnable runnable) {
        this.handler.removeCallbacks(runnable);
    }

    static /* synthetic */ void lambda$addChildTask$5(ModelTask.ChildModelTask childModelTask) {
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
            this.groupChildTaskExecutorMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda6
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return SystemChildTaskExecutor.lambda$clearGroupChildTask$7((String) obj, (ThreadPoolExecutor) obj2);
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

    static /* synthetic */ ThreadPoolExecutor lambda$clearGroupChildTask$7(String str, ThreadPoolExecutor threadPoolExecutor) {
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

    private ThreadPoolExecutor getChildGroupHandler(String str) {
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2 = this.groupChildTaskExecutorMap.get(str);
        if (threadPoolExecutor2 != null) {
            return threadPoolExecutor2;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return (ThreadPoolExecutor) this.groupChildTaskExecutorMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.SystemChildTaskExecutor$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return SystemChildTaskExecutor.lambda$getChildGroupHandler$8((String) obj, (ThreadPoolExecutor) obj2);
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

    static /* synthetic */ ThreadPoolExecutor lambda$getChildGroupHandler$8(String str, ThreadPoolExecutor threadPoolExecutor) {
        return threadPoolExecutor == null ? new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy()) : threadPoolExecutor;
    }
}
