package io.github.lazyimmortal.sesame.hook;

import android.R;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.Application;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import io.github.lazyimmortal.sesame.BuildConfig;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.RunType;
import io.github.lazyimmortal.sesame.data.TokenConfig;
import io.github.lazyimmortal.sesame.data.ViewAppInfo;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.task.BaseTask;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayVersion;
import io.github.lazyimmortal.sesame.entity.FriendWatch;
import io.github.lazyimmortal.sesame.entity.RpcEntity;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.extensions.TestRpc;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.model.task.antMember.AntMemberRpcCall;
import io.github.lazyimmortal.sesame.rpc.bridge.NewRpcBridge;
import io.github.lazyimmortal.sesame.rpc.bridge.OldRpcBridge;
import io.github.lazyimmortal.sesame.rpc.bridge.RpcBridge;
import io.github.lazyimmortal.sesame.rpc.bridge.RpcVersion;
import io.github.lazyimmortal.sesame.rpc.intervallimit.RpcIntervalLimit;
import io.github.lazyimmortal.sesame.util.ClassUtil;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.LibraryUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.NotificationUtil;
import io.github.lazyimmortal.sesame.util.PermissionUtil;
import io.github.lazyimmortal.sesame.util.Statistics;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationHook implements IXposedHookLoadPackage, IXposedHookZygoteInit {
    private static final String ASYNC_REQUEST_HANDLER_CLASS = "com.alipay.android.phone.wallet.aompnetwork.request.AsyncRequestHandler";
    private static final int MAX_LOG_LEN = 200000;
    private static final int MAX_PENDING_PER_URL = 8;
    private static final String MINI_RESP_CLASS = "com.alipay.android.phone.event.ariver.network.HttpRequestResponseTrigger";
    private static final String TAG = "ApplicationHook";
    private static PendingIntent alarm0Pi = null;
    private static volatile Calendar dayCalendar = null;
    private static Handler mainHandler = null;
    private static BaseTask mainTask = null;
    private static final String modelVersion = "1.12";
    public static String processName;
    private static RpcBridge rpcBridge;
    private static XC_MethodHook.Unhook rpcRequestUnhook;
    private static XC_MethodHook.Unhook rpcResponseUnhook;
    private static RpcVersion rpcVersion;
    private static Service service;
    private static PowerManager.WakeLock wakeLock;
    private static final Map<Object, Object[]> rpcHookMap = new ConcurrentHashMap();
    private static final Map<String, PendingIntent> wakenAtTimeAlarmMap = new ConcurrentHashMap();
    private static ClassLoader classLoader = null;
    private static Object microApplicationContextObject = null;
    private static Context context = null;
    private static AlipayVersion alipayVersion = new AlipayVersion("");
    private static volatile boolean hooked = false;
    private static volatile boolean init = false;
    private static volatile boolean offline = false;
    private static final AtomicInteger reLoginCount = new AtomicInteger(0);
    private static BroadcastReceiver broadcastReceiver = null;
    private static volatile boolean broadcastReceiverRegistered = false;
    private static volatile boolean miniHookInstallScheduled = false;
    private static volatile boolean miniDebugCached = false;
    private static volatile long miniDebugExpireAt = 0;
    private static final AtomicBoolean miniSwitchDiagLogged = new AtomicBoolean(false);
    private static final AtomicBoolean miniSwitchFoundLogged = new AtomicBoolean(false);
    private static final Map<Class<?>, List<Field>> modelFieldsCache = new ConcurrentHashMap();
    private static final String[] MINI_HOST_BLACKLIST = {"hybrid.alipay-eco.com", "xxl-log", "mmstat", "amdc.", "arms", "alicdn.com", "tbcdn.cn", "alipayobjects.com", "gtimg.cn"};
    private static final String[] MINI_STATIC_SUFFIX = {".js", ".css", ".png", ".jpg", ".jpeg", ".gif", ".webp", ".ico", ".svg", ".woff", ".woff2", ".ttf", ".html", ".htm", ".mp4", ".mp3"};
    private static final Set<String> deferredHookedClasses = Collections.synchronizedSet(new HashSet());
    private static final Map<String, Deque<String[]>> pendingMiniRequests = new ConcurrentHashMap();

    public void initZygote(IXposedHookZygoteInit.StartupParam startupParam) {
    }

    public static String getModelVersion() {
        return "1.12";
    }

    public static ClassLoader getClassLoader() {
        return classLoader;
    }

    public static Object getMicroApplicationContextObject() {
        return microApplicationContextObject;
    }

    public static Context getContext() {
        return context;
    }

    public static AlipayVersion getAlipayVersion() {
        return alipayVersion;
    }

    public static boolean isHooked() {
        return hooked;
    }

    public static boolean isOffline() {
        return offline;
    }

    public static AtomicInteger getReLoginCount() {
        return reLoginCount;
    }

    public static Handler getMainHandler() {
        return mainHandler;
    }

    public static RpcVersion getRpcVersion() {
        return rpcVersion;
    }

    public static void setOffline(boolean z) {
        offline = z;
    }

    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) {
        processName = loadPackageParam.processName;
        try {
            XposedBridge.log("[Sesame] inject pkg=" + loadPackageParam.packageName + " proc=" + loadPackageParam.processName + " ver=1.12");
        } catch (Throwable unused) {
        }
        try {
            Log.debug("Xposed注入: pkg=" + loadPackageParam.packageName + " proc=" + loadPackageParam.processName + " ver=1.12");
        } catch (Throwable unused2) {
        }
        if (BuildConfig.APPLICATION_ID.equals(loadPackageParam.packageName)) {
            try {
                XposedHelpers.callStaticMethod(loadPackageParam.classLoader.loadClass(ViewAppInfo.class.getName()), "setRunTypeByCode", new Object[]{RunType.MODEL.getCode()});
                return;
            } catch (ClassNotFoundException e) {
                Log.printStackTrace(e);
                return;
            }
        }
        if (!ClassUtil.PACKAGE_NAME.equals(loadPackageParam.packageName) || !ClassUtil.PACKAGE_NAME.equals(loadPackageParam.processName)) {
            if (ClassUtil.PACKAGE_NAME.equals(loadPackageParam.packageName)) {
                final ClassLoader classLoader2 = loadPackageParam.classLoader;
                try {
                    XposedBridge.log("[Sesame] mini process inject proc=" + processName);
                } catch (Throwable unused3) {
                }
                try {
                    XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.5
                        protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                            String str = "小程序子进程attach[" + ApplicationHook.processName + "]";
                            try {
                                Context unused4 = ApplicationHook.context = (Context) methodHookParam.args[0];
                                ClassLoader unused5 = ApplicationHook.classLoader = classLoader2;
                                Log.debug(str);
                                XposedBridge.log("[Sesame] " + str);
                                ApplicationHook.this.scheduleMiniHookInstall();
                            } catch (Throwable th) {
                                try {
                                    Log.debug(str + "失败: " + th.getMessage());
                                } catch (Throwable unused6) {
                                }
                            }
                        }
                    }});
                    return;
                } catch (Throwable th) {
                    try {
                        Log.debug("小程序抓包attach hook安装失败[" + processName + "]: " + th.getMessage());
                        return;
                    } catch (Throwable unused4) {
                        return;
                    }
                }
            }
            return;
        }
        if (hooked) {
            return;
        }
        classLoader = loadPackageParam.classLoader;
        XposedHelpers.findAndHookMethod(Application.class, "attach", new Object[]{Context.class, new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.1
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
                Context unused5 = ApplicationHook.context = (Context) methodHookParam.args[0];
                AlipayVersion unused6 = ApplicationHook.alipayVersion = new AlipayVersion(ApplicationHook.context.getPackageManager().getPackageInfo(ApplicationHook.context.getPackageName(), 0).versionName);
                try {
                    AlipayMiniMarkHelper.init(ApplicationHook.classLoader);
                } catch (Throwable th2) {
                    Log.printStackTrace(th2);
                }
                try {
                    AuthCodeHelper.init(ApplicationHook.classLoader);
                    AuthCodeHelper.getAuthCode("2021005114632037");
                } catch (Throwable th3) {
                    Log.printStackTrace(th3);
                }
                try {
                    ApplicationHook.this.initSimplePageManager();
                } catch (Exception e2) {
                    Log.printStackTrace(e2);
                }
                super.afterHookedMethod(methodHookParam);
            }
        }});
        try {
            ClassLoader classLoader3 = classLoader;
            XposedHelpers.findAndHookMethod("com.alipay.mobile.nebulaappproxy.api.rpc.H5AppRpcUpdate", classLoader3, "matchVersion", new Object[]{classLoader3.loadClass(ClassUtil.H5PAGE_NAME), Map.class, String.class, XC_MethodReplacement.returnConstant(false)});
            Log.i(TAG, "hook matchVersion successfully");
        } catch (Throwable th2) {
            String str = TAG;
            Log.i(str, "hook matchVersion err:");
            Log.printStackTrace(str, th2);
        }
        try {
            XposedHelpers.findAndHookMethod("com.alipay.mobile.quinox.LauncherActivity", classLoader, "onResume", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.2
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    Log.i(ApplicationHook.TAG, "Activity onResume");
                    String userId = ApplicationHook.getUserId();
                    if (userId != null) {
                        if (!ApplicationHook.init) {
                            if (ApplicationHook.this.initHandler(true).booleanValue()) {
                                boolean unused5 = ApplicationHook.init = true;
                                return;
                            }
                            return;
                        }
                        String currentUid = UserIdMap.getCurrentUid();
                        if (!userId.equals(currentUid)) {
                            if (currentUid != null) {
                                ApplicationHook.this.initHandler(true);
                                Log.record("用户已切换");
                                Toast.show("用户已切换");
                                return;
                            }
                            UserIdMap.initUser(userId);
                        }
                        if (ApplicationHook.offline) {
                            boolean unused6 = ApplicationHook.offline = false;
                            ApplicationHook.execHandler();
                            ((Activity) methodHookParam.thisObject).finish();
                            Log.i(ApplicationHook.TAG, "Activity reLogin");
                            return;
                        }
                        return;
                    }
                    Log.record("用户未登录");
                    Toast.show("用户未登录");
                }
            }});
            Log.i(TAG, "hook login successfully");
        } catch (Throwable th3) {
            String str2 = TAG;
            Log.i(str2, "hook login err:");
            Log.printStackTrace(str2, th3);
        }
        try {
            XposedHelpers.findAndHookMethod("android.app.Service", classLoader, "onCreate", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.3
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    Service service2 = (Service) methodHookParam.thisObject;
                    if (ClassUtil.CURRENT_USING_SERVICE.equals(service2.getClass().getCanonicalName())) {
                        Context unused5 = ApplicationHook.context = service2.getApplicationContext();
                        Service unused6 = ApplicationHook.service = service2;
                        ApplicationHook.this.registerBroadcastReceiver(service2);
                        Log.i(ApplicationHook.TAG, "Service onCreate");
                        Context unused7 = ApplicationHook.context = service2.getApplicationContext();
                        System.load(LibraryUtil.getLibSesamePath(ApplicationHook.context));
                        Service unused8 = ApplicationHook.service = service2;
                        Handler unused9 = ApplicationHook.mainHandler = new Handler(Looper.getMainLooper());
                        BaseTask unused10 = ApplicationHook.mainTask = BaseTask.newInstance("MAIN_TASK", new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.3.1
                            private volatile long lastExecTime = 0;

                            @Override // java.lang.Runnable
                            public void run() {
                                if (ApplicationHook.init) {
                                    Log.record("应用版本：" + ApplicationHook.alipayVersion.getVersionString());
                                    Log.record("模块版本：1.12（交流更新QQ群：694474777）");
                                    Log.record("开始执行");
                                    Log.infoNewLine();
                                    try {
                                        int iIntValue = BaseModel.getCheckInterval().getValue().intValue();
                                        if (this.lastExecTime + 2000 > System.currentTimeMillis()) {
                                            Log.record("执行间隔较短，跳过执行");
                                            ApplicationHook.execDelayedHandler(iIntValue);
                                            return;
                                        }
                                        ApplicationHook.updateDay();
                                        String userId = ApplicationHook.getUserId();
                                        String currentUid = UserIdMap.getCurrentUid();
                                        if (userId != null && currentUid != null) {
                                            if (!userId.equals(currentUid)) {
                                                Log.record("开始切换用户");
                                                Toast.show("开始切换用户");
                                                ApplicationHook.reLogin();
                                                return;
                                            }
                                            try {
                                                Status.getWateredFriendToday(true);
                                                Status.getWateringFriendToday(true);
                                            } catch (Throwable th4) {
                                                Log.i(ApplicationHook.TAG, "自动统计浇水情况失败:");
                                                Log.printStackTrace(ApplicationHook.TAG, th4);
                                            }
                                            this.lastExecTime = System.currentTimeMillis();
                                            try {
                                                try {
                                                    FutureTask futureTask = new FutureTask(new Callable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$3$1$$ExternalSyntheticLambda0
                                                        @Override // java.util.concurrent.Callable
                                                        public final Object call() {
                                                            return AntMemberRpcCall.check();
                                                        }
                                                    });
                                                    new Thread(futureTask).start();
                                                    if (((Boolean) futureTask.get(10L, TimeUnit.SECONDS)).booleanValue()) {
                                                        ApplicationHook.reLoginCount.set(0);
                                                        TaskCommon.update();
                                                        ModelTask.startAllTask(false);
                                                        this.lastExecTime = System.currentTimeMillis();
                                                        try {
                                                            List<String> value = BaseModel.getExecAtTimeList().getValue();
                                                            if (value != null) {
                                                                Calendar calendarByTimeMillis = TimeUtil.getCalendarByTimeMillis(Long.valueOf(this.lastExecTime));
                                                                Calendar calendarByTimeMillis2 = TimeUtil.getCalendarByTimeMillis(Long.valueOf(this.lastExecTime + ((long) iIntValue)));
                                                                for (String str3 : value) {
                                                                    Calendar todayCalendarByTimeStr = TimeUtil.getTodayCalendarByTimeStr(str3);
                                                                    if (todayCalendarByTimeStr != null && calendarByTimeMillis.compareTo(todayCalendarByTimeStr) < 0 && calendarByTimeMillis2.compareTo(todayCalendarByTimeStr) > 0) {
                                                                        Log.record("设置定时执行:" + str3);
                                                                        ApplicationHook.execDelayedHandler(todayCalendarByTimeStr.getTimeInMillis() - this.lastExecTime);
                                                                        FileUtil.clearLog();
                                                                        return;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Exception e2) {
                                                            Log.i(ApplicationHook.TAG, "execAtTime err:");
                                                            Log.printStackTrace(ApplicationHook.TAG, e2);
                                                        }
                                                        ApplicationHook.execDelayedHandler(iIntValue);
                                                        FileUtil.clearLog();
                                                        return;
                                                    }
                                                    long jCurrentTimeMillis = (10000 - System.currentTimeMillis()) + this.lastExecTime;
                                                    if (jCurrentTimeMillis > 0) {
                                                        Thread.sleep(jCurrentTimeMillis);
                                                    }
                                                    Log.record("执行失败：检查超时");
                                                    ApplicationHook.reLogin();
                                                    return;
                                                } catch (Exception e3) {
                                                    Log.record("执行失败：检查异常");
                                                    ApplicationHook.reLogin();
                                                    Log.printStackTrace(ApplicationHook.TAG, e3);
                                                    return;
                                                }
                                            } catch (InterruptedException | ExecutionException | TimeoutException unused11) {
                                                Log.record("执行失败：检查中断");
                                                ApplicationHook.reLogin();
                                                return;
                                            }
                                        }
                                        Log.record("用户为空，放弃执行");
                                        ApplicationHook.reLogin();
                                    } catch (Exception e4) {
                                        Log.record("执行异常:");
                                        Log.printStackTrace(e4);
                                    }
                                }
                            }
                        });
                        Calendar unused11 = ApplicationHook.dayCalendar = Calendar.getInstance();
                        Statistics.load();
                        FriendWatch.load();
                        if (ApplicationHook.this.initHandler(true).booleanValue()) {
                            boolean unused12 = ApplicationHook.init = true;
                        }
                    }
                }
            }});
            Log.i(TAG, "hook service onCreate successfully");
        } catch (Throwable th4) {
            String str3 = TAG;
            Log.i(str3, "hook service onCreate err:");
            Log.printStackTrace(str3, th4);
        }
        try {
            XposedHelpers.findAndHookMethod("android.app.Service", classLoader, "onDestroy", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.4
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    if (ClassUtil.CURRENT_USING_SERVICE.equals(((Service) methodHookParam.thisObject).getClass().getCanonicalName())) {
                        Log.record("支付宝前台服务被销毁");
                        NotificationUtil.updateStatusText("支付宝前台服务被销毁");
                        ApplicationHook.destroyHandler(true);
                        FriendWatch.unload();
                        Statistics.unload();
                        ApplicationHook.restartByBroadcast();
                    }
                }
            }});
        } catch (Throwable th5) {
            String str4 = TAG;
            Log.i(str4, "hook service onDestroy err:");
            Log.printStackTrace(str4, th5);
        }
        try {
            XposedHelpers.findAndHookMethod("com.alipay.mobile.common.fgbg.FgBgMonitorImpl", classLoader, "isInBackground", new Object[]{XC_MethodReplacement.returnConstant(false)});
        } catch (Throwable th6) {
            String str5 = TAG;
            Log.i(str5, "hook FgBgMonitorImpl method 1 err:");
            Log.printStackTrace(str5, th6);
        }
        try {
            XposedHelpers.findAndHookMethod("com.alipay.mobile.common.fgbg.FgBgMonitorImpl", classLoader, "isInBackground", new Object[]{Boolean.TYPE, XC_MethodReplacement.returnConstant(false)});
        } catch (Throwable th7) {
            String str6 = TAG;
            Log.i(str6, "hook FgBgMonitorImpl method 2 err:");
            Log.printStackTrace(str6, th7);
        }
        try {
            XposedHelpers.findAndHookMethod("com.alipay.mobile.common.fgbg.FgBgMonitorImpl", classLoader, "isInBackgroundV2", new Object[]{XC_MethodReplacement.returnConstant(false)});
        } catch (Throwable th8) {
            String str7 = TAG;
            Log.i(str7, "hook FgBgMonitorImpl method 3 err:");
            Log.printStackTrace(str7, th8);
        }
        try {
            ClassLoader classLoader4 = classLoader;
            XposedHelpers.findAndHookMethod("com.alipay.mobile.common.transport.utils.MiscUtils", classLoader4, "isAtFrontDesk", new Object[]{classLoader4.loadClass("android.content.Context"), XC_MethodReplacement.returnConstant(true)});
            Log.i(TAG, "hook MiscUtils successfully");
        } catch (Throwable th9) {
            String str8 = TAG;
            Log.i(str8, "hook MiscUtils err:");
            Log.printStackTrace(str8, th9);
        }
        hooked = true;
        Log.i(TAG, "load success: " + loadPackageParam.packageName);
    }

    private void hookAlipayAlertDialog(ClassLoader classLoader2) {
        try {
            XposedHelpers.findAndHookMethod(XposedHelpers.findClass("com.alipay.rdssecuritysdk.v3.captcha.view.CaptchaDialog", classLoader2), "show", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.6
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
                    Dialog dialog;
                    Object obj = methodHookParam.thisObject;
                    String name = obj.getClass().getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append("===== 支付宝CaptchaDialog完整信息 =====\n对话框类名：");
                    sb.append(obj.getClass().getName());
                    sb.append("\n父类名：");
                    sb.append(obj.getClass().getSuperclass().getName());
                    sb.append("\n");
                    if (name.contains("alipay")) {
                        try {
                            Field declaredField = obj.getClass().getSuperclass().getDeclaredField("mContext");
                            declaredField.setAccessible(true);
                            Context context2 = (Context) declaredField.get(obj);
                            sb.append("所属上下文：");
                            sb.append(context2 != null ? context2.getClass().getName() : "null");
                            sb.append("\n");
                        } catch (Exception e) {
                            sb.append("所属上下文：获取失败 - ");
                            sb.append(e.getMessage());
                            sb.append("\n");
                        }
                        if (obj instanceof Dialog) {
                            dialog = (Dialog) obj;
                        } else {
                            try {
                                Field declaredField2 = obj.getClass().getDeclaredField("mDialog");
                                declaredField2.setAccessible(true);
                                dialog = (Dialog) declaredField2.get(obj);
                            } catch (Exception e2) {
                                sb.append("转换Dialog失败：");
                                sb.append(e2.getMessage());
                                sb.append("\n");
                                dialog = null;
                            }
                        }
                        if (dialog != null) {
                            TextView textView = (TextView) dialog.findViewById(R.id.title);
                            String strTrim = textView != null ? textView.getText().toString().trim() : "无标题/未找到系统标题ID";
                            sb.append("系统标题（title）：");
                            sb.append(strTrim);
                            sb.append("\n系统消息（message）：");
                            TextView textView2 = (TextView) dialog.findViewById(R.id.message);
                            sb.append(textView2 != null ? textView2.getText().toString().trim() : "无消息/未找到系统消息ID");
                            sb.append("\n确定按钮（button1）：");
                            TextView textView3 = (TextView) dialog.findViewById(R.id.button1);
                            sb.append(textView3 != null ? textView3.getText().toString().trim() : "无确定按钮");
                            sb.append("\n取消按钮（button2）：");
                            TextView textView4 = (TextView) dialog.findViewById(R.id.button2);
                            sb.append(textView4 != null ? textView4.getText().toString().trim() : "无取消按钮");
                            sb.append("\n中性按钮（button3）：");
                            TextView textView5 = (TextView) dialog.findViewById(R.id.button3);
                            sb.append(textView5 != null ? textView5.getText().toString().trim() : "无中性按钮");
                            sb.append("\n===== 自定义布局所有TextView内容 =====\n");
                            ApplicationHook.this.collectAllTextViewText(dialog.getWindow().getDecorView().getRootView(), sb);
                        } else {
                            sb.append("Dialog实例为空，无法获取控件信息\n");
                        }
                        Log.i(ApplicationHook.TAG, sb.toString());
                        if (sb.length() > 0) {
                            Log.record("页面内容：" + sb.toString());
                            if (sb.toString().contains("请检查是否使用了代理软件或VPN") || sb.toString().contains("访问被拒绝")) {
                                Log.record("包含指定字符");
                                methodHookParam.setResult((Object) null);
                            }
                        }
                        Log.i(ApplicationHook.TAG, "已拦截CaptchaDialog显示");
                        Log.record("已拦截CaptchaDialog显示");
                    }
                }
            }});
            Log.i(TAG, "支付宝CaptchaDialog Hook成功（类加载完成）");
            Log.record("支付宝CaptchaDialog Hook成功（类加载完成）");
        } catch (Throwable th) {
            Log.error(th.toString());
            Log.record("支付宝CaptchaDialog Hook失败：" + th.getMessage());
            Log.printStackTrace(TAG, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collectAllTextViewText(View view, StringBuilder sb) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                collectAllTextViewText(viewGroup.getChildAt(i), sb);
            }
            return;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            String resourceEntryName = textView.getId() != -1 ? view.getResources().getResourceEntryName(textView.getId()) : "无ID";
            String strTrim = textView.getText().toString().trim();
            if (strTrim.isEmpty()) {
                return;
            }
            sb.append("TextView(ID: ");
            sb.append(resourceEntryName);
            sb.append(")：");
            sb.append(strTrim);
            sb.append("\n");
        }
    }

    private static void setWakenAtTimeAlarm() {
        try {
            unsetWakenAtTimeAlarm();
            try {
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent("com.eg.android.AlipayGphone.sesame.execute"), getPendingIntentFlag());
                Calendar calendar = Calendar.getInstance();
                calendar.add(5, 1);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                if (setAlarmTask(calendar.getTimeInMillis(), broadcast).booleanValue()) {
                    alarm0Pi = broadcast;
                    Log.record("设置定时唤醒:0|000000");
                }
            } catch (Exception e) {
                String str = TAG;
                Log.i(str, "setWakenAt0 err:");
                Log.printStackTrace(str, e);
            }
            List<String> value = BaseModel.getWakenAtTimeList().getValue();
            if (value == null || value.isEmpty()) {
                return;
            }
            Calendar calendar2 = Calendar.getInstance();
            int size = value.size();
            for (int i = 1; i < size; i++) {
                try {
                    String str2 = value.get(i);
                    Calendar todayCalendarByTimeStr = TimeUtil.getTodayCalendarByTimeStr(str2);
                    if (todayCalendarByTimeStr != null && todayCalendarByTimeStr.compareTo(calendar2) > 0) {
                        PendingIntent broadcast2 = PendingIntent.getBroadcast(context, i, new Intent("com.eg.android.AlipayGphone.sesame.execute"), getPendingIntentFlag());
                        if (setAlarmTask(todayCalendarByTimeStr.getTimeInMillis(), broadcast2).booleanValue()) {
                            String str3 = i + "|" + str2;
                            wakenAtTimeAlarmMap.put(str3, broadcast2);
                            Log.record("设置定时唤醒:" + str3);
                        }
                    }
                } catch (Exception e2) {
                    String str4 = TAG;
                    Log.i(str4, "setWakenAtTime err:");
                    Log.printStackTrace(str4, e2);
                }
            }
        } catch (Exception e3) {
            String str5 = TAG;
            Log.i(str5, "setWakenAtTimeAlarm err:");
            Log.printStackTrace(str5, e3);
        }
    }

    private static void unsetWakenAtTimeAlarm() {
        try {
            for (Map.Entry<String, PendingIntent> entry : wakenAtTimeAlarmMap.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (unsetAlarmTask(entry.getValue()).booleanValue()) {
                        wakenAtTimeAlarmMap.remove(key);
                        Log.record("取消定时唤醒:" + key);
                    }
                } catch (Exception e) {
                    String str = TAG;
                    Log.i(str, "unsetWakenAtTime err:");
                    Log.printStackTrace(str, e);
                }
            }
            try {
                if (unsetAlarmTask(alarm0Pi).booleanValue()) {
                    alarm0Pi = null;
                    Log.record("取消定时唤醒:0|000000");
                    return;
                }
                return;
            } catch (Exception e2) {
                String str2 = TAG;
                Log.i(str2, "unsetWakenAt0 err:");
                Log.printStackTrace(str2, e2);
                return;
            }
        } catch (Exception e3) {
            String str3 = TAG;
            Log.i(str3, "unsetWakenAtTimeAlarm err:");
            Log.printStackTrace(str3, e3);
        }
        String str4 = TAG;
        Log.i(str4, "unsetWakenAtTimeAlarm err:");
        Log.printStackTrace(str4, e3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Boolean initHandler(Boolean bool) {
        if (service == null) {
            return false;
        }
        destroyHandler(bool);
        try {
            if (bool.booleanValue()) {
                String userId = getUserId();
                if (userId == null) {
                    Log.record("用户未登录");
                    Toast.show("用户未登录");
                    return false;
                }
                if (!PermissionUtil.checkAlarmPermissions()) {
                    Log.record("支付宝无闹钟权限");
                    mainHandler.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            ApplicationHook.lambda$initHandler$0();
                        }
                    }, 2000L);
                    return false;
                }
                ModuleHttpServerManager.getInstance().startIfNeeded(8080, "ET3vB^#td87sQqKaY*eMUJXP", processName, ClassUtil.PACKAGE_NAME);
                UserIdMap.initUser(userId);
                Model.initAllModel();
                Log.record("模块版本：1.12");
                Log.record("开始加载");
                ConfigV2.load(userId);
                if (!((BaseModel) Model.getModel(BaseModel.class)).getEnableField().getValue().booleanValue()) {
                    Log.record("芝麻粒已禁用");
                    Toast.show("芝麻粒已禁用");
                    return false;
                }
                if (BaseModel.getBatteryPerm().getValue().booleanValue() && !init && !PermissionUtil.checkBatteryPermissions()) {
                    Log.record("支付宝无始终在后台运行权限");
                    mainHandler.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            ApplicationHook.lambda$initHandler$1();
                        }
                    }, 2000L);
                }
                if (BaseModel.getNewRpc().getValue().booleanValue()) {
                    rpcBridge = new NewRpcBridge();
                } else {
                    rpcBridge = new OldRpcBridge();
                }
                rpcBridge.load();
                rpcVersion = rpcBridge.getVersion();
                if (miniDebugEnabled()) {
                    hookMiniProgramNetwork();
                }
                if (BaseModel.getStayAwake().getValue().booleanValue()) {
                    try {
                        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) service.getSystemService("power")).newWakeLock(1, service.getClass().getName());
                        wakeLock = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.acquire();
                    } catch (Throwable th) {
                        Log.printStackTrace(th);
                    }
                }
                setWakenAtTimeAlarm();
                if (BaseModel.getNewRpc().getValue().booleanValue() && BaseModel.getDebugMode().getValue().booleanValue()) {
                    try {
                        ClassLoader classLoader2 = classLoader;
                        Class<?> clsLoadClass = classLoader.loadClass(ClassUtil.JSON_OBJECT_NAME);
                        Class<?> clsLoadClass2 = classLoader.loadClass(ClassUtil.JSON_OBJECT_NAME);
                        Class<?> clsLoadClass3 = classLoader.loadClass("com.alibaba.ariver.app.api.App");
                        Class<?> clsLoadClass4 = classLoader.loadClass("com.alibaba.ariver.app.api.Page");
                        Class<?> clsLoadClass5 = classLoader.loadClass("com.alibaba.ariver.engine.api.bridge.model.ApiContext");
                        Class<?> clsLoadClass6 = classLoader.loadClass("com.alibaba.ariver.engine.api.bridge.extension.BridgeCallback");
                        XC_MethodHook xC_MethodHook = new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.7
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
                                Object[] objArr = methodHookParam.args;
                                Object obj = objArr[15];
                                Object[] objArr2 = new Object[4];
                                objArr2[0] = Long.valueOf(System.currentTimeMillis());
                                objArr2[1] = objArr[0];
                                objArr2[2] = objArr[4];
                                ApplicationHook.rpcHookMap.put(obj, objArr2);
                            }

                            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
                                Object obj = methodHookParam.args[15];
                                Object[] objArr = (Object[]) ApplicationHook.rpcHookMap.remove(obj);
                                if (objArr != null) {
                                    Log.debug("记录\n时间: " + objArr[0] + "\n方法: " + objArr[1] + "\n参数: " + objArr[2] + "\n数据: " + objArr[3] + "\n");
                                    return;
                                }
                                Log.debug("删除记录ID: " + obj.hashCode());
                            }
                        };
                        Class cls = Boolean.TYPE;
                        rpcRequestUnhook = XposedHelpers.findAndHookMethod("com.alibaba.ariver.commonability.network.rpc.RpcBridgeExtension", classLoader2, "rpc", new Object[]{String.class, cls, cls, String.class, clsLoadClass, String.class, clsLoadClass2, cls, cls, Integer.TYPE, cls, String.class, clsLoadClass3, clsLoadClass4, clsLoadClass5, clsLoadClass6, xC_MethodHook});
                        Log.i(TAG, "hook record request successfully");
                    } catch (Throwable th2) {
                        String str = TAG;
                        Log.i(str, "hook record request err:");
                        Log.printStackTrace(str, th2);
                    }
                    try {
                        ClassLoader classLoader3 = classLoader;
                        rpcResponseUnhook = XposedHelpers.findAndHookMethod("com.alibaba.ariver.engine.common.bridge.internal.DefaultBridgeCallback", classLoader3, "sendJSONResponse", new Object[]{classLoader3.loadClass(ClassUtil.JSON_OBJECT_NAME), new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.8
                            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
                                Object[] objArr = (Object[]) ApplicationHook.rpcHookMap.get(methodHookParam.thisObject);
                                if (objArr != null) {
                                    objArr[3] = String.valueOf(methodHookParam.args[0]);
                                }
                            }
                        }});
                        Log.i(TAG, "hook record response successfully");
                    } catch (Throwable th3) {
                        String str2 = TAG;
                        Log.i(str2, "hook record response err:");
                        Log.printStackTrace(str2, th3);
                    }
                }
                NotificationUtil.start(service);
                Model.bootAllModel(classLoader);
                Status.load();
                TokenConfig.load();
                updateDay();
                BaseModel.initData();
                BaseModel.initRpcRequest();
                Log.record("加载完成");
                Toast.show("芝麻粒加载成功");
            }
            offline = false;
            execHandler();
            return true;
        } catch (Throwable th4) {
            String str3 = TAG;
            Log.i(str3, "startHandler err:");
            Log.printStackTrace(str3, th4);
            Toast.show("芝麻粒加载失败");
            return false;
        }
    }

    static /* synthetic */ void lambda$initHandler$0() {
        if (PermissionUtil.checkOrRequestAlarmPermissions(context).booleanValue()) {
            return;
        }
        android.widget.Toast.makeText(context, "请授予支付宝使用闹钟权限", 0).show();
    }

    static /* synthetic */ void lambda$initHandler$1() {
        if (PermissionUtil.checkOrRequestBatteryPermissions(context).booleanValue()) {
            return;
        }
        android.widget.Toast.makeText(context, "请授予支付宝终在后台运行权限", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0042 A[Catch: all -> 0x0057, TryCatch #3 {all -> 0x0057, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x000d, B:9:0x0025, B:11:0x0029, B:15:0x0031, B:17:0x0035, B:21:0x003d, B:23:0x0042, B:24:0x0047, B:26:0x004b, B:20:0x003a, B:14:0x002e, B:27:0x0053), top: B:42:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x004b A[Catch: all -> 0x0057, TryCatch #3 {all -> 0x0057, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x000d, B:9:0x0025, B:11:0x0029, B:15:0x0031, B:17:0x0035, B:21:0x003d, B:23:0x0042, B:24:0x0047, B:26:0x004b, B:20:0x003a, B:14:0x002e, B:27:0x0053), top: B:42:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0035 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized void destroyHandler(Boolean bool) {
        XC_MethodHook.Unhook unhook;
        PowerManager.WakeLock wakeLock2;
        RpcBridge rpcBridge2;
        try {
            if (bool.booleanValue()) {
                if (service != null) {
                    stopHandler();
                    BaseModel.destroyData();
                    Status.unload();
                    NotificationUtil.stop();
                    RpcIntervalLimit.clearIntervalLimit();
                    ConfigV2.unload();
                    Model.destroyAllModel();
                    UserIdMap.unload();
                }
                XC_MethodHook.Unhook unhook2 = rpcResponseUnhook;
                if (unhook2 != null) {
                    try {
                        unhook2.unhook();
                    } catch (Exception e) {
                        Log.printStackTrace(e);
                    }
                    unhook = rpcRequestUnhook;
                    if (unhook != null) {
                        try {
                            unhook.unhook();
                        } catch (Exception e2) {
                            Log.printStackTrace(e2);
                        }
                    }
                    wakeLock2 = wakeLock;
                    if (wakeLock2 != null) {
                        wakeLock2.release();
                        wakeLock = null;
                    }
                    rpcBridge2 = rpcBridge;
                    if (rpcBridge2 != null) {
                        rpcVersion = null;
                        rpcBridge2.unload();
                        rpcBridge = null;
                    }
                } else {
                    unhook = rpcRequestUnhook;
                    if (unhook != null) {
                        unhook.unhook();
                    }
                    wakeLock2 = wakeLock;
                    if (wakeLock2 != null) {
                        wakeLock2.release();
                        wakeLock = null;
                    }
                    rpcBridge2 = rpcBridge;
                    if (rpcBridge2 != null) {
                        rpcVersion = null;
                        rpcBridge2.unload();
                        rpcBridge = null;
                    }
                }
            } else {
                ModelTask.stopAllTask();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "stopHandler err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void execHandler() {
        mainTask.startTask(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void execDelayedHandler(long j) {
        mainHandler.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ApplicationHook.mainTask.startTask(false);
            }
        }, j);
        try {
            NotificationUtil.updateNextExecText(System.currentTimeMillis() + j);
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    private static void stopHandler() {
        mainTask.stopTask();
        ModelTask.stopAllTask();
    }

    public static void updateDay() {
        Calendar calendar = Calendar.getInstance();
        try {
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            if (dayCalendar.get(1) != i || dayCalendar.get(2) != i2 || dayCalendar.get(5) != i3) {
                dayCalendar = (Calendar) calendar.clone();
                dayCalendar.set(11, 0);
                dayCalendar.set(12, 0);
                dayCalendar.set(13, 0);
                Log.record("日期更新为：" + i + "-" + (i2 + 1) + "-" + i3);
                setWakenAtTimeAlarm();
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
        try {
            Statistics.save(calendar);
        } catch (Exception e2) {
            Log.printStackTrace(e2);
        }
        try {
            Status.save(calendar);
        } catch (Exception e3) {
            Log.printStackTrace(e3);
        }
        try {
            FriendWatch.updateDay();
        } catch (Exception e4) {
            Log.printStackTrace(e4);
        }
    }

    private static Boolean setAlarmTask(long j, PendingIntent pendingIntent) {
        try {
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(0, j, pendingIntent);
            } else {
                alarmManager.setExact(0, j, pendingIntent);
            }
            StringBuilder sb = new StringBuilder("setAlarmTask triggerAtMillis:");
            sb.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Long.valueOf(j)));
            sb.append(" operation:");
            sb.append(pendingIntent == null ? "" : pendingIntent.toString());
            Log.i(sb.toString());
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "setAlarmTask err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private static Boolean unsetAlarmTask(PendingIntent pendingIntent) {
        if (pendingIntent != null) {
            try {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(pendingIntent);
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "unsetAlarmTask err:");
                Log.printStackTrace(str, th);
                return false;
            }
        }
        return true;
    }

    public static String requestString(RpcEntity rpcEntity) {
        return rpcBridge.requestString(rpcEntity, 3, -1);
    }

    public static String requestString(RpcEntity rpcEntity, int i, int i2) {
        return rpcBridge.requestString(rpcEntity, i, i2);
    }

    public static String requestString(String str, String str2) {
        return rpcBridge.requestString(str, str2);
    }

    public static String requestString(String str, String str2, String str3) {
        return rpcBridge.requestString(str, str2, str3);
    }

    public static String requestString(String str, String str2, int i, int i2) {
        return rpcBridge.requestString(str, str2, i, i2);
    }

    public static String requestString(String str, String str2, String str3, int i, int i2) {
        return rpcBridge.requestString(str, str2, str3, i, i2);
    }

    public static RpcEntity requestObject(RpcEntity rpcEntity) {
        return rpcBridge.requestObject(rpcEntity, 3, -1);
    }

    public static RpcEntity requestObject(RpcEntity rpcEntity, int i, int i2) {
        return rpcBridge.requestObject(rpcEntity, i, i2);
    }

    public static RpcEntity requestObject(String str, String str2) {
        return rpcBridge.requestObject(str, str2);
    }

    public static RpcEntity requestObject(String str, String str2, String str3) {
        return rpcBridge.requestObject(str, str2, str3);
    }

    public static RpcEntity requestObject(String str, String str2, int i, int i2) {
        return rpcBridge.requestObject(str, str2, i, i2);
    }

    public static RpcEntity requestObject(String str, String str2, String str3, int i, int i2) {
        return rpcBridge.requestObject(str, str2, str3, i, i2);
    }

    public static void reLoginByBroadcast() {
        try {
            context.sendBroadcast(new Intent("com.eg.android.AlipayGphone.sesame.reLogin"));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "sesame sendBroadcast reLogin err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void restartByBroadcast() {
        try {
            context.sendBroadcast(new Intent("com.eg.android.AlipayGphone.sesame.restart"));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "sesame sendBroadcast restart err:");
            Log.printStackTrace(str, th);
        }
    }

    private static int getPendingIntentFlag() {
        return Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728;
    }

    public static Object getMicroApplicationContext() {
        Object obj = microApplicationContextObject;
        if (obj != null) {
            return obj;
        }
        Object objCallMethod = XposedHelpers.callMethod(XposedHelpers.callStaticMethod(XposedHelpers.findClass("com.alipay.mobile.framework.AlipayApplication", classLoader), "getInstance", new Object[0]), "getMicroApplicationContext", new Object[0]);
        microApplicationContextObject = objCallMethod;
        return objCallMethod;
    }

    public static Object getServiceObject(String str) {
        try {
            return XposedHelpers.callMethod(getMicroApplicationContext(), "findServiceByInterface", new Object[]{str});
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getServiceObject err");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    public static Object getUserObject() {
        try {
            return XposedHelpers.callMethod(getServiceObject(XposedHelpers.findClass("com.alipay.mobile.personalbase.service.SocialSdkContactService", classLoader).getName()), "getMyAccountInfoModelByLocal", new Object[0]);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getUserObject err");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    public static String getUserId() {
        try {
            Object userObject = getUserObject();
            if (userObject != null) {
                return (String) XposedHelpers.getObjectField(userObject, "userId");
            }
            return null;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getUserId err");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    public static void reLogin() {
        mainHandler.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ApplicationHook.lambda$reLogin$3();
            }
        });
    }

    static /* synthetic */ void lambda$reLogin$3() {
        AtomicInteger atomicInteger = reLoginCount;
        if (atomicInteger.get() < 5) {
            execDelayedHandler(((long) atomicInteger.getAndIncrement()) * 5000);
        } else {
            execDelayedHandler(Math.max(BaseModel.getCheckInterval().getValue().intValue(), 180000));
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setClassName(ClassUtil.PACKAGE_NAME, ClassUtil.CURRENT_USING_ACTIVITY);
        intent.setFlags(268435456);
        offline = true;
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AlipayBroadcastReceiver extends BroadcastReceiver {
        private AlipayBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.i("sesame broadcast action:" + action + " intent:" + intent);
            if (action != null) {
                action.hashCode();
                switch (action) {
                    case "com.eg.android.AlipayGphone.sesame.status":
                        try {
                            context.sendBroadcast(new Intent("io.github.lazyimmortal.sesame.status"));
                            break;
                        } catch (Throwable th) {
                            Log.i(ApplicationHook.TAG, "sesame sendBroadcast status err:");
                            Log.printStackTrace(ApplicationHook.TAG, th);
                        }
                        break;
                    case "com.eg.android.AlipayGphone.sesame.reLogin":
                        ApplicationHook.reLogin();
                        break;
                    case "com.eg.android.AlipayGphone.sesame.restart":
                        String stringExtra = intent.getStringExtra("userId");
                        if (StringUtil.isEmpty(stringExtra) || Objects.equals(UserIdMap.getCurrentUid(), stringExtra)) {
                            final BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
                            new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m116x78b7d40e(pendingResultGoAsync);
                                }
                            }, "Sesame-Restart").start();
                            break;
                        }
                        break;
                    case "com.eg.android.AlipayGphone.sesame.rpctest":
                        try {
                            TestRpc.start(intent.getStringExtra("method"), intent.getStringExtra("data"), intent.getStringExtra("type"));
                            break;
                        } catch (Throwable th2) {
                            Log.i(ApplicationHook.TAG, "sesame rpctest err:");
                            Log.printStackTrace(ApplicationHook.TAG, th2);
                            return;
                        }
                        break;
                    case "com.eg.android.AlipayGphone.sesame.execute":
                        final BroadcastReceiver.PendingResult pendingResultGoAsync2 = goAsync();
                        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m117xbacf016d(pendingResultGoAsync2);
                            }
                        }, "Sesame-Execute").start();
                        break;
                }
            }
        }

        /* JADX INFO: renamed from: lambda$onReceive$0$io-github-lazyimmortal-sesame-hook-ApplicationHook$AlipayBroadcastReceiver, reason: not valid java name */
        /* synthetic */ void m116x78b7d40e(BroadcastReceiver.PendingResult pendingResult) {
            try {
                ApplicationHook.this.initHandler(true);
            } catch (Throwable th) {
                Log.printStackTrace(ApplicationHook.TAG, th);
            }
            pendingResult.finish();
        }

        /* JADX INFO: renamed from: lambda$onReceive$1$io-github-lazyimmortal-sesame-hook-ApplicationHook$AlipayBroadcastReceiver, reason: not valid java name */
        /* synthetic */ void m117xbacf016d(BroadcastReceiver.PendingResult pendingResult) {
            try {
                ApplicationHook.this.initHandler(false);
            } catch (Throwable th) {
                Log.printStackTrace(ApplicationHook.TAG, th);
            }
            pendingResult.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerBroadcastReceiver(Context context2) {
        BroadcastReceiver broadcastReceiver2;
        try {
            if (broadcastReceiverRegistered && (broadcastReceiver2 = broadcastReceiver) != null) {
                try {
                    context2.unregisterReceiver(broadcastReceiver2);
                    broadcastReceiverRegistered = false;
                    Log.i(TAG, "hook unregisterBroadcastReceiver successfully");
                } catch (Throwable th) {
                    String str = TAG;
                    Log.i(str, "hook unregisterBroadcastReceiver err:");
                    Log.printStackTrace(str, th);
                }
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.eg.android.AlipayGphone.sesame.restart");
            intentFilter.addAction("com.eg.android.AlipayGphone.sesame.execute");
            intentFilter.addAction("com.eg.android.AlipayGphone.sesame.reLogin");
            intentFilter.addAction("com.eg.android.AlipayGphone.sesame.status");
            intentFilter.addAction("com.eg.android.AlipayGphone.sesame.rpctest");
            broadcastReceiver = new AlipayBroadcastReceiver();
            if (Build.VERSION.SDK_INT >= 33) {
                context2.registerReceiver(broadcastReceiver, intentFilter, 2);
            } else {
                context2.registerReceiver(broadcastReceiver, intentFilter);
            }
            broadcastReceiverRegistered = true;
            Log.i(TAG, "hook registerBroadcastReceiver successfully");
        } catch (Throwable th2) {
            String str2 = TAG;
            Log.i(str2, "hook registerBroadcastReceiver err:");
            Log.printStackTrace(str2, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSimplePageManager() {
        if (shouldEnableSimplePageManager()) {
            SimplePageManager.enableWindowMonitoring(classLoader);
            SimplePageManager.addHandler("com.alipay.mobile.nebulax.xriver.activity.XRiverActivity", new Captcha1Handler());
            SimplePageManager.addHandler(ClassUtil.CURRENT_USING_ACTIVITY, new Captcha2Handler());
        }
    }

    private boolean shouldEnableSimplePageManager() {
        if (alipayVersion.toString().isEmpty()) {
            return false;
        }
        if (alipayVersion.compareTo(new AlipayVersion("10.6.58.99999")) <= 0) {
            return true;
        }
        Log.record("目标应用版本[" + alipayVersion.getVersionString() + "]高于[10.6.58.99999]不支持自动过滑块验证");
        return false;
    }

    private void hookMiniProgramNetwork() {
        tryHookMiniNetworkClass(MINI_RESP_CLASS);
        tryHookMiniNetworkClass(ASYNC_REQUEST_HANDLER_CLASS);
        installDeferredNetworkHook();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleMiniHookInstall() {
        if (miniHookInstallScheduled) {
            return;
        }
        miniHookInstallScheduled = true;
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.9
            @Override // java.lang.Runnable
            public void run() {
                if (ApplicationHook.this.tryInstallMiniHook()) {
                    return;
                }
                for (int i = 0; i < 12; i++) {
                    try {
                        Thread.sleep(5000L);
                        if (ApplicationHook.this.tryInstallMiniHook()) {
                            return;
                        }
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
            }
        }, "sesame-mini-hook").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean tryInstallMiniHook() {
        try {
            if (!miniDebugEnabled()) {
                return false;
            }
            hookMiniProgramNetwork();
            Log.debug("小程序抓包进程启动[" + processName + "]");
            return true;
        } catch (Throwable th) {
            Log.debug("小程序抓包进程[" + processName + "]启动失败: " + th.getMessage());
            return false;
        }
    }

    private void tryHookMiniNetworkClass(String str) {
        if (deferredHookedClasses.contains(str)) {
            return;
        }
        try {
            hookMiniNetworkClass(XposedHelpers.findClass(str, classLoader));
        } catch (Throwable unused) {
        }
    }

    private void pendingMiniRequest(String str, String str2, String str3) {
        String strClip;
        if (str == null || str.length() == 0 || !isGameApi(str)) {
            return;
        }
        if (str3 != null && str3.length() > 0) {
            if (str3.startsWith("data=")) {
                str3 = str3.substring(5);
                try {
                    str3 = URLDecoder.decode(str3, "UTF-8");
                } catch (Throwable unused) {
                }
            }
            strClip = clip(deepPrettyJson(str3));
        } else {
            strClip = "";
        }
        Deque deque = (Deque) pendingMiniRequests.computeIfAbsent(str, new Function() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ApplicationHook.lambda$pendingMiniRequest$4((String) obj);
            }
        });
        String strValueOf = String.valueOf(System.currentTimeMillis());
        StringBuilder sb = new StringBuilder("MINI ");
        if (str2 == null || str2.length() == 0) {
            str2 = "?";
        }
        sb.append(str2);
        sb.append(" ");
        sb.append(str);
        deque.addLast(new String[]{strValueOf, sb.toString(), strClip});
        while (deque.size() > 8) {
            deque.pollFirst();
        }
    }

    static /* synthetic */ Deque lambda$pendingMiniRequest$4(String str) {
        return new ConcurrentLinkedDeque();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logMiniResponse(Object[] objArr, Object obj) {
        Object obj2;
        String strValueOf;
        String str;
        if (!miniDebugEnabled() || objArr == null || objArr.length < 2 || (obj2 = objArr[0]) == null) {
            if (!miniDebugEnabled() || objArr == null) {
                return;
            }
            StringBuilder sb = new StringBuilder("小程序onHandleResponse参数不足: len=");
            sb.append(objArr.length);
            for (int i = 0; i < objArr.length; i++) {
                sb.append(" arg[");
                sb.append(i);
                sb.append("]=");
                Object obj3 = objArr[i];
                sb.append(obj3 == null ? "null" : obj3.getClass().getName());
            }
            Log.debug(sb.toString());
            return;
        }
        String string = obj2.toString();
        if (!isGameApi(string)) {
            Log.debug("小程序onHandleResponse过滤URL: " + string + " 进程=" + processName);
            return;
        }
        ensureAsyncRequestHook(obj != null ? obj.getClass().getClassLoader() : classLoader);
        Object obj4 = objArr[1];
        String str2 = "";
        String strClip = obj4 != null ? clip(deepPrettyJson(obj4.toString())) : "";
        Map<String, Deque<String[]>> map = pendingMiniRequests;
        Deque<String[]> deque = map.get(string);
        String[] strArrPollFirst = deque != null ? deque.pollFirst() : null;
        if (deque != null && deque.isEmpty()) {
            map.remove(string, deque);
        }
        if (strArrPollFirst != null) {
            strValueOf = strArrPollFirst[0];
            str = strArrPollFirst[1];
            str2 = strArrPollFirst[2];
        } else {
            strValueOf = String.valueOf(System.currentTimeMillis());
            str = "MINI ? " + string;
        }
        Log.debug("记录\n时间: " + strValueOf + "\n方法: " + str + "\n参数: " + str2 + "\n数据: " + strClip + "\n");
    }

    private void ensureAsyncRequestHook(ClassLoader classLoader2) {
        Set<String> set = deferredHookedClasses;
        if (set.contains(ASYNC_REQUEST_HANDLER_CLASS)) {
            return;
        }
        try {
            Class<?> cls = Class.forName(ASYNC_REQUEST_HANDLER_CLASS, false, classLoader2);
            if (set.add(ASYNC_REQUEST_HANDLER_CLASS)) {
                installAsyncRequestHookOnClass(cls);
            }
        } catch (Throwable unused) {
        }
    }

    private void installAsyncRequestHookOnClass(Class<?> cls) {
        XposedBridge.hookAllMethods(cls, "processAsyncRequest", new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.10
            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                try {
                    ApplicationHook.this.logRequestFromModels(methodHookParam.args);
                } catch (Throwable unused) {
                }
            }
        });
        if (miniDebugEnabled()) {
            Log.debug("小程序抓包hook已安装: AsyncRequestHandler.processAsyncRequest 进程=" + processName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logRequestFromModels(Object[] objArr) {
        String str;
        String next;
        if (!miniDebugEnabled() || objArr == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Set<Object> setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        for (Object obj : objArr) {
            collectStrings(obj, 3, setNewSetFromMap, arrayList);
            if (arrayList.size() > 256) {
                break;
            }
        }
        for (String str2 : arrayList) {
            if (str2.length() >= 8 && str2.indexOf(34) >= 0) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    String strOptString = jSONObject.optString("url");
                    if (strOptString.length() > 0 && isGameApi(strOptString)) {
                        pendingMiniRequest(strOptString, jSONObject.optString("method", "GET"), jSONObject.optString("data"));
                        return;
                    }
                } catch (Throwable unused) {
                }
            }
        }
        Iterator<String> it = arrayList.iterator();
        do {
            str = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if ("GET".equals(next) || "POST".equals(next) || "PUT".equals(next)) {
                break;
            }
        } while (!"DELETE".equals(next));
        for (String str3 : arrayList) {
            if (str3.startsWith("data=")) {
                str = str3;
                break;
            }
        }
        if (str == null) {
            for (String str4 : arrayList) {
                if (str4.startsWith("{") && str4.length() > 16 && (str == null || str4.length() > str.length())) {
                    str = str4;
                }
            }
        }
        if (str == null) {
            for (String str5 : arrayList) {
                if (str5.length() > 8 && str5.length() < 8192 && str5.indexOf(61) > 0 && !str5.startsWith("http") && str5.indexOf(10) < 0 && str5.indexOf(60) < 0) {
                    str = str5;
                    break;
                }
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str6 : arrayList) {
            if (str6.startsWith("http") && isGameApi(str6)) {
                linkedHashSet.add(str6.trim());
                if (linkedHashSet.size() >= 3) {
                    break;
                }
            }
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            pendingMiniRequest((String) it2.next(), next, str);
        }
    }

    private void collectStrings(Object obj, int i, Set<Object> set, List<String> list) {
        if (obj == null || i < 0 || set.size() > 128) {
            return;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() > 0) {
                list.add(str);
                return;
            }
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isPrimitive() || (obj instanceof Number) || (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Enum)) {
            return;
        }
        if (cls == byte[].class) {
            String strPrintableUtf8 = printableUtf8((byte[]) obj);
            if (strPrintableUtf8 != null) {
                list.add(strPrintableUtf8);
                return;
            }
            return;
        }
        if (cls.isArray()) {
            return;
        }
        if (obj instanceof Map) {
            if (set.add(obj)) {
                Iterator it = ((Map) obj).values().iterator();
                while (it.hasNext()) {
                    collectStrings(it.next(), i - 1, set, list);
                }
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            if (set.add(obj)) {
                Iterator it2 = ((Collection) obj).iterator();
                while (it2.hasNext()) {
                    collectStrings(it2.next(), i - 1, set, list);
                }
                return;
            }
            return;
        }
        String name = cls.getName();
        if (!name.startsWith("com.alipay")) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            if (!lowerCase.contains("request") && !lowerCase.contains("param") && !lowerCase.contains("body") && !lowerCase.contains("http") && !lowerCase.contains("network") && !lowerCase.contains("postdata") && !lowerCase.contains(NotificationCompat.CATEGORY_MESSAGE)) {
                return;
            }
        }
        if (set.add(obj)) {
            Iterator it3 = ((List) modelFieldsCache.computeIfAbsent(cls, new Function() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda5
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    return this.f$0.resolveInstanceFields((Class) obj2);
                }
            })).iterator();
            while (it3.hasNext()) {
                try {
                    collectStrings(((Field) it3.next()).get(obj), i - 1, set, list);
                } catch (Throwable unused) {
                }
            }
        }
    }

    private String printableUtf8(byte[] bArr) {
        if (bArr == null || bArr.length == 0 || bArr.length > 65536) {
            return null;
        }
        try {
            String str = new String(bArr, "UTF-8");
            int length = str.length();
            if (length == 0) {
                return null;
            }
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt >= ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t') {
                    i++;
                }
            }
            if (((long) i) * 10 >= ((long) length) * 9) {
                return str;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Field> resolveInstanceFields(Class<?> cls) {
        Class<?> type;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (cls != null && cls != Object.class) {
            int i2 = i + 1;
            if (i >= 6) {
                break;
            }
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers()) && ((type = field.getType()) == String.class || type == byte[].class || type.getName().startsWith("com.alipay") || Map.class.isAssignableFrom(type) || Collection.class.isAssignableFrom(type))) {
                    try {
                        field.setAccessible(true);
                        arrayList.add(field);
                    } catch (Throwable unused) {
                    }
                }
            }
            cls = cls.getSuperclass();
            i = i2;
        }
        return arrayList;
    }

    private boolean isGameApi(String str) {
        if (str == null || str.length() < 8) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (!lowerCase.startsWith("http://") && !lowerCase.startsWith("https://")) {
            return false;
        }
        for (String str2 : MINI_HOST_BLACKLIST) {
            if (lowerCase.contains(str2)) {
                return false;
            }
        }
        int iIndexOf = lowerCase.indexOf(63);
        if (iIndexOf >= 0) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int iIndexOf2 = lowerCase.indexOf(47, 8);
        if (iIndexOf2 >= 0) {
            lowerCase = lowerCase.substring(iIndexOf2);
        }
        for (String str3 : MINI_STATIC_SUFFIX) {
            if (lowerCase.endsWith(str3)) {
                return false;
            }
        }
        return true;
    }

    private String deepPrettyJson(String str) {
        Object objDeepParseJson;
        String string;
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        try {
            if (strTrim.startsWith("{")) {
                objDeepParseJson = deepParseJson(new JSONObject(strTrim));
            } else if (strTrim.startsWith("[")) {
                objDeepParseJson = deepParseJson(new JSONArray(strTrim));
            } else {
                return str.replaceAll("\\r?\\n", " ");
            }
            if (objDeepParseJson instanceof JSONObject) {
                string = ((JSONObject) objDeepParseJson).toString();
            } else {
                string = ((JSONArray) objDeepParseJson).toString();
            }
            return string.replaceAll("\\r?\\n", " ");
        } catch (Throwable unused) {
            return str.replaceAll("\\r?\\n", " ");
        }
    }

    private Object deepParseJson(Object obj) {
        try {
            int i = 0;
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArrayNames = jSONObject.names();
                if (jSONArrayNames != null) {
                    while (i < jSONArrayNames.length()) {
                        String strOptString = jSONArrayNames.optString(i);
                        jSONObject2.put(strOptString, deepParseJson(jSONObject.opt(strOptString)));
                        i++;
                    }
                }
                return jSONObject2;
            }
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                JSONArray jSONArray2 = new JSONArray();
                while (i < jSONArray.length()) {
                    jSONArray2.put(deepParseJson(jSONArray.opt(i)));
                    i++;
                }
                return jSONArray2;
            }
            if (!(obj instanceof String)) {
                return obj;
            }
            String strTrim = ((String) obj).trim();
            boolean z = strTrim.startsWith("{") && strTrim.endsWith("}");
            if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
                i = 1;
            }
            if (z || i != 0) {
                return deepParseJson(z ? new JSONObject(strTrim) : new JSONArray(strTrim));
            }
            return obj;
        } catch (Throwable unused) {
            return obj;
        }
    }

    private String clip(String str) {
        if (str == null || str.length() <= MAX_LOG_LEN) {
            return str;
        }
        return str.substring(0, MAX_LOG_LEN) + "...(truncated)";
    }

    private boolean miniDebugEnabled() {
        String str = processName;
        if (str != null && !ClassUtil.PACKAGE_NAME.equals(str)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis < miniDebugExpireAt) {
                return miniDebugCached;
            }
            boolean debugSwitchFromConfig = readDebugSwitchFromConfig();
            miniDebugCached = debugSwitchFromConfig;
            miniDebugExpireAt = jCurrentTimeMillis + 10000;
            return debugSwitchFromConfig;
        }
        try {
            BooleanModelField debugMode = BaseModel.getDebugMode();
            if (debugMode != null) {
                return debugMode.getValue().booleanValue();
            }
        } catch (Throwable unused) {
        }
        return readDebugSwitchFromConfig();
    }

    private boolean readDebugSwitchFromConfig() {
        List<File> listCollectConfigV2Files = collectConfigV2Files();
        Pattern patternCompile = Pattern.compile("\"debugMode\"\\s*:\\s*\\{[^{}]*?\"value\"\\s*:\\s*(true|false)");
        Pattern patternCompile2 = Pattern.compile("\"debugMode\"\\s*:\\s*(true|false)");
        HashSet hashSet = new HashSet();
        for (File file : listCollectConfigV2Files) {
            if (file != null && hashSet.add(file.getAbsolutePath())) {
                try {
                    if (file.exists()) {
                        String fromFile = FileUtil.readFromFile(file);
                        if (!StringUtil.isEmpty(fromFile)) {
                            Matcher matcher = patternCompile.matcher(fromFile);
                            boolean zFind = matcher.find();
                            if (!zFind) {
                                matcher = patternCompile2.matcher(fromFile);
                                zFind = matcher.find();
                            }
                            if (zFind) {
                                boolean zEquals = "true".equals(matcher.group(1));
                                if (miniSwitchFoundLogged.compareAndSet(false, true)) {
                                    Log.debug("小程序抓包开关: " + zEquals + " 来源=" + file.getAbsolutePath());
                                }
                                return zEquals;
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        if (miniSwitchDiagLogged.compareAndSet(false, true)) {
            StringBuilder sb = new StringBuilder("小程序抓包开关未读到[进程=");
            sb.append(processName);
            sb.append("]");
            for (File file2 : listCollectConfigV2Files) {
                if (file2 != null) {
                    try {
                        sb.append(" | ");
                        sb.append(file2.getAbsolutePath());
                        sb.append(" exists=");
                        sb.append(file2.exists());
                        sb.append(" read=");
                        sb.append(file2.canRead());
                        sb.append(" len=");
                        sb.append(file2.length());
                    } catch (Throwable unused2) {
                    }
                }
            }
            Log.debug(sb.toString());
        }
        return false;
    }

    private List<File> collectConfigV2Files() {
        ArrayList arrayList = new ArrayList();
        try {
            File[] fileArrListFiles = FileUtil.CONFIG_DIRECTORY_FILE.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (file != null && file.isDirectory()) {
                        arrayList.add(new File(file, "config_v2.json"));
                    }
                }
            }
        } catch (Throwable unused) {
        }
        try {
            File[] fileArrListFiles2 = new File(new File(Environment.getExternalStorageDirectory(), "Android/media/com.eg.android.AlipayGphone/sesame"), "config").listFiles();
            if (fileArrListFiles2 != null) {
                for (File file2 : fileArrListFiles2) {
                    if (file2 != null && file2.isDirectory()) {
                        arrayList.add(new File(file2, "config_v2.json"));
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            arrayList.sort(new Comparator() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook$$ExternalSyntheticLambda8
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                }
            });
        } catch (Throwable unused3) {
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        try {
            arrayList2.add(FileUtil.getDefaultConfigV2File());
        } catch (Throwable unused4) {
        }
        try {
            arrayList2.add(new File(new File(Environment.getExternalStorageDirectory(), "Android/media/com.eg.android.AlipayGphone/sesame"), "config_v2.json"));
        } catch (Throwable unused5) {
        }
        return arrayList2;
    }

    private void installDeferredNetworkHook() {
        XC_MethodHook xC_MethodHook = new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.11
            protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                try {
                    Object result = methodHookParam.getResult();
                    if (result instanceof Class) {
                        ApplicationHook.this.hookMiniNetworkClass((Class) result);
                    }
                } catch (Throwable unused) {
                }
            }
        };
        try {
            XposedBridge.hookAllMethods(ClassLoader.class, "loadClass", xC_MethodHook);
        } catch (Throwable unused) {
        }
        try {
            XposedBridge.hookAllMethods(XposedHelpers.findClass("dalvik.system.BaseDexClassLoader", (ClassLoader) null), "loadClass", xC_MethodHook);
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hookMiniNetworkClass(Class<?> cls) {
        String name = cls.getName();
        if ((MINI_RESP_CLASS.equals(name) || ASYNC_REQUEST_HANDLER_CLASS.equals(name)) && deferredHookedClasses.add(name)) {
            try {
                if (MINI_RESP_CLASS.equals(name)) {
                    int iHookMethodInHierarchy = hookMethodInHierarchy(cls, "onHandleResponse", new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.hook.ApplicationHook.12
                        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                            try {
                                ApplicationHook.this.logMiniResponse(methodHookParam.args, methodHookParam.thisObject);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                    if (miniDebugEnabled()) {
                        Log.debug("小程序抓包hook已安装: " + name + " onHandleResponse方法=" + iHookMethodInHierarchy + " 进程=" + processName);
                    }
                } else {
                    installAsyncRequestHookOnClass(cls);
                }
            } catch (Throwable th) {
                if (miniDebugEnabled()) {
                    Log.debug("小程序抓包hook安装失败: " + name + " " + th.getMessage());
                }
            }
        }
    }

    private int hookMethodInHierarchy(Class<?> cls, String str, XC_MethodHook xC_MethodHook) {
        int size = 0;
        while (cls != null && cls != Object.class) {
            try {
                size += XposedBridge.hookAllMethods(cls, str, xC_MethodHook).size();
            } catch (Throwable unused) {
            }
            cls = cls.getSuperclass();
        }
        return size;
    }
}
