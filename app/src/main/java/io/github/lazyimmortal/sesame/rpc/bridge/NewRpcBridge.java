package io.github.lazyimmortal.sesame.rpc.bridge;

import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.entity.RpcEntity;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.rpc.intervallimit.RpcIntervalLimit;
import io.github.lazyimmortal.sesame.util.ClassUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.NotificationUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class NewRpcBridge implements RpcBridge {
    private static final String TAG = "NewRpcBridge";
    private Class<?>[] bridgeCallbackClazzArray;
    private ClassLoader loader;
    private Method newRpcCallMethod;
    private Object newRpcInstance;
    private Method parseObjectMethod;

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ RpcEntity requestObject(RpcEntity rpcEntity) {
        return requestObject(rpcEntity, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ RpcEntity requestObject(String str, String str2) {
        return requestObject(str, str2, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ RpcEntity requestObject(String str, String str2, int i, int i2) {
        return requestObject(new RpcEntity(str, str2), i, i2);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ RpcEntity requestObject(String str, String str2, String str3) {
        return requestObject(str, str2, str3, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ RpcEntity requestObject(String str, String str2, String str3, int i, int i2) {
        return requestObject(new RpcEntity(str, str2, str3), i, i2);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ String requestString(RpcEntity rpcEntity) {
        return requestString(rpcEntity, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ String requestString(String str, String str2) {
        return requestString(str, str2, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ String requestString(String str, String str2, int i, int i2) {
        return requestString(new RpcEntity(str, str2), i, i2);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ String requestString(String str, String str2, String str3) {
        return requestString(str, str2, str3, 3, -1);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public /* synthetic */ String requestString(String str, String str2, String str3, int i, int i2) {
        return requestString(new RpcEntity(str, str2, str3), i, i2);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public RpcVersion getVersion() {
        return RpcVersion.NEW;
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public void load() throws Exception {
        ClassLoader classLoader = ApplicationHook.getClassLoader();
        this.loader = classLoader;
        try {
            Object objCallMethod = XposedHelpers.callMethod(XposedHelpers.callStaticMethod(XposedHelpers.findClass("com.alipay.mobile.nebulacore.Nebula", classLoader), "getService", new Object[0]), "getExtensionManager", new Object[0]);
            Method declaredMethod = objCallMethod.getClass().getDeclaredMethod("createExtensionInstance", Class.class);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, this.loader.loadClass("com.alibaba.ariver.commonability.network.rpc.RpcBridgeExtension"));
            this.newRpcInstance = objInvoke;
            if (objInvoke == null) {
                Object objCallMethod2 = XposedHelpers.callMethod(objCallMethod, "getNodeExtensionMap", new Object[0]);
                if (objCallMethod2 != null) {
                    Iterator it = ((Map) objCallMethod2).entrySet().iterator();
                    while (it.hasNext()) {
                        for (Map.Entry entry : ((Map) ((Map.Entry) it.next()).getValue()).entrySet()) {
                            if ("com.alibaba.ariver.commonability.network.rpc.RpcBridgeExtension".equals(entry.getKey())) {
                                this.newRpcInstance = entry.getValue();
                                break;
                            }
                        }
                    }
                }
                if (this.newRpcInstance == null) {
                    Log.i(TAG, "get newRpcInstance null");
                    throw new RuntimeException("get newRpcInstance is null");
                }
            }
            this.parseObjectMethod = this.loader.loadClass("com.alibaba.fastjson.JSON").getMethod("parseObject", String.class);
            Class<?> clsLoadClass = this.loader.loadClass("com.alibaba.ariver.engine.api.bridge.extension.BridgeCallback");
            this.bridgeCallbackClazzArray = new Class[]{clsLoadClass};
            Class<?> cls = this.newRpcInstance.getClass();
            Class<?> clsLoadClass2 = this.loader.loadClass(ClassUtil.JSON_OBJECT_NAME);
            Class<?> clsLoadClass3 = this.loader.loadClass(ClassUtil.JSON_OBJECT_NAME);
            Class<?> clsLoadClass4 = this.loader.loadClass("com.alibaba.ariver.app.api.App");
            Class<?> clsLoadClass5 = this.loader.loadClass("com.alibaba.ariver.app.api.Page");
            Class<?> clsLoadClass6 = this.loader.loadClass("com.alibaba.ariver.engine.api.bridge.model.ApiContext");
            Class<?> cls2 = Boolean.TYPE;
            this.newRpcCallMethod = cls.getMethod("rpc", String.class, cls2, cls2, String.class, clsLoadClass2, String.class, clsLoadClass3, cls2, cls2, Integer.TYPE, cls2, String.class, clsLoadClass4, clsLoadClass5, clsLoadClass6, clsLoadClass);
            Log.i(TAG, "get newRpcCallMethod successfully");
        } catch (Exception e) {
            Log.i(TAG, "get newRpcCallMethod err:");
            throw e;
        }
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public void unload() {
        this.newRpcCallMethod = null;
        this.bridgeCallbackClazzArray = null;
        this.parseObjectMethod = null;
        this.newRpcInstance = null;
        this.loader = null;
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public String requestString(RpcEntity rpcEntity, int i, int i2) {
        RpcEntity rpcEntityRequestObject = requestObject(rpcEntity, i, i2);
        if (rpcEntityRequestObject != null) {
            return rpcEntityRequestObject.getResponseString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSilencedRpcError(String str) {
        return "com.alipay.adexchange.ad.facade.xlightPlugin".equals(str);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x02db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:125:0x0311 A[LOOP:0: B:6:0x002a->B:125:0x0311, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:148:0x02cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x02ed A[SYNTHETIC] */
    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public RpcEntity requestObject(final RpcEntity rpcEntity, int i, int i2) {
        int i3;
        int i4;
        String string;
        int i5 = i2;
        String str = " | method: ";
        String str2 = "\n";
        String str3 = "\n数据: ";
        if (ApplicationHook.isOffline()) {
            return null;
        }
        final int iHashCode = rpcEntity.hashCode();
        final String requestMethod = rpcEntity.getRequestMethod();
        String requestData = rpcEntity.getRequestData();
        String requestRelation = rpcEntity.getRequestRelation();
        boolean z = false;
        int i6 = 0;
        while (true) {
            int i7 = i6 + 1;
            try {
                RpcIntervalLimit.enterIntervalLimit(requestMethod);
                Method method = this.newRpcCallMethod;
                Object obj = this.newRpcInstance;
                Boolean boolValueOf = Boolean.valueOf(z);
                Boolean boolValueOf2 = Boolean.valueOf(z);
                Method method2 = this.parseObjectMethod;
                i3 = i7;
                try {
                    StringBuilder sb = new StringBuilder();
                    try {
                        sb.append("{\"__apiCallStartTime\":");
                        str = str;
                        try {
                            sb.append(System.currentTimeMillis());
                            sb.append(",\"apiCallLink\":\"XRiverNotFound\",\"execEngine\":\"XRiver\",\"operationType\":\"");
                            sb.append(requestMethod);
                            sb.append("\",\"requestData\":");
                            sb.append(requestData);
                            if (requestRelation == null) {
                                string = "";
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(",\"relationLocal\":");
                                sb2.append(requestRelation);
                                string = sb2.toString();
                            }
                            try {
                                sb.append(string);
                                sb.append("}");
                                Object objInvoke = method2.invoke(null, sb.toString());
                                requestRelation = requestRelation;
                                try {
                                    String str4 = str3;
                                    try {
                                        String str5 = requestData;
                                        try {
                                            Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, this.bridgeCallbackClazzArray, new InvocationHandler() { // from class: io.github.lazyimmortal.sesame.rpc.bridge.NewRpcBridge.1
                                                @Override // java.lang.reflect.InvocationHandler
                                                public Object invoke(Object obj2, Method method3, Object[] objArr) {
                                                    if (objArr.length != 1 || !"sendJSONResponse".equals(method3.getName())) {
                                                        return null;
                                                    }
                                                    try {
                                                        Object obj3 = objArr[0];
                                                        rpcEntity.setResponseObject(obj3, (String) XposedHelpers.callMethod(obj3, "toJSONString", new Object[0]));
                                                        if (((Boolean) XposedHelpers.callMethod(obj3, "containsKey", new Object[]{"success"})).booleanValue() || ((Boolean) XposedHelpers.callMethod(obj3, "containsKey", new Object[]{"isSuccess"})).booleanValue()) {
                                                            return null;
                                                        }
                                                        rpcEntity.setError();
                                                        if (NewRpcBridge.isSilencedRpcError(rpcEntity.getRequestMethod())) {
                                                            return null;
                                                        }
                                                        Log.error("new rpc response | id: " + rpcEntity.hashCode() + " | method: " + rpcEntity.getRequestMethod() + " args: " + rpcEntity.getRequestData() + " | data: " + rpcEntity.getResponseString());
                                                        return null;
                                                    } catch (Exception e) {
                                                        rpcEntity.setError();
                                                        Log.error("new rpc response | id: " + iHashCode + " | method: " + requestMethod + " err:");
                                                        Log.printStackTrace(e);
                                                        return null;
                                                    }
                                                }
                                            });
                                            Object[] objArr = new Object[16];
                                            try {
                                                objArr[0] = requestMethod;
                                                objArr[1] = boolValueOf;
                                                objArr[2] = boolValueOf2;
                                                objArr[3] = "json";
                                                objArr[4] = objInvoke;
                                                objArr[5] = "";
                                                objArr[6] = null;
                                                objArr[7] = true;
                                                objArr[8] = false;
                                                objArr[9] = 0;
                                                objArr[10] = false;
                                                objArr[11] = "";
                                                objArr[12] = null;
                                                objArr[13] = null;
                                                objArr[14] = null;
                                                objArr[15] = objNewProxyInstance;
                                                method.invoke(obj, objArr);
                                                if (!rpcEntity.getHasResult().booleanValue()) {
                                                    Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + str5 + str4 + rpcEntity.getResponseString() + str2);
                                                    return null;
                                                }
                                                str2 = str2;
                                                str3 = str4;
                                                requestData = str5;
                                                try {
                                                    if (!rpcEntity.getHasError().booleanValue()) {
                                                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                        return rpcEntity;
                                                    }
                                                    try {
                                                        Object responseObject = rpcEntity.getResponseObject();
                                                        Object[] objArr2 = new Object[1];
                                                        try {
                                                            try {
                                                                objArr2[0] = "error";
                                                                if (!"2000".equals((String) XposedHelpers.callMethod(responseObject, "getString", objArr2))) {
                                                                    Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                    return rpcEntity;
                                                                }
                                                                if (!ApplicationHook.isOffline()) {
                                                                    ApplicationHook.setOffline(true);
                                                                    NotificationUtil.updateStatusText("登录超时");
                                                                    if (BaseModel.getTimeoutRestart().getValue().booleanValue()) {
                                                                        Log.record("尝试重新登录");
                                                                        ApplicationHook.reLoginByBroadcast();
                                                                    }
                                                                }
                                                                Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                return null;
                                                            } catch (Exception e) {
                                                                e = e;
                                                                StringBuilder sb3 = new StringBuilder();
                                                                sb3.append("new rpc response | id: ");
                                                                sb3.append(iHashCode);
                                                                str = str;
                                                                try {
                                                                    sb3.append(str);
                                                                    sb3.append(requestMethod);
                                                                    sb3.append(" get err:");
                                                                    Log.error(sb3.toString());
                                                                    Log.printStackTrace(e);
                                                                    i2 = i2;
                                                                    if (i2 < 0) {
                                                                        try {
                                                                            try {
                                                                                Thread.sleep(RandomUtil.delay() + 600);
                                                                            } catch (Throwable th) {
                                                                                th = th;
                                                                                try {
                                                                                    Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                                                                                    Log.printStackTrace(th);
                                                                                    if (i2 < 0) {
                                                                                        try {
                                                                                            Thread.sleep(RandomUtil.delay() + 600);
                                                                                        } catch (InterruptedException e2) {
                                                                                            Log.printStackTrace(e2);
                                                                                        }
                                                                                    } else if (i2 > 0) {
                                                                                        try {
                                                                                            Thread.sleep(i2);
                                                                                        } catch (InterruptedException e3) {
                                                                                            Log.printStackTrace(e3);
                                                                                        }
                                                                                    }
                                                                                    i4 = i3;
                                                                                    if (i4 >= i) {
                                                                                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                                        return null;
                                                                                    }
                                                                                    requestData = requestData;
                                                                                    i5 = i2;
                                                                                    i6 = i4;
                                                                                    requestRelation = requestRelation;
                                                                                    z = false;
                                                                                    str3 = str3;
                                                                                    str = str;
                                                                                } catch (Throwable th2) {
                                                                                    Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                                    throw th2;
                                                                                }
                                                                            }
                                                                        } catch (InterruptedException e4) {
                                                                            Log.printStackTrace(e4);
                                                                        }
                                                                    } else if (i2 > 0) {
                                                                        try {
                                                                            Thread.sleep(i2);
                                                                        } catch (InterruptedException e5) {
                                                                            Log.printStackTrace(e5);
                                                                        }
                                                                    }
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                    i2 = i2;
                                                                    Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                                                                    Log.printStackTrace(th);
                                                                    if (i2 < 0) {
                                                                        Thread.sleep(RandomUtil.delay() + 600);
                                                                    } else if (i2 > 0) {
                                                                        Thread.sleep(i2);
                                                                    }
                                                                    i4 = i3;
                                                                    if (i4 >= i) {
                                                                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                        return null;
                                                                    }
                                                                    requestData = requestData;
                                                                    i5 = i2;
                                                                    i6 = i4;
                                                                    requestRelation = requestRelation;
                                                                    z = false;
                                                                    str3 = str3;
                                                                    str = str;
                                                                }
                                                                i4 = i3;
                                                                if (i4 >= i) {
                                                                    Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                    return null;
                                                                }
                                                                requestData = requestData;
                                                                i5 = i2;
                                                                i6 = i4;
                                                                requestRelation = requestRelation;
                                                                z = false;
                                                                str3 = str3;
                                                                str = str;
                                                            }
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            i2 = i2;
                                                            str = str;
                                                            Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                                                            Log.printStackTrace(th);
                                                            if (i2 < 0) {
                                                                Thread.sleep(RandomUtil.delay() + 600);
                                                            } else if (i2 > 0) {
                                                                Thread.sleep(i2);
                                                            }
                                                            i4 = i3;
                                                            if (i4 >= i) {
                                                                Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                                return null;
                                                            }
                                                            requestData = requestData;
                                                            i5 = i2;
                                                            i6 = i4;
                                                            requestRelation = requestRelation;
                                                            z = false;
                                                            str3 = str3;
                                                            str = str;
                                                        }
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                    }
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                                                    Log.printStackTrace(th);
                                                    if (i2 < 0) {
                                                        Thread.sleep(RandomUtil.delay() + 600);
                                                    } else if (i2 > 0) {
                                                        Thread.sleep(i2);
                                                    }
                                                    i4 = i3;
                                                    if (i4 >= i) {
                                                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                                        return null;
                                                    }
                                                    requestData = requestData;
                                                    i5 = i2;
                                                    i6 = i4;
                                                    requestRelation = requestRelation;
                                                    z = false;
                                                    str3 = str3;
                                                    str = str;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                i2 = i2;
                                                str = str;
                                                str2 = str2;
                                                str3 = str4;
                                                requestData = str5;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            str2 = str2;
                                            str3 = str4;
                                            requestData = str5;
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        requestData = requestData;
                                        str2 = str2;
                                        str3 = str4;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    str = str;
                                    str2 = str2;
                                    i2 = i2;
                                    Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                                    Log.printStackTrace(th);
                                    if (i2 < 0) {
                                        Thread.sleep(RandomUtil.delay() + 600);
                                    } else if (i2 > 0) {
                                        Thread.sleep(i2);
                                    }
                                    i4 = i3;
                                    if (i4 >= i) {
                                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                                        return null;
                                    }
                                    requestData = requestData;
                                    i5 = i2;
                                    i6 = i4;
                                    requestRelation = requestRelation;
                                    z = false;
                                    str3 = str3;
                                    str = str;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                requestRelation = requestRelation;
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            str3 = str3;
                            requestData = requestData;
                            requestRelation = requestRelation;
                            str = str;
                        }
                    } catch (Throwable th13) {
                        th = th13;
                        str = str;
                        str3 = str3;
                        requestData = requestData;
                        requestRelation = requestRelation;
                    }
                } catch (Throwable th14) {
                    th = th14;
                    i2 = i5;
                    requestData = requestData;
                    Log.error("new rpc request | id: " + iHashCode + str + requestMethod + " err:");
                    Log.printStackTrace(th);
                    if (i2 < 0) {
                        Thread.sleep(RandomUtil.delay() + 600);
                    } else if (i2 > 0) {
                        Thread.sleep(i2);
                    }
                    i4 = i3;
                    if (i4 >= i) {
                        Log.i("New RPC\n方法: " + requestMethod + "\n参数: " + requestData + str3 + rpcEntity.getResponseString() + str2);
                        return null;
                    }
                    requestData = requestData;
                    i5 = i2;
                    i6 = i4;
                    requestRelation = requestRelation;
                    z = false;
                    str3 = str3;
                    str = str;
                }
            } catch (Throwable th15) {
                th = th15;
                i3 = i7;
            }
            requestData = requestData;
            i5 = i2;
            i6 = i4;
            requestRelation = requestRelation;
            z = false;
            str3 = str3;
            str = str;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0242 */
    /* JADX WARN: Code duplicated, block: B:106:0x02bc A[LOOP:0: B:6:0x001c->B:106:0x02bc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:138:0x026e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x0290 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x027e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.github.lazyimmortal.sesame.entity.RpcEntity newAsyncRequest(final io.github.lazyimmortal.sesame.entity.RpcEntity r20, int r21, int r22) {
        /*
            Method dump skipped, instruction units count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.lazyimmortal.sesame.rpc.bridge.NewRpcBridge.newAsyncRequest(io.github.lazyimmortal.sesame.entity.RpcEntity, int, int):io.github.lazyimmortal.sesame.entity.RpcEntity");
    }
}
