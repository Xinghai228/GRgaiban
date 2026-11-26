package io.github.lazyimmortal.sesame.hook;

import fi.iki.elonen.NanoHTTPD;
import io.github.lazyimmortal.sesame.util.Log;
import java.net.BindException;

/* JADX INFO: loaded from: classes.dex */
public class ModuleHttpServerManager {
    private static final ModuleHttpServerManager INSTANCE = new ModuleHttpServerManager();
    private static final String TAG = "ModuleHttpServerManager";
    private ModuleHttpServer server;

    private ModuleHttpServerManager() {
    }

    public static ModuleHttpServerManager getInstance() {
        return INSTANCE;
    }

    public synchronized void startIfNeeded(int i, String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            try {
                if (str2.equals(str3)) {
                    ModuleHttpServer moduleHttpServer = this.server;
                    if (moduleHttpServer == null || !moduleHttpServer.isAlive()) {
                        try {
                            stop();
                            startWithRetry(i, str);
                        } catch (Exception e) {
                            if (isAddressInUse(e)) {
                                Log.i(TAG, "startIfNeeded: 端口 " + i + " 已被占用，视为已有HTTP服务实例在运行，跳过启动");
                            } else {
                                Log.printStackTrace("HTTP 服务启动失败", e);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean isAddressInUse(Throwable th) {
        while (th != null) {
            if (th instanceof BindException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    private void startWithRetry(int i, String str) throws Exception {
        Exception e = null;
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                ModuleHttpServer moduleHttpServer = new ModuleHttpServer(i, str);
                moduleHttpServer.start(NanoHTTPD.SOCKET_READ_TIMEOUT, false);
                this.server = moduleHttpServer;
                Log.record("服务启动🚀HTTP: http://127.0.0.1:" + i);
                Log.record("标记令牌🔑Token: " + str);
                return;
            } catch (Exception e2) {
                e = e2;
                if (i2 < 2) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (e == null) {
            throw new IllegalStateException("HTTP 服务启动失败");
        }
    }

    public synchronized void stop() {
        try {
            ModuleHttpServer moduleHttpServer = this.server;
            if (moduleHttpServer != null) {
                moduleHttpServer.stop();
                this.server = null;
                Log.record("HTTP 服务已停止");
            }
        } catch (Exception e) {
            Log.printStackTrace("停止服务异常", e);
        }
    }
}
