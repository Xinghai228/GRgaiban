package io.github.lazyimmortal.sesame.data.task;

import android.os.Build;
import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelType;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
public abstract class ModelTask extends Model {
    private static final Map<ModelTask, Thread> MAIN_TASK_MAP = new ConcurrentHashMap();
    private static final ThreadPoolExecutor MAIN_THREAD_POOL = new ThreadPoolExecutor(getModelArray().length, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadPoolExecutor.CallerRunsPolicy());
    private ChildTaskExecutor childTaskExecutor;
    private final Map<String, ChildModelTask> childTaskMap = new ConcurrentHashMap();
    private final Runnable mainRunnable = new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask.1
        private final ModelTask task;

        {
            this.task = ModelTask.this;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ModelTask.MAIN_TASK_MAP.get(this.task) != null) {
                return;
            }
            ModelTask.MAIN_TASK_MAP.put(this.task, Thread.currentThread());
            try {
                try {
                    this.task.run();
                } catch (Exception e) {
                    Log.printStackTrace(e);
                }
            } finally {
                ModelTask.MAIN_TASK_MAP.remove(this.task);
            }
        }
    };

    public interface CancelTask {
        void cancel();
    }

    public abstract Boolean check();

    @Override // io.github.lazyimmortal.sesame.data.Model
    public abstract ModelFields getFields();

    @Override // io.github.lazyimmortal.sesame.data.Model
    public abstract String getName();

    public abstract void run();

    public Runnable getMainRunnable() {
        return this.mainRunnable;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public final void prepare() {
        this.childTaskExecutor = newTimedTaskExecutor();
    }

    public String getId() {
        return toString();
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelType getType() {
        return ModelType.TASK;
    }

    public Boolean isSync() {
        return false;
    }

    public Boolean hasChildTask(String str) {
        return Boolean.valueOf(this.childTaskMap.containsKey(str));
    }

    public ChildModelTask getChildTask(String str) {
        return this.childTaskMap.get(str);
    }

    public Boolean addChildTask(final ChildModelTask childModelTask) {
        String id = childModelTask.getId();
        if (Build.VERSION.SDK_INT >= 24) {
            return Boolean.valueOf(childModelTask == this.childTaskMap.compute(id, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask$$ExternalSyntheticLambda1
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return this.f$0.m111xab23b41c(childModelTask, (String) obj, (ModelTask.ChildModelTask) obj2);
                }
            }));
        }
        synchronized (this.childTaskMap) {
            ChildModelTask childModelTask2 = this.childTaskMap.get(id);
            if (childModelTask2 != null) {
                childModelTask2.cancel();
            }
            childModelTask.modelTask = this;
            if (this.childTaskExecutor.addChildTask(childModelTask).booleanValue()) {
                this.childTaskMap.put(id, childModelTask);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: lambda$addChildTask$0$io-github-lazyimmortal-sesame-data-task-ModelTask, reason: not valid java name */
    /* synthetic */ ChildModelTask m111xab23b41c(ChildModelTask childModelTask, String str, ChildModelTask childModelTask2) {
        if (childModelTask2 != null) {
            childModelTask2.cancel();
        }
        childModelTask.modelTask = this;
        if (this.childTaskExecutor.addChildTask(childModelTask).booleanValue()) {
            return childModelTask;
        }
        return null;
    }

    public void removeChildTask(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.childTaskMap.compute(str, new BiFunction() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return this.f$0.m112xaafcd40((String) obj, (ModelTask.ChildModelTask) obj2);
                }
            });
            return;
        }
        synchronized (this.childTaskMap) {
            ChildModelTask childModelTask = this.childTaskMap.get(str);
            if (childModelTask != null) {
                this.childTaskExecutor.removeChildTask(childModelTask);
            }
            this.childTaskMap.remove(str);
        }
    }

    /* JADX INFO: renamed from: lambda$removeChildTask$1$io-github-lazyimmortal-sesame-data-task-ModelTask, reason: not valid java name */
    /* synthetic */ ChildModelTask m112xaafcd40(String str, ChildModelTask childModelTask) {
        if (childModelTask == null) {
            return null;
        }
        this.childTaskExecutor.removeChildTask(childModelTask);
        return null;
    }

    public Integer countChildTask() {
        return Integer.valueOf(this.childTaskMap.size());
    }

    public Boolean startTask() {
        return startTask(false);
    }

    public synchronized Boolean startTask(Boolean bool) {
        if (MAIN_TASK_MAP.containsKey(this)) {
            if (!bool.booleanValue()) {
                return false;
            }
            stopTask();
        }
        try {
            if (isEnable().booleanValue() && check().booleanValue()) {
                if (isSync().booleanValue()) {
                    this.mainRunnable.run();
                } else {
                    MAIN_THREAD_POOL.execute(this.mainRunnable);
                }
                return true;
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
        return false;
    }

    public synchronized void stopTask() {
        Iterator<ChildModelTask> it = this.childTaskMap.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().cancel();
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
        }
        ChildTaskExecutor childTaskExecutor = this.childTaskExecutor;
        if (childTaskExecutor != null) {
            childTaskExecutor.clearAllChildTask();
        }
        this.childTaskMap.clear();
        MAIN_THREAD_POOL.remove(this.mainRunnable);
        MAIN_TASK_MAP.remove(this);
    }

    public static void startAllTask() {
        startAllTask(false);
    }

    public static void startAllTask(Boolean bool) {
        if (!Status.hasFlagToday("Config::backup").booleanValue()) {
            FileUtil.backupConfigV2WithRolling(UserIdMap.getCurrentUid());
            Status.flagToday("Config::backup");
        }
        BaseModel.taskRpcRequest();
        for (Model model : getModelArray()) {
            if (model != null && ModelType.TASK == model.getType() && ((ModelTask) model).startTask(bool).booleanValue()) {
                try {
                    Thread.sleep(750L);
                } catch (InterruptedException e) {
                    Log.printStackTrace(e);
                }
            }
        }
    }

    public static void stopAllTask() {
        for (Model model : getModelArray()) {
            if (model != null) {
                try {
                    if (ModelType.TASK == model.getType()) {
                        ((ModelTask) model).stopTask();
                    }
                } catch (Exception e) {
                    Log.printStackTrace(e);
                }
            }
        }
    }

    private ChildTaskExecutor newTimedTaskExecutor() {
        Integer value = BaseModel.getTimedTaskModel().getValue();
        if (value.intValue() == 0) {
            return new SystemChildTaskExecutor();
        }
        if (value.intValue() == 1) {
            return new ProgramChildTaskExecutor();
        }
        throw new RuntimeException("not found childTaskExecutor");
    }

    public static class ChildModelTask implements Runnable {
        private CancelTask cancelTask;
        private final Long execTime;
        private final String group;
        private final String id;
        private Boolean isCancel;
        private ModelTask modelTask;
        private final Runnable runnable;

        static /* synthetic */ void lambda$new$0() {
        }

        static /* synthetic */ void lambda$new$1() {
        }

        static /* synthetic */ void lambda$new$2() {
        }

        public Runnable setRunnable() {
            return null;
        }

        public ModelTask getModelTask() {
            return this.modelTask;
        }

        public String getId() {
            return this.id;
        }

        public String getGroup() {
            return this.group;
        }

        public Long getExecTime() {
            return this.execTime;
        }

        public Boolean getIsCancel() {
            return this.isCancel;
        }

        public ChildModelTask() {
            this(null, null, new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask$ChildModelTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ModelTask.ChildModelTask.lambda$new$0();
                }
            }, 0L);
        }

        public ChildModelTask(String str) {
            this(str, null, new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask$ChildModelTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ModelTask.ChildModelTask.lambda$new$1();
                }
            }, 0L);
        }

        public ChildModelTask(String str, String str2) {
            this(str, str2, new Runnable() { // from class: io.github.lazyimmortal.sesame.data.task.ModelTask$ChildModelTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ModelTask.ChildModelTask.lambda$new$2();
                }
            }, 0L);
        }

        protected ChildModelTask(String str, long j) {
            this(str, null, null, Long.valueOf(j));
        }

        public ChildModelTask(String str, Runnable runnable) {
            this(str, null, runnable, 0L);
        }

        public ChildModelTask(String str, String str2, Runnable runnable) {
            this(str, str2, runnable, 0L);
        }

        public ChildModelTask(String str, String str2, Runnable runnable, Long l) {
            this.isCancel = false;
            str = StringUtil.isEmpty(str) ? toString() : str;
            str2 = StringUtil.isEmpty(str2) ? "DEFAULT" : str2;
            runnable = runnable == null ? setRunnable() : runnable;
            this.id = str;
            this.group = str2;
            this.runnable = runnable;
            this.execTime = l;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.runnable.run();
        }

        protected void setCancelTask(CancelTask cancelTask) {
            this.cancelTask = cancelTask;
        }

        public final void cancel() {
            CancelTask cancelTask = this.cancelTask;
            if (cancelTask != null) {
                try {
                    cancelTask.cancel();
                    this.isCancel = true;
                } catch (Exception e) {
                    Log.printStackTrace(e);
                }
            }
        }
    }
}
