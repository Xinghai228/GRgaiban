package io.github.lazyimmortal.sesame.hook;

import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AuthCodeHelper {
    private static final String TAG = "Oauth2AuthCodeHelper";
    private static ClassLoader classLoader;

    public static void init(ClassLoader classLoader2) {
        classLoader = classLoader2;
        Log.i("Oauth2AuthCodeHelper 初始化完成");
    }

    public static String getAuthCode(String str) {
        Object objCallMethod;
        try {
            ClassLoader classLoader2 = classLoader;
            if (classLoader2 == null) {
                Log.error("Oauth2AuthCodeHelper 未初始化，请先调用 init 方法");
                return null;
            }
            Object objNewInstance = XposedHelpers.newInstance(XposedHelpers.findClass("com.alibaba.ariver.rpc.biz.proxy.Oauth2AuthCodeServiceImpl", classLoader2), new Object[0]);
            Object objNewInstance2 = XposedHelpers.newInstance(XposedHelpers.findClass("com.alibaba.ariver.permission.openauth.model.request.AuthSkipRequestModel", classLoader), new Object[0]);
            XposedHelpers.callMethod(objNewInstance2, "setAppId", new Object[]{str});
            XposedHelpers.callMethod(objNewInstance2, "setCurrentPageUrl", new Object[]{"https://" + str + ".hybrid.alipay-eco.com/index.html"});
            XposedHelpers.callMethod(objNewInstance2, "setFromSystem", new Object[]{"mobilegw_android"});
            XposedHelpers.callMethod(objNewInstance2, "setScopeNicks", new Object[]{Collections.singletonList("auth_base")});
            XposedHelpers.callMethod(objNewInstance2, "setState", new Object[]{"QnJpbmcgc21hbGwgYW5kIGJlYXV0aWZ1bCBjaGFuZ2VzIHRvIHRoZSB3b3JsZA=="});
            XposedHelpers.callMethod(objNewInstance2, "setIsvAppId", new Object[]{""});
            XposedHelpers.callMethod(objNewInstance2, "setExtInfo", new Object[]{new HashMap()});
            HashMap map = new HashMap();
            map.put("channel", "tinyapp");
            map.put("clientAppId", str);
            XposedHelpers.callMethod(objNewInstance2, "setAppExtInfo", new Object[]{map});
            Object objCallMethod2 = XposedHelpers.callMethod(objNewInstance, "getAuthSkipResult", new Object[]{"AP", null, objNewInstance2});
            if (objCallMethod2 == null || (objCallMethod = XposedHelpers.callMethod(objCallMethod2, "getAuthExecuteResult", new Object[0])) == null) {
                return null;
            }
            Object objCallMethod3 = XposedHelpers.callMethod(objCallMethod, "getAuthCode", new Object[0]);
            if (objCallMethod3 instanceof String) {
                return (String) objCallMethod3;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private AuthCodeHelper() {
        throw new UnsupportedOperationException("Utility class cannot be instantiated");
    }
}
