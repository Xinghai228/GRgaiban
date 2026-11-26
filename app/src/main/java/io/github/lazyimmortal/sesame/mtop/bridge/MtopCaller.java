package io.github.lazyimmortal.sesame.mtop.bridge;

import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.mtop.intervallimit.MtopIntervalLimit;
import io.github.lazyimmortal.sesame.util.ClassUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class MtopCaller {
    private static final String TAG = "MtopCaller";
    private static volatile Class<?> jsonClsCache;
    private static volatile Class<?> methodEnumClsCache;
    private static volatile Method parseObjectMethodCache;
    private static volatile Method putCache;

    public static String call(ClassLoader classLoader, String str, String str2) {
        return call(classLoader, str, str2, null, false, false, 15000);
    }

    public static String call(ClassLoader classLoader, String str, String str2, boolean z, boolean z2, int i) {
        return call(classLoader, str, str2, null, z, z2, i);
    }

    public static String call(ClassLoader classLoader, String str, String str2, String str3, boolean z, boolean z2, int i) {
        Object objNewInstance;
        MtopIntervalLimit.enterIntervalLimit(str);
        try {
            Object objResolveInstance = MtopHook.resolveInstance(classLoader);
            if (objResolveInstance == null) {
                Log.i(TAG, "call 失败：MtopService 为 null，api=" + str);
                return null;
            }
            Class<?> clsEnsureJsonCls = ensureJsonCls(classLoader);
            if (clsEnsureJsonCls == null) {
                Log.i(TAG, "call 失败：fastjson JSONObject 不可用，api=" + str);
                return null;
            }
            Method methodEnsurePut = ensurePut(clsEnsureJsonCls);
            if (methodEnsurePut == null) {
                Log.i(TAG, "call 失败：JSONObject.put 不可用，api=" + str);
                return null;
            }
            Object objNewInstance2 = XposedHelpers.newInstance(clsEnsureJsonCls, new Object[0]);
            methodEnsurePut.invoke(objNewInstance2, "apiName", str);
            methodEnsurePut.invoke(objNewInstance2, "apiVersion", "1.0");
            methodEnsurePut.invoke(objNewInstance2, "dataText", str2);
            methodEnsurePut.invoke(objNewInstance2, "usePost", resolveMethodEnum(classLoader, z));
            methodEnsurePut.invoke(objNewInstance2, "type", "originaljson");
            methodEnsurePut.invoke(objNewInstance2, "timeout", Integer.valueOf(i > 0 ? i : 15000));
            methodEnsurePut.invoke(objNewInstance2, "needHttps", Boolean.TRUE);
            methodEnsurePut.invoke(objNewInstance2, "needSpdy", Boolean.TRUE);
            methodEnsurePut.invoke(objNewInstance2, "needWua", z2 ? Boolean.TRUE : Boolean.FALSE);
            methodEnsurePut.invoke(objNewInstance2, "needEcodeSign", Boolean.FALSE);
            methodEnsurePut.invoke(objNewInstance2, "shouldSkipAutoLogin", Boolean.FALSE);
            methodEnsurePut.invoke(objNewInstance2, "ignore_aliauth_autologin", Boolean.FALSE);
            methodEnsurePut.invoke(objNewInstance2, "isvOpenAppkey", "DEFAULT_AUTH");
            methodEnsurePut.invoke(objNewInstance2, "isvAccessToken", "");
            methodEnsurePut.invoke(objNewInstance2, "customHost", "");
            methodEnsurePut.invoke(objNewInstance2, "ttid", "");
            methodEnsurePut.invoke(objNewInstance2, "tb_eagleeyex_scm_project", "");
            if (str3 == null || str3.isEmpty()) {
                objNewInstance = XposedHelpers.newInstance(clsEnsureJsonCls, new Object[0]);
            } else {
                objNewInstance = parseJson(classLoader, str3);
                if (objNewInstance == null) {
                    objNewInstance = XposedHelpers.newInstance(clsEnsureJsonCls, new Object[0]);
                }
            }
            methodEnsurePut.invoke(objNewInstance2, "headers", objNewInstance);
            Object objCallMethod = XposedHelpers.callMethod(objResolveInstance, "syncRequestFastJson", new Object[]{objNewInstance2});
            if (objCallMethod == null) {
                Log.i(TAG, "call 返回 null，api=" + str);
                return null;
            }
            try {
                Object objectField = XposedHelpers.getObjectField(objCallMethod, "second");
                if (objectField != null) {
                    return String.valueOf(objectField);
                }
                Object objectField2 = XposedHelpers.getObjectField(objCallMethod, "first");
                if (objectField2 != null) {
                    return String.valueOf(objectField2);
                }
                return String.valueOf(objCallMethod);
            } catch (Throwable unused) {
            }
        } catch (Throwable th) {
            Log.i(TAG, "call 异常，api=" + str + " : " + th);
            Log.printStackTrace(TAG, th);
            return null;
        }
    }

    private static Class<?> ensureJsonCls(ClassLoader classLoader) {
        if (jsonClsCache != null) {
            return jsonClsCache;
        }
        try {
            Class<?> clsFindClass = XposedHelpers.findClass(ClassUtil.JSON_OBJECT_NAME, classLoader);
            jsonClsCache = clsFindClass;
            return clsFindClass;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method ensurePut(Class<?> cls) {
        if (putCache != null) {
            return putCache;
        }
        try {
            Method method = cls.getMethod("put", String.class, Object.class);
            putCache = method;
            return method;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Object resolveMethodEnum(ClassLoader classLoader, boolean z) {
        try {
            if (methodEnumClsCache == null) {
                methodEnumClsCache = XposedHelpers.findClass("mtopsdk.mtop.domain.MethodEnum", classLoader);
            }
            return XposedHelpers.getStaticObjectField(methodEnumClsCache, z ? "POST" : "GET");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Object parseJson(ClassLoader classLoader, String str) {
        try {
            if (parseObjectMethodCache == null) {
                parseObjectMethodCache = XposedHelpers.findClass("com.alibaba.fastjson.JSON", classLoader).getMethod("parseObject", String.class);
            }
            return parseObjectMethodCache.invoke(null, str);
        } catch (Throwable th) {
            Log.i(TAG, "parseJson 失败: " + th);
            return null;
        }
    }
}
