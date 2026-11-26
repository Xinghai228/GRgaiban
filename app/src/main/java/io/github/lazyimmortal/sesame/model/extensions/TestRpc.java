package io.github.lazyimmortal.sesame.model.extensions;

/* JADX INFO: loaded from: classes.dex */
public class TestRpc {
    private static final String TAG = "TestRpc";

    /* JADX WARN: Type inference failed for: r0v0, types: [io.github.lazyimmortal.sesame.model.extensions.TestRpc$1] */
    public static void start(String str, String str2, String str3) {
        new Thread() { // from class: io.github.lazyimmortal.sesame.model.extensions.TestRpc.1
            String broadcastData;
            String broadcastFun;
            String testType;

            public Thread setData(String str4, String str5, String str6) {
                this.broadcastFun = str4;
                this.broadcastData = str5;
                this.testType = str6;
                return this;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ExtensionsHandle.handleRequest(this.testType, this.broadcastFun, this.broadcastData);
            }
        }.setData(str, str2, str3).start();
    }
}
