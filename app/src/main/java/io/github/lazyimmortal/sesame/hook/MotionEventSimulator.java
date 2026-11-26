package io.github.lazyimmortal.sesame.hook;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class MotionEventSimulator {
    private static final String TAG = "MotionEventSimulator";
    private static final Random RANDOM = new Random();
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());

    public static void simulateSwipe(final View view, final float f, final float f2, final float f3, final float f4, final long j) {
        MAIN_HANDLER.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.MotionEventSimulator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MotionEventSimulator.lambda$simulateSwipe$0(view, f, f2, f3, f4, j);
            }
        });
    }

    static /* synthetic */ void lambda$simulateSwipe$0(View view, float f, float f2, float f3, float f4, long j) {
        Log.i(TAG, "准备在视图 " + view.getClass().getSimpleName() + " 上模拟滑动");
        Log.d(TAG, "从 (" + f + ", " + f2 + ") -> (" + f3 + ", " + f4 + ")，持续时间: " + j + "ms");
        if (!view.isShown() || !view.isEnabled()) {
            Log.e(TAG, "滑动失败: 目标视图不可见或未启用.");
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        try {
            dispatchTouchEvent(view, 0, f, f2, jUptimeMillis, jUptimeMillis);
            TimeUtil.sleep(RandomUtil.nextLong(30L, 80L));
            long j2 = (j - 100) / ((long) 15);
            float f5 = 15;
            float f6 = (f3 - f) / f5;
            float f7 = (f4 - f2) / f5;
            int i = 1;
            for (int i2 = 15; i <= i2; i2 = 15) {
                float f8 = i;
                dispatchTouchEvent(view, 2, (f6 * f8) + f + RandomUtil.nextInt(-3, 4), f2 + (f8 * f7) + RandomUtil.nextInt(-2, 3), jUptimeMillis, jUptimeMillis + (((long) i) * j2));
                TimeUtil.sleep(j2);
                i++;
            }
            dispatchTouchEvent(view, 1, f3, f4, jUptimeMillis, jUptimeMillis + j);
            Log.i(TAG, "模拟滑动事件序列发送完毕.");
        } catch (Throwable unused) {
            Log.e(TAG, "派发触摸事件时发生异常");
        }
    }

    public static void simulateSwipe(View view, float f, float f2, float f3, float f4) {
        simulateSwipe(view, f, f2, f3, f4, 800L);
    }

    private static void dispatchTouchEvent(View view, int i, float f, float f2, long j, long j2) {
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 1;
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f;
        pointerCoords.y = f2;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        MotionEvent motionEventObtain = MotionEvent.obtain(j, j2, i, 1, pointerPropertiesArr, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
        view.dispatchTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }
}
