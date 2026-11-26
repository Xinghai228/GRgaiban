package io.github.lazyimmortal.sesame.data;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ModelFields extends LinkedHashMap<String, ModelField<?>> {
    public void addField(ModelField<?> modelField) {
        put(modelField.getCode(), modelField);
    }
}
