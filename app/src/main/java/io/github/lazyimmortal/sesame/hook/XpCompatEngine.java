package io.github.lazyimmortal.sesame.hook;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;

/* JADX INFO: loaded from: classes.dex */
public class XpCompatEngine {
    private XpCompatEngine() {
    }

    public static void hookMethod(Member member, XC_MethodHook xC_MethodHook) {
        XposedBridge.hookMethod(member, xC_MethodHook);
    }

    public static void hookAllConstructors(Class<?> cls, XC_MethodHook xC_MethodHook) {
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            hookMethod(constructor, xC_MethodHook);
        }
    }
}
