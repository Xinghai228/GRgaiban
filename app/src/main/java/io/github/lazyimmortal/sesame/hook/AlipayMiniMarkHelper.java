package io.github.lazyimmortal.sesame.hook;

import dalvik.system.DexFile;
import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AlipayMiniMarkHelper {
    private static ClassLoader classLoader;
    private static volatile boolean dexScanStarted;
    private static final String[] KNOWN_CLASSES = {"com.alipay.mobile.nebula.util.H5HttpUtils", "com.alipay.mobile.nebula.utils.H5HttpUtils", "com.alibaba.mobile.nebula.util.H5HttpUtils", "com.alibaba.ariver.nebula.util.H5HttpUtils"};
    private static final List<Method> CANDIDATES = new CopyOnWriteArrayList();

    public static void init(ClassLoader classLoader2) {
        classLoader = classLoader2;
        Log.i("AlipayMiniMarkHelper 初始化完成");
        for (String str : KNOWN_CLASSES) {
            if (addCandidate(str)) {
                Log.i("minimark 定位=" + str);
            }
        }
        startDexScan(classLoader2);
    }

    public static String getAlipayMiniMark(String str, String str2) {
        Object objResolveReceiver;
        Iterator<Method> it = CANDIDATES.iterator();
        while (true) {
            if (it.hasNext()) {
                Method next = it.next();
                try {
                    if (Modifier.isStatic(next.getModifiers())) {
                        objResolveReceiver = null;
                    } else {
                        objResolveReceiver = resolveReceiver(next.getDeclaringClass());
                        if (objResolveReceiver == null) {
                        }
                    }
                    Object objInvoke = next.invoke(objResolveReceiver, str, str2);
                    String str3 = objInvoke instanceof String ? (String) objInvoke : "";
                    if (!str3.isEmpty()) {
                        Log.debug("getAlipayMiniMark appId=" + str + " version=" + str2 + " via=" + next.getDeclaringClass().getSimpleName() + " len=" + str3.length() + " mark=" + str3);
                        return str3;
                    }
                    continue;
                } catch (Throwable th) {
                    Log.debug("getAlipayMiniMark 调用失败 " + next.getDeclaringClass().getSimpleName() + ": " + th);
                }
            } else {
                Log.debug("getAlipayMiniMark 无可用候选 appId=" + str);
                return "";
            }
        }
    }

    private static Object resolveReceiver(Class<?> cls) {
        Object serviceObject = ApplicationHook.getServiceObject(cls.getName());
        if (serviceObject != null) {
            return serviceObject;
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            Object serviceObject2 = ApplicationHook.getServiceObject(cls2.getName());
            if (serviceObject2 != null && cls.isInstance(serviceObject2)) {
                return serviceObject2;
            }
        }
        return null;
    }

    private static boolean addCandidate(String str) {
        try {
            Class clsFindClassIfExists = XposedHelpers.findClassIfExists(str, classLoader);
            return clsFindClassIfExists != null && addCandidate((Class<?>) clsFindClassIfExists);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean addCandidate(Class<?> cls) {
        boolean z = false;
        try {
            boolean z2 = false;
            for (Method method : cls.getDeclaredMethods()) {
                try {
                    if ("getAlipayMiniMark".equals(method.getName())) {
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == String.class) {
                            method.setAccessible(true);
                            List<Method> list = CANDIDATES;
                            if (list.contains(method)) {
                                continue;
                            } else {
                                list.add(method);
                                z2 = true;
                            }
                        }
                    }
                } catch (Throwable unused) {
                    z = z2;
                    return z;
                }
            }
            return z2;
        } catch (Throwable unused2) {
        }
    }

    private static void startDexScan(final ClassLoader classLoader2) {
        if (dexScanStarted || classLoader2 == null) {
            return;
        }
        dexScanStarted = true;
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.AlipayMiniMarkHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AlipayMiniMarkHelper.lambda$startDexScan$0(classLoader2);
            }
        }, "sesame-minimark-scan").start();
    }

    static /* synthetic */ void lambda$startDexScan$0(ClassLoader classLoader2) {
        try {
            int i = 0;
            for (Object obj : (Object[]) XposedHelpers.getObjectField(XposedHelpers.getObjectField(classLoader2, "pathList"), "dexElements")) {
                try {
                    File file = (File) XposedHelpers.getObjectField(obj, "path");
                    if (file != null && file.isFile()) {
                        DexFile dexFile = null;
                        try {
                            DexFile dexFile2 = new DexFile(file);
                            try {
                                Enumeration<String> enumerationEntries = dexFile2.entries();
                                while (enumerationEntries.hasMoreElements()) {
                                    String strNextElement = enumerationEntries.nextElement();
                                    if (isAlipayPackage(strNextElement)) {
                                        i++;
                                        if (addCandidate(strNextElement)) {
                                            Log.i("minimark 扫描命中=" + strNextElement);
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                                dexFile2.close();
                            } catch (Throwable unused) {
                                dexFile = dexFile2;
                                if (dexFile != null) {
                                    dexFile.close();
                                }
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                } catch (Throwable unused3) {
                }
            }
            Log.i("minimark 方法名扫描完毕 scanned=" + i + " 候选=" + CANDIDATES.size());
        } catch (Throwable th) {
            Log.i("minimark 扫描失败: " + th);
        }
    }

    private static boolean isAlipayPackage(String str) {
        return str.startsWith("com.alipay.") || str.startsWith("com.alibaba.") || str.startsWith("com.ali.") || str.startsWith("com.ta.") || str.startsWith("com.amap.") || str.startsWith("com.uc.");
    }

    private AlipayMiniMarkHelper() {
        throw new UnsupportedOperationException("Utility class cannot be instantiated");
    }
}
