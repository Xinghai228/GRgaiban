package io.github.lazyimmortal.sesame.rpc.bridge;

import io.github.lazyimmortal.sesame.data.RuntimeInfo;
import io.github.lazyimmortal.sesame.entity.RpcEntity;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.rpc.intervallimit.RpcIntervalLimit;
import io.github.lazyimmortal.sesame.util.ClassUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.NotificationUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class OldRpcBridge implements RpcBridge {
    private static final String TAG = "OldRpcBridge";
    private Object curH5PageImpl;
    private Method getResponseMethod;
    private Class<?> h5PageClazz;
    private ClassLoader loader;
    private Method rpcCallMethod;

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
            this.h5PageClazz = classLoader.loadClass(ClassUtil.H5PAGE_NAME);
            String str = TAG;
            Log.i(str, "rpc loadClass successfully");
            if (this.rpcCallMethod == null) {
                try {
                    Class<?> clsLoadClass = this.loader.loadClass("com.alipay.mobile.nebulaappproxy.api.rpc.H5RpcUtil");
                    Class<?> clsLoadClass2 = this.loader.loadClass(ClassUtil.JSON_OBJECT_NAME);
                    Class<?> cls = this.h5PageClazz;
                    Class<?> cls2 = Boolean.TYPE;
                    Class<?> cls3 = Integer.TYPE;
                    this.rpcCallMethod = clsLoadClass.getMethod("rpcCall", String.class, String.class, String.class, cls2, clsLoadClass2, String.class, cls2, cls, cls3, String.class, cls2, cls3, String.class);
                    this.getResponseMethod = this.loader.loadClass("com.alipay.mobile.nebulaappproxy.api.rpc.H5Response").getMethod("getResponse", null);
                    Log.i(str, "get oldRpcCallMethod successfully");
                } catch (Exception e) {
                    Log.i(TAG, "get oldRpcCallMethod err:");
                    throw e;
                }
            }
        } catch (ClassNotFoundException e2) {
            String str2 = TAG;
            Log.i(str2, "rpc loadClass err:");
            Log.printStackTrace(str2, e2);
            throw new RuntimeException(e2);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "rpc loadClass err:");
            Log.printStackTrace(str3, th);
            throw th;
        }
    }

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public void unload() {
        this.getResponseMethod = null;
        this.rpcCallMethod = null;
        this.h5PageClazz = null;
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

    @Override // io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge
    public RpcEntity requestObject(RpcEntity rpcEntity, int i, int i2) {
        int i3;
        Throwable cause;
        Object[] objArr;
        Object objInvoke;
        String str = "登录超时";
        if (ApplicationHook.isOffline()) {
            return null;
        }
        int iHashCode = rpcEntity.hashCode();
        String requestMethod = rpcEntity.getRequestMethod();
        String requestData = rpcEntity.getRequestData();
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            try {
                RpcIntervalLimit.enterIntervalLimit(requestMethod);
                try {
                    if (this.rpcCallMethod.getParameterTypes().length == 12) {
                        i3 = i5;
                        objInvoke = this.rpcCallMethod.invoke(null, requestMethod, requestData, "", true, null, null, false, this.curH5PageImpl, 0, "", false, -1);
                        objArr = null;
                    } else {
                        i3 = i5;
                        Method method = this.rpcCallMethod;
                        Object obj = this.curH5PageImpl;
                        Object[] objArr2 = new Object[13];
                        try {
                            objArr2[0] = requestMethod;
                            objArr2[1] = requestData;
                            objArr2[2] = "";
                            objArr2[3] = true;
                            objArr2[4] = null;
                            objArr2[5] = null;
                            objArr2[6] = false;
                            objArr2[7] = obj;
                            objArr2[8] = 0;
                            objArr2[9] = "";
                            objArr2[10] = false;
                            objArr2[11] = -1;
                            objArr2[12] = "";
                            objArr = null;
                            objInvoke = method.invoke(null, objArr2);
                        } catch (Throwable th) {
                            th = th;
                            rpcEntity.setError();
                            Log.error("old rpc request | id: " + iHashCode + " | method: " + requestMethod + " err:");
                            Log.printStackTrace(th);
                            if (!(th instanceof InvocationTargetException) && (cause = th.getCause()) != null) {
                                String message = cause.getMessage();
                                if (!StringUtil.isEmpty(message)) {
                                    if (message.contains(str)) {
                                        if (!ApplicationHook.isOffline()) {
                                            ApplicationHook.setOffline(true);
                                            NotificationUtil.updateStatusText(str);
                                            if (BaseModel.getTimeoutRestart().getValue().booleanValue()) {
                                                Log.record("尝试重新登录");
                                                ApplicationHook.reLoginByBroadcast();
                                            }
                                        }
                                    } else if (message.contains("[1004]") && "alipay.antmember.forest.h5.collectEnergy".equals(requestMethod)) {
                                        if (BaseModel.getWaitWhenException().getValue().intValue() > 0) {
                                            long jCurrentTimeMillis = System.currentTimeMillis() + ((long) BaseModel.getWaitWhenException().getValue().intValue());
                                            RuntimeInfo.getInstance().put(RuntimeInfo.RuntimeInfoKey.ForestPauseTime, Long.valueOf(jCurrentTimeMillis));
                                            NotificationUtil.updateStatusText("异常");
                                            Log.record("触发异常,等待至" + TimeUtil.getCommonDate(Long.valueOf(jCurrentTimeMillis)));
                                        }
                                        if (i2 < 0) {
                                            try {
                                                Thread.sleep(RandomUtil.delay() + 600);
                                            } catch (InterruptedException e) {
                                                Log.printStackTrace(e);
                                            }
                                        } else if (i2 > 0) {
                                            try {
                                                Thread.sleep(i2);
                                            } catch (InterruptedException e2) {
                                                Log.printStackTrace(e2);
                                            }
                                        }
                                    } else if (message.contains("MMTPException")) {
                                        try {
                                            rpcEntity.setResponseObject(new JSONObject("{\"resultCode\":\"FAIL\",\"memo\":\"MMTPException\",\"resultDesc\":\"MMTPException\"}"), "{\"resultCode\":\"FAIL\",\"memo\":\"MMTPException\",\"resultDesc\":\"MMTPException\"}");
                                            Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                                            return rpcEntity;
                                        } catch (JSONException e3) {
                                            try {
                                                Log.printStackTrace(e3);
                                                if (i2 < 0) {
                                                    try {
                                                        Thread.sleep(RandomUtil.delay() + 600);
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
                                                int i6 = i3;
                                                if (i6 >= i) {
                                                    Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                                                    return null;
                                                }
                                                i4 = i6;
                                            } catch (Throwable th2) {
                                                Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                                                throw th2;
                                            }
                                        }
                                    }
                                }
                            }
                            Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                            return null;
                        }
                    }
                    try {
                        String str2 = (String) this.getResponseMethod.invoke(objInvoke, objArr);
                        JSONObject jSONObject = new JSONObject(str2);
                        rpcEntity.setResponseObject(jSONObject, str2);
                        str = "系统繁忙";
                        if (jSONObject.optString("memo", "").contains("系统繁忙")) {
                            ApplicationHook.setOffline(true);
                            NotificationUtil.updateStatusText("系统繁忙，可能需要滑动验证");
                            Log.record("系统繁忙，可能需要滑动验证");
                            Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                            return null;
                        }
                        if (!jSONObject.optBoolean("success") && !jSONObject.optBoolean("isSuccess")) {
                            rpcEntity.setError();
                            Log.error("old rpc response | id: " + iHashCode + " | method: " + requestMethod + " args: " + requestData + " | data:" + rpcEntity.getResponseString());
                        }
                        Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                        return rpcEntity;
                    } catch (Throwable unused) {
                        Log.error("old rpc response | id: " + iHashCode + " | method: " + requestMethod + " get err:");
                        Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    rpcEntity.setError();
                    Log.error("old rpc request | id: " + iHashCode + " | method: " + requestMethod + " err:");
                    Log.printStackTrace(th);
                    if (!(th instanceof InvocationTargetException)) {
                    }
                    Log.i("Old RPC\n方法: " + requestMethod + "\n参数: " + requestData + "\n数据: " + rpcEntity.getResponseString() + "\n");
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                i3 = i5;
            }
        }
    }
}
