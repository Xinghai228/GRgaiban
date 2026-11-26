package io.github.lazyimmortal.sesame.data.task;

/* JADX INFO: loaded from: classes.dex */
public interface ChildTaskExecutor {
    Boolean addChildTask(ModelTask.ChildModelTask childModelTask);

    Boolean clearAllChildTask();

    Boolean clearGroupChildTask(String str);

    Boolean removeChildTask(ModelTask.ChildModelTask childModelTask);
}
