package io.github.lazyimmortal.sesame.data.task;

import android.os.Build;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.ThreadUtil;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTask {
    private final Map<String, BaseTask> childTaskMap = new ConcurrentHashMap();
    private volatile Thread thread = null;

    public abstract Boolean check();

    public abstract void run();

    public Thread getThread() {
        return this.thread;
    }

    public String getId() {
        return toString();
    }

    public synchronized Boolean hasChildTask(String str) {
        return Boolean.valueOf(this.childTaskMap.containsKey(str));
    }

    public synchronized BaseTask getChildTask(String str) {
        return this.childTaskMap.get(str);
    }

    public synchronized void addChildTask(final BaseTask baseTask) {
        String id = baseTask.getId();
        if (Build.VERSION.SDK_INT >= 24) {
            this.childTaskMap.compute(id, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask$$ExternalSyntheticLambda3
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return BaseTask.lambda$addChildTask$0(this.f$0, (String) obj, (BaseTask) obj2);
                }
            });
        } else {
            BaseTask baseTask2 = this.childTaskMap.get(id);
            if (baseTask2 != null) {
                baseTask2.stopTask();
            }
            baseTask.startTask();
            this.childTaskMap.put(id, baseTask);
        }
    }

    static /* synthetic */ BaseTask lambda$addChildTask$0(BaseTask baseTask, String str, BaseTask baseTask2) {
        if (baseTask2 != null) {
            baseTask2.stopTask();
        }
        baseTask.startTask();
        return baseTask;
    }

    public synchronized void removeChildTask(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.childTaskMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask$$ExternalSyntheticLambda2
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return BaseTask.lambda$removeChildTask$1((String) obj, (BaseTask) obj2);
                }
            });
        } else {
            BaseTask baseTask = this.childTaskMap.get(str);
            if (baseTask != null) {
                ThreadUtil.shutdownAndWait(baseTask.getThread(), -1L, TimeUnit.SECONDS);
            }
            this.childTaskMap.remove(str);
        }
    }

    static /* synthetic */ BaseTask lambda$removeChildTask$1(String str, BaseTask baseTask) {
        if (baseTask == null) {
            return null;
        }
        ThreadUtil.shutdownAndWait(baseTask.getThread(), -1L, TimeUnit.SECONDS);
        return null;
    }

    public synchronized Integer countChildTask() {
        return Integer.valueOf(this.childTaskMap.size());
    }

    public Boolean startTask() {
        return startTask(false);
    }

    public synchronized Boolean startTask(Boolean bool) {
        try {
            if (this.thread != null && this.thread.isAlive()) {
                if (!bool.booleanValue()) {
                    return false;
                }
                stopTask();
            }
            this.thread = new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.run();
                }
            });
            try {
                if (check().booleanValue()) {
                    this.thread.start();
                    for (BaseTask baseTask : this.childTaskMap.values()) {
                        if (baseTask != null) {
                            baseTask.startTask();
                        }
                    }
                    return true;
                }
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void stopTask() {
        if (this.thread != null && this.thread.isAlive()) {
            ThreadUtil.shutdownAndWait(this.thread, 5L, TimeUnit.SECONDS);
        }
        for (BaseTask baseTask : this.childTaskMap.values()) {
            if (baseTask != null) {
                ThreadUtil.shutdownAndWait(baseTask.getThread(), -1L, TimeUnit.SECONDS);
            }
        }
        this.thread = null;
        this.childTaskMap.clear();
    }

    public static BaseTask newInstance() {
        return new BaseTask() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask.1
            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public void run() {
            }

            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public Boolean check() {
                return true;
            }
        };
    }

    public static BaseTask newInstance(final String str) {
        return new BaseTask() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask.2
            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public void run() {
            }

            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public String getId() {
                return str;
            }

            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public Boolean check() {
                return true;
            }
        };
    }

    public static BaseTask newInstance(final String str, final Runnable runnable) {
        return new BaseTask() { // from class: io.github.lazyimmortal.sesame.data.task.BaseTask.3
            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public String getId() {
                return str;
            }

            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public void run() {
                runnable.run();
            }

            @Override // io.github.lazyimmortal.sesame.data.task.BaseTask
            public Boolean check() {
                return true;
            }
        };
    }
}
