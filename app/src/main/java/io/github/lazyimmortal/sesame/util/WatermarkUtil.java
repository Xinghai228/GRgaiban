package io.github.lazyimmortal.sesame.util;

/* JADX INFO: loaded from: classes.dex */
public class WatermarkUtil {
    private static boolean isLibraryLoaded;

    public static int getWatermarkAlpha() {
        return 160;
    }

    private static native int getWatermarkAlphaNative();

    private static native float getWatermarkRotationNative();

    private static native String getWatermarkTextNative();

    public static int getWatermarkTextSize() {
        return 32;
    }

    private static native int getWatermarkTextSizeNative();

    static {
        try {
            System.loadLibrary("watermark");
            isLibraryLoaded = true;
        } catch (UnsatisfiedLinkError unused) {
            isLibraryLoaded = false;
        }
    }

    public static String getWatermarkText() {
        if (!isLibraryLoaded) {
            return "贝吉塔";
        }
        try {
            return getWatermarkTextNative();
        } catch (UnsatisfiedLinkError unused) {
            return "贝吉塔";
        }
    }

    public static float getWatermarkRotation() {
        if (!isLibraryLoaded) {
            return -30.0f;
        }
        try {
            return getWatermarkRotationNative();
        } catch (UnsatisfiedLinkError unused) {
            return -30.0f;
        }
    }
}
