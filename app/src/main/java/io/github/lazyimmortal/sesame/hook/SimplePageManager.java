package io.github.lazyimmortal.sesame.hook;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SimplePageManager {
    private static final String TAG = "SimplePageManager";
    private static ClassLoader mClassLoader;
    private static WeakReference<Context> mContextRef;
    private static Activity topActivity;
    private static final ConcurrentHashMap<String, ActivityFocusHandler> activityFocusHandlerMap = new ConcurrentHashMap<>();
    public static final Handler handler = new Handler(Looper.getMainLooper());
    private static int taskDuration = 500;
    private static volatile boolean hasPendingActivityTask = false;
    private static boolean disable = false;
    private static final ArrayList<WeakReference<Dialog>> dialogs = new ArrayList<>();
    private static boolean windowMonitorEnabled = false;

    public interface ActivityFocusHandler {
        boolean handleActivity(Activity activity, SimpleViewImage simpleViewImage);
    }

    static {
        enablePageMonitor();
    }

    public static Context getContext() {
        WeakReference<Context> weakReference = mContextRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static ClassLoader getClassLoader() {
        return mClassLoader;
    }

    public static Activity getTopActivity() {
        return topActivity;
    }

    public static void setTaskDuration(int i) {
        taskDuration = i;
    }

    public static void setDisable(boolean z) {
        disable = z;
    }

    public static void addHandler(String str, ActivityFocusHandler activityFocusHandler) {
        activityFocusHandlerMap.put(str, activityFocusHandler);
    }

    public static void removeHandler(String str) {
        activityFocusHandlerMap.remove(str);
    }

    public static ArrayList<WeakReference<Dialog>> getDialogs() {
        return dialogs;
    }

    public static void enableWindowMonitoring(ClassLoader classLoader) {
        if (classLoader != null) {
            mClassLoader = classLoader;
        }
        StringBuilder sb = new StringBuilder("启用窗口监控被调用，窗口监控已启用: ");
        sb.append(windowMonitorEnabled);
        sb.append(", 类加载器: ");
        ClassLoader classLoader2 = mClassLoader;
        sb.append(classLoader2 != null ? classLoader2.getClass().getName() : "null");
        Log.i(TAG, sb.toString());
        if (windowMonitorEnabled) {
            return;
        }
        enableWindowMonitor();
        windowMonitorEnabled = true;
    }

    public static void enableWindowMonitoring() {
        enableWindowMonitoring(null);
    }

    public static SimpleViewImage tryGetTopView(String str) {
        Iterator<WeakReference<Dialog>> it = dialogs.iterator();
        while (it.hasNext()) {
            if (it.next().get() == null) {
                it.remove();
            }
        }
        Iterator<WeakReference<Dialog>> it2 = dialogs.iterator();
        while (true) {
            if (!it2.hasNext()) {
                return null;
            }
            Dialog dialog = it2.next().get();
            if (dialog != null && dialog.isShowing()) {
                View decorView = dialog.getWindow() != null ? dialog.getWindow().getDecorView() : null;
                if (decorView == null) {
                    continue;
                } else {
                    Log.d(TAG, "  - 对话框: " + dialog.getClass().getName() + ", 正在显示: " + dialog.isShowing());
                    debugPrintAllTextViews(decorView, 0);
                    ArrayList arrayList = (ArrayList) SimpleXpathParser.evaluate(new SimpleViewImage(decorView), str);
                    if (!arrayList.isEmpty()) {
                        return (SimpleViewImage) arrayList.get(0);
                    }
                }
            }
        }
    }

    private static void debugPrintAllTextViews(View view, int i) {
        String strM = SimplePageManager$$ExternalSyntheticBackport0.m("  ", i);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            String string = textView.getText() != null ? textView.getText().toString() : "";
            String string2 = textView.getContentDescription() != null ? textView.getContentDescription().toString() : "";
            if (!string.isEmpty() || !string2.isEmpty()) {
                Log.d(TAG, strM + "文本视图[" + view.getClass().getSimpleName() + "] 文本='" + string + "' 内容描述='" + string2 + "'");
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                debugPrintAllTextViews(viewGroup.getChildAt(i2), i + 1);
            }
        }
    }

    private static void enablePageMonitor() {
        try {
            CompatHelpers.findAndHookMethod(Application.class, "dispatchActivityResumed", Activity.class, new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.SimplePageManager.1
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    Activity unused = SimplePageManager.topActivity = (Activity) methodHookParam.args[0];
                    if (SimplePageManager.mContextRef == null || SimplePageManager.mContextRef.get() == null) {
                        WeakReference unused2 = SimplePageManager.mContextRef = new WeakReference(SimplePageManager.topActivity.getApplicationContext());
                    }
                    ClassLoader unused3 = SimplePageManager.mClassLoader = SimplePageManager.topActivity.getClassLoader();
                    SimplePageManager.triggerActivity();
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "挂钩 Activity->dispatchActivityResumed 错误: ", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addDialogIfNotExists(Dialog dialog, String str) {
        Iterator<WeakReference<Dialog>> it = dialogs.iterator();
        while (it.hasNext()) {
            if (it.next().get() == dialog) {
                Log.d(TAG, "对话框从 " + str + " 已存在于列表中");
                return;
            }
        }
        ArrayList<WeakReference<Dialog>> arrayList = dialogs;
        arrayList.add(new WeakReference<>(dialog));
        Log.d(TAG, "对话框已从 " + str + " 添加，总数: " + arrayList.size());
        triggerDialogProcessing();
    }

    private static void hookDialogConstructor(Class<?>... clsArr) {
        final StringBuilder sb = new StringBuilder();
        for (Class<?> cls : clsArr) {
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(cls.getSimpleName());
        }
        try {
            CompatHelpers.findAndHookConstructor("android.app.Dialog", getClassLoader(), clsArr, new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.SimplePageManager.2
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    SimplePageManager.addDialogIfNotExists((Dialog) methodHookParam.thisObject, "构造函数(" + ((Object) sb) + ")");
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "挂钩对话框构造函数(" + ((Object) sb) + ") 错误: ", th);
        }
    }

    private static void enableWindowMonitor() {
        StringBuilder sb = new StringBuilder("启用窗口监控被调用，类加载器: ");
        ClassLoader classLoader = mClassLoader;
        sb.append(classLoader != null ? classLoader.getClass().getName() : "null");
        Log.i(TAG, sb.toString());
        hookDialogConstructor(Context.class);
        hookDialogConstructor(Context.class, Integer.TYPE);
        try {
            hookDialogConstructor(Context.class, Boolean.TYPE, Class.forName("android.content.DialogInterface$OnCancelListener"));
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "找不到DialogInterface.OnCancelListener类", e);
        }
        try {
            CompatHelpers.findAndHookMethod(XposedHelpers.findClass("com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog", getClassLoader()), "show", new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.SimplePageManager.3
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    SimplePageManager.addDialogIfNotExists((Dialog) methodHookParam.thisObject, "CaptchaDialog.show()");
                }
            });
        } catch (Throwable th) {
            Log.e(TAG, "挂钩 CaptchaDialog.show() 错误: ", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void triggerActivity() {
        triggerPendingActivityHandler("Activity 已恢复");
    }

    private static void triggerDialogProcessing() {
        triggerPendingActivityHandler("Dialog 已创建");
    }

    private static void triggerPendingActivityHandler(String str) {
        Activity activity = topActivity;
        if (activity == null) {
            Log.i(TAG, "无法从 " + str + " 触发处理器，未找到顶层 Activity");
            return;
        }
        ActivityFocusHandler activityFocusHandler = activityFocusHandlerMap.get(activity.getClass().getName());
        if (activityFocusHandler == null) {
            Log.d(TAG, "未找到 " + activity.getClass().getName() + " 的处理器，来源: " + str);
            return;
        }
        if (hasPendingActivityTask) {
            Log.d(TAG, "跳过从 " + str + " 触发，已有待处理任务");
            return;
        }
        hasPendingActivityTask = true;
        Log.i(TAG, "从 " + str + " 触发 " + activity.getClass().getName() + " 的处理器");
        triggerActivityActive(activity, activityFocusHandler, 0);
    }

    private static void triggerActivityActive(final Activity activity, final ActivityFocusHandler activityFocusHandler, final int i) {
        if (disable) {
            Log.i(TAG, "页面触发管理器已禁用");
        } else {
            handler.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.SimplePageManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SimplePageManager.lambda$triggerActivityActive$0(activity, activityFocusHandler, i);
                }
            }, taskDuration);
        }
    }

    static /* synthetic */ void lambda$triggerActivityActive$0(Activity activity, ActivityFocusHandler activityFocusHandler, int i) {
        try {
            hasPendingActivityTask = false;
            View decorView = activity.getWindow() != null ? activity.getWindow().getDecorView() : null;
            if (decorView != null && activityFocusHandler.handleActivity(activity, new SimpleViewImage(decorView))) {
                return;
            }
        } catch (Throwable th) {
            Log.e(TAG, "处理 Activity 出错: " + activity.getClass().getName(), th);
        }
        if (i <= 10) {
            triggerActivityActive(activity, activityFocusHandler, i + 1);
            return;
        }
        Log.w(TAG, "Activity 事件触发失败次数过多: " + activityFocusHandler.getClass().getName());
    }
}
