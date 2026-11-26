package io.github.lazyimmortal.sesame.hook;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CompatHelpers {
    private CompatHelpers() {
    }

    public static void findAndHookMethod(Class<?> cls, String str, Object... objArr) {
        if (objArr.length == 0 || !(objArr[objArr.length - 1] instanceof XC_MethodHook)) {
            throw new IllegalArgumentException("no callback defined");
        }
        XpCompatEngine.hookMethod(findMethodExact(cls, str, dropLast(objArr)), (XC_MethodHook) objArr[objArr.length - 1]);
    }

    public static void findAndHookConstructor(String str, ClassLoader classLoader, Object... objArr) {
        if (objArr.length == 0 || !(objArr[objArr.length - 1] instanceof XC_MethodHook)) {
            throw new IllegalArgumentException("no callback defined");
        }
        XpCompatEngine.hookMethod(findConstructorExact(XposedHelpers.findClass(str, classLoader), classLoader, dropLast(objArr)), (XC_MethodHook) objArr[objArr.length - 1]);
    }

    private static Method findMethodExact(Class<?> cls, String str, Object... objArr) {
        return findMethodExact(cls, null, str, objArr);
    }

    private static Method findMethodExact(Class<?> cls, ClassLoader classLoader, String str, Object... objArr) {
        return XposedHelpers.findMethodExact(cls, str, convertToClassArray(objArr, classLoader));
    }

    private static Constructor<?> findConstructorExact(Class<?> cls, ClassLoader classLoader, Object... objArr) {
        return XposedHelpers.findConstructorExact(cls, convertToClassArray(objArr, classLoader));
    }

    private static Class<?>[] convertToClassArray(Object[] objArr, ClassLoader classLoader) {
        Class<?> clsLoadClass;
        Class<?> clsLoadClass2;
        Class<?> cls;
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj instanceof Class) {
                arrayList.add((Class) obj);
            } else if (obj instanceof String) {
                String str = (String) obj;
                if (str.contains("$")) {
                    String[] strArrSplit = str.split("\\$");
                    if (classLoader != null) {
                        clsLoadClass2 = XposedHelpers.findClass(strArrSplit[0], classLoader);
                    } else {
                        clsLoadClass2 = loadClass(strArrSplit[0]);
                    }
                    Class<?>[] declaredClasses = clsLoadClass2.getDeclaredClasses();
                    int length = declaredClasses.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            cls = null;
                            break;
                        }
                        cls = declaredClasses[i];
                        if (cls.getSimpleName().equals(strArrSplit[1])) {
                            break;
                        }
                        i++;
                    }
                    if (cls == null) {
                        try {
                            throw new ClassNotFoundException("Inner class " + strArrSplit[1] + " not found in " + strArrSplit[0]);
                        } catch (ClassNotFoundException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    arrayList.add(cls);
                } else {
                    if (classLoader != null) {
                        clsLoadClass = XposedHelpers.findClass(str, classLoader);
                    } else {
                        clsLoadClass = loadClass(str);
                    }
                    arrayList.add(clsLoadClass);
                }
            } else {
                arrayList.add(obj.getClass());
            }
        }
        return (Class[]) arrayList.toArray(new Class[0]);
    }

    private static Class<?> loadClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static Object[] dropLast(Object[] objArr) {
        if (objArr.length <= 1) {
            return new Object[0];
        }
        Object[] objArr2 = new Object[objArr.length - 1];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length - 1);
        return objArr2;
    }
}
