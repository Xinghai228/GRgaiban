package io.github.lazyimmortal.sesame.hook;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaHook {
    private static final String CLASS_CAPTCHA_DIALOG = "com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog";
    public static final CaptchaHook INSTANCE = new CaptchaHook();
    private static final String TAG = "CaptchaHook";
    private static ClassLoader savedClassLoader;
    private static XC_MethodHook.Unhook uiHookUnhook;

    private CaptchaHook() {
    }

    public static void setupHook(ClassLoader classLoader) {
        savedClassLoader = classLoader;
        Log.i("CaptchaHook验证码Hook系统初始化完成");
        Log.i("CaptchaHook⚠️ Hook配置将在配置文件加载后同步");
    }

    public static void updateHooks(boolean z) {
        ClassLoader classLoader = savedClassLoader;
        if (classLoader == null) {
            Log.i("❌ ClassLoader未初始化，请先调用setupHook()");
            return;
        }
        Log.i("CaptchaHook📝 更新验证码Hook状态:");
        Log.record("CaptchaHook  UI层拦截: ".concat(z ? "✅ 开启" : "⛔ 关闭"));
        unhookAll();
        if (z) {
            Log.i("CaptchaHook  🔧 设置UI层拦截...");
            uiHookUnhook = hookCaptchaDialogShowAndClose(classLoader);
        } else {
            Log.i("CaptchaHook  ⚠️ 验证码拦截已关闭");
        }
        Log.i("CaptchaHook验证码Hook更新完成 ✅");
    }

    private static void unhookAll() {
        XC_MethodHook.Unhook unhook = uiHookUnhook;
        if (unhook != null) {
            unhook.unhook();
            uiHookUnhook = null;
        }
    }

    private static XC_MethodHook.Unhook hookCaptchaDialogShowAndClose(ClassLoader classLoader) {
        try {
            return XposedHelpers.findAndHookMethod(XposedHelpers.findClass(CLASS_CAPTCHA_DIALOG, classLoader), "show", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.CaptchaHook.1
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    Object obj = methodHookParam.thisObject;
                    StringBuilder sb = new StringBuilder();
                    sb.append("===== 支付宝CaptchaDialog信息 =====\n对话框类名：");
                    sb.append(obj.getClass().getName());
                    sb.append("\n");
                    Dialog dialogInstance = CaptchaHook.getDialogInstance(obj);
                    if (dialogInstance != null) {
                        CaptchaHook.collectDialogInfo(dialogInstance, sb);
                        Log.i("CaptchaHook\n" + sb.toString());
                        if (sb.toString().contains("请检查是否使用了代理软件或VPN")) {
                            Log.record("包含\"请检查是否使用了代理软件或VPN\",关闭对话框");
                            dialogInstance.dismiss();
                        }
                        Log.record("执行了弹窗检测hookCaptchaDialogShowAndClose()");
                        return;
                    }
                    Log.i("CaptchaHook无法获取Dialog实例，关闭失败");
                }
            }});
        } catch (Throwable th) {
            Log.i("❌ Hook CaptchaDialog.show() 失败");
            Log.printStackTrace(TAG, th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Dialog getDialogInstance(Object obj) {
        if (obj instanceof Dialog) {
            return (Dialog) obj;
        }
        try {
            Field declaredField = obj.getClass().getDeclaredField("mDialog");
            declaredField.setAccessible(true);
            return (Dialog) declaredField.get(obj);
        } catch (Exception e) {
            Log.i("反射获取Dialog实例失败：" + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void collectDialogInfo(Dialog dialog, StringBuilder sb) {
        try {
            Field declaredField = dialog.getClass().getSuperclass().getDeclaredField("mContext");
            declaredField.setAccessible(true);
            Context context = (Context) declaredField.get(dialog);
            sb.append("所属上下文：");
            sb.append(context != null ? context.getClass().getName() : "null");
            sb.append("\n");
        } catch (Exception e) {
            sb.append("所属上下文：获取失败 - ");
            sb.append(e.getMessage());
            sb.append("\n");
        }
        TextView textView = (TextView) dialog.findViewById(R.id.title);
        sb.append("系统标题：");
        sb.append(textView != null ? textView.getText().toString().trim() : "无");
        sb.append("\n");
        TextView textView2 = (TextView) dialog.findViewById(R.id.message);
        sb.append("系统消息：");
        sb.append(textView2 != null ? textView2.getText().toString().trim() : "无");
        sb.append("\n");
        sb.append("===== 自定义布局文本 =====\n");
        collectAllTextViewText(dialog.getWindow().getDecorView().getRootView(), sb);
    }

    public static void collectAllTextViewText(View view, StringBuilder sb) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                collectAllTextViewText(viewGroup.getChildAt(i), sb);
            }
            return;
        }
        if (view instanceof TextView) {
            String strTrim = ((TextView) view).getText().toString().trim();
            if (strTrim.isEmpty()) {
                return;
            }
            sb.append("TextView：");
            sb.append(strTrim);
            sb.append("\n");
        }
    }
}
