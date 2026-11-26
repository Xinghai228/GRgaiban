package io.github.lazyimmortal.sesame.hook;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.Random;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseCaptchaHandler {
    private static final long POST_SLIDE_CHECK_DELAY_MS = 500;
    private static final long SLIDE_DURATION_MAX = 600;
    private static final long SLIDE_DURATION_MIN = 500;
    private static final int SLIDE_END_MARGIN = 20;
    private static final int SLIDE_START_OFFSET = 25;
    private static final String SLIDE_VERIFY_TEXT_XPATH = "//TextView[contains(@text,'向右滑动验证')]";
    private static final String TAG = "CaptchaHandler";
    private static final Lock captchaProcessingMutex = new ReentrantLock();
    private static final Random random = new Random();

    protected abstract String getSlidePathKey();

    public boolean handleActivity(Activity activity, SimpleViewImage simpleViewImage) {
        try {
            return handleSlideCaptcha(activity);
        } catch (Exception e) {
            Log.record("滑动验证🆘处理验证码页面时发生异常: " + e);
            return false;
        }
    }

    private boolean handleSlideCaptcha(Activity activity) {
        Lock lock = captchaProcessingMutex;
        if (!lock.tryLock()) {
            return true;
        }
        try {
            try {
                SimpleViewImage simpleViewImageFindSlideTextInDialog = findSlideTextInDialog();
                if (simpleViewImageFindSlideTextInDialog == null) {
                    lock.unlock();
                    return false;
                }
                Log.record("滑动验证🆘发现滑动验证文本:" + simpleViewImageFindSlideTextInDialog.getText() + "[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                try {
                    Thread.sleep(500L);
                    boolean zPerformSlideAndVerify = performSlideAndVerify(activity, simpleViewImageFindSlideTextInDialog);
                    lock.unlock();
                    return zPerformSlideAndVerify;
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    Log.record("滑动验证🆘等待界面稳定时被中断: " + e);
                    captchaProcessingMutex.unlock();
                    return false;
                }
            } catch (Exception e2) {
                Log.record("滑动验证🆘处理滑动验证码时发生错误: " + e2);
            }
        } catch (Throwable th) {
            captchaProcessingMutex.unlock();
            throw th;
        }
    }

    private boolean performSlideAndVerify(Activity activity, SimpleViewImage simpleViewImage) {
        View viewFindActualSliderView = ViewHierarchyAnalyzer.findActualSliderView(simpleViewImage);
        if (viewFindActualSliderView == null) {
            Log.record("滑动验证🆘未能找到可操作的滑块视图，滑动无法执行。");
            return false;
        }
        SlideCoordinates slideCoordinatesCalculateSlideCoordinates = calculateSlideCoordinates(activity, viewFindActualSliderView);
        if (slideCoordinatesCalculateSlideCoordinates == null) {
            Log.record("滑动验证🆘计算滑动坐标失败，滑动无法执行。");
            return false;
        }
        MotionEventSimulator.simulateSwipe(viewFindActualSliderView, slideCoordinatesCalculateSlideCoordinates.getStartX(), slideCoordinatesCalculateSlideCoordinates.getStartY(), slideCoordinatesCalculateSlideCoordinates.getEndX(), slideCoordinatesCalculateSlideCoordinates.getEndY(), RandomUtil.nextLong(SLIDE_DURATION_MAX, 501L) + 500);
        try {
            Thread.sleep(500L);
            return checkCaptchaTextGone();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Log.record("滑动验证🆘滑动后等待检查时被中断:" + e);
            return false;
        }
    }

    private SlideCoordinates calculateSlideCoordinates(Activity activity, View view) {
        ViewGroup viewGroup = view.getParent() instanceof ViewGroup ? (ViewGroup) view.getParent() : null;
        if (viewGroup == null) {
            return null;
        }
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        int width = viewGroup.getWidth();
        viewGroup.getHeight();
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i5 = iArr2[0];
        int i6 = iArr2[1];
        int width2 = view.getWidth();
        int height = view.getHeight();
        Random random2 = random;
        float f = width2;
        float fNextInt = i5 + (f / 2.0f) + 25.0f + (random2.nextInt(7) - 3);
        float fNextInt2 = i6 + (height / 2.0f) + (random2.nextInt(5) - 2);
        float fNextInt3 = i - 50.0f;
        float fNextInt4 = ((i3 + width) - 20) + (random2.nextInt(11) - 5);
        if (fNextInt4 > fNextInt3) {
            Log.record("滑动验证🆘调整滑动终点以适配屏幕边界");
        } else {
            fNextInt3 = fNextInt4;
        }
        float f2 = f * 1.5f;
        if (fNextInt3 - fNextInt < f2) {
            fNextInt3 = (random2.nextInt(7) - 3) + f2 + fNextInt;
        }
        int i7 = (int) fNextInt2;
        String.format("input swipe %d %d %d %d %d", Integer.valueOf((int) fNextInt), Integer.valueOf(i7), Integer.valueOf((int) fNextInt3), Integer.valueOf(i7), Long.valueOf(RandomUtil.nextLong(SLIDE_DURATION_MAX, 501L) + 500));
        return new SlideCoordinates(fNextInt, fNextInt2, fNextInt3, fNextInt2);
    }

    private boolean checkCaptchaTextGone() {
        return findSlideTextInDialog() == null;
    }

    private SimpleViewImage findSlideTextInDialog() {
        try {
            return SimplePageManager.tryGetTopView(SLIDE_VERIFY_TEXT_XPATH);
        } catch (Exception e) {
            Log.record("滑动验证🆘由于异常导致查找验证码文本失败:" + e);
            return null;
        }
    }
}
