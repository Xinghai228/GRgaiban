package io.github.lazyimmortal.sesame.data;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum ModelType {
    NORMAL(0, "普通模块"),
    TASK(1, "任务模块");

    private static final Map<Integer, ModelType> MAP = new HashMap();
    private final Integer code;
    private final String name;

    static {
        for (ModelType modelType : values()) {
            MAP.put(modelType.code, modelType);
        }
    }

    ModelType(Integer num, String str) {
        this.code = num;
        this.name = str;
    }

    public static ModelType getByCode(Integer num) {
        return MAP.get(num);
    }
}
