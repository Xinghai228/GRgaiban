package okhttp3;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Cookie$$ExternalSyntheticBackport0 {
    public static /* synthetic */ int m(double d) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public static /* synthetic */ int m(Method method) {
        return method.getParameterTypes().length;
    }

    public static /* synthetic */ int m(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ boolean m1684m(double d) {
        return (Double.isInfinite(d) || Double.isNaN(d)) ? false : true;
    }

    public static /* synthetic */ boolean m(float f) {
        return (Float.isInfinite(f) || Float.isNaN(f)) ? false : true;
    }
}
