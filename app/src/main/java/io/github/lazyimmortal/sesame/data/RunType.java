package io.github.lazyimmortal.sesame.data;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum RunType {
    DISABLE(0, "已关闭"),
    MODEL(1, "已激活"),
    PACKAGE(2, "已加载");

    private static final Map<Integer, RunType> MAP = new HashMap();
    private final Integer code;
    private final String name;

    static {
        for (RunType runType : values()) {
            MAP.put(runType.code, runType);
        }
    }

    public Integer getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    RunType(Integer num, String str) {
        this.code = num;
        this.name = str;
    }

    public static RunType getByCode(Integer num) {
        return MAP.get(num);
    }
}
