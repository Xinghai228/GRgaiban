package io.github.lazyimmortal.sesame.mtop.bridge;

import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class MtopHook {
    private static final String TAG = "MtopHook";
    private static volatile Object instance;

    public static Object resolveInstance(ClassLoader classLoader) {
        Object obj = instance;
        if (obj != null) {
            return obj;
        }
        synchronized (MtopHook.class) {
            if (instance != null) {
                return instance;
            }
            try {
                Object objCallMethod = XposedHelpers.callMethod(XposedHelpers.callMethod(XposedHelpers.callStaticMethod(XposedHelpers.findClass("com.alipay.mobile.framework.LauncherApplicationAgent", classLoader), "getInstance", new Object[0]), "getMicroApplicationContext", new Object[0]), "findServiceByInterface", new Object[]{"com.alipay.android.phone.mobilesdk.mtop.MtopService"});
                if (objCallMethod != null) {
                    instance = objCallMethod;
                } else {
                    Log.i(TAG, "MtopService 为 null（findServiceByInterface 未返回）");
                }
                return objCallMethod;
            } catch (Throwable th) {
                Log.i(TAG, "resolveInstance 失败: " + th);
                Log.printStackTrace(TAG, th);
                return null;
            }
        }
    }
}
