package io.github.lazyimmortal.sesame.rpc.bridge;

import io.github.lazyimmortal.sesame.entity.RpcEntity;

/* JADX INFO: loaded from: classes.dex */
public interface RpcBridge {
    RpcVersion getVersion();

    void load() throws Exception;

    RpcEntity requestObject(RpcEntity rpcEntity);

    RpcEntity requestObject(RpcEntity rpcEntity, int i, int i2);

    RpcEntity requestObject(String str, String str2);

    RpcEntity requestObject(String str, String str2, int i, int i2);

    RpcEntity requestObject(String str, String str2, String str3);

    RpcEntity requestObject(String str, String str2, String str3, int i, int i2);

    String requestString(RpcEntity rpcEntity);

    String requestString(RpcEntity rpcEntity, int i, int i2);

    String requestString(String str, String str2);

    String requestString(String str, String str2, int i, int i2);

    String requestString(String str, String str2, String str3);

    String requestString(String str, String str2, String str3, int i, int i2);

    void unload();

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
