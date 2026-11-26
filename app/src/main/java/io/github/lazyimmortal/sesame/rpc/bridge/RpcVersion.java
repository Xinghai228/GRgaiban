package io.github.lazyimmortal.sesame.rpc.bridge;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum RpcVersion {
    OLD("OLD"),
    NEW("NEW");

    private static final Map<String, RpcVersion> MAP = new HashMap();
    final String code;

    static {
        for (RpcVersion rpcVersion : values()) {
            MAP.put(rpcVersion.code, rpcVersion);
        }
    }

    public String getCode() {
        return this.code;
    }

    RpcVersion(String str) {
        this.code = str;
    }

    public static RpcVersion getByCode(String str) {
        return MAP.get(str);
    }
}
