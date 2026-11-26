package io.github.lazyimmortal.sesame.ui;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.AppConfig;
import io.github.lazyimmortal.sesame.data.RunType;
import io.github.lazyimmortal.sesame.data.ViewAppInfo;
import io.github.lazyimmortal.sesame.entity.FriendWatch;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.LanguageUtil;
import io.github.lazyimmortal.sesame.util.LibraryUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.PermissionUtil;
import io.github.lazyimmortal.sesame.util.Statistics;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.ToastUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    private Runnable titleRunner;
    private TextView tvStatistics;
    private Handler viewHandler;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private boolean hasPermissions = false;
    private boolean isBackground = false;
    private boolean isClick = false;
    private String[] userNameArray = {"默认"};
    private UserEntity[] userEntityArray = {null};

    class ChangelogNoMoreListener implements DialogInterface.OnClickListener {
        ChangelogNoMoreListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            MainActivity.this.setChangelogDismissed();
            dialogInterface.dismiss();
        }
    }

    private boolean isChangelogDismissed() {
        return true;
    }

    public void setChangelogDismissed() {
        getSharedPreferences("sesame_changelog", 0).edit().putBoolean("no_more_changelog", true).apply();
    }

    @Override // io.github.lazyimmortal.sesame.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        this.tvStatistics = (TextView) findViewById(R.id.tv_statistics);
        ViewAppInfo.checkRunType();
        updateSubTitle(ViewAppInfo.getRunType());
        this.viewHandler = new Handler(Looper.getMainLooper());
        this.titleRunner = new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m139lambda$onCreate$0$iogithublazyimmortalsesameuiMainActivity();
            }
        };
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                Log.i("view broadcast action:" + action + " intent:" + intent);
                if (action != null) {
                    action.hashCode();
                    if (!action.equals("io.github.lazyimmortal.sesame.status")) {
                        if (action.equals("io.github.lazyimmortal.sesame.update")) {
                            Statistics.load();
                            MainActivity.this.tvStatistics.setText(Statistics.getText(MainActivity.this));
                            return;
                        }
                        return;
                    }
                    if (RunType.DISABLE == ViewAppInfo.getRunType()) {
                        MainActivity.this.updateSubTitle(RunType.PACKAGE);
                    }
                    MainActivity.this.viewHandler.removeCallbacks(MainActivity.this.titleRunner);
                    if (MainActivity.this.isClick) {
                        ToastUtil.show(context, "芝麻粒加载状态正常");
                        MainActivity.this.isClick = false;
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("io.github.lazyimmortal.sesame.status");
        intentFilter.addAction("io.github.lazyimmortal.sesame.update");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(broadcastReceiver, intentFilter, 2);
        } else {
            registerReceiver(broadcastReceiver, intentFilter);
        }
        if (!isChangelogDismissed()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(R.string.tips);
            builder.setMessage(R.string.start_message);
            builder.setPositiveButton(R.string.btn_understood, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.setNeutralButton("不再提示", new ChangelogNoMoreListener());
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.show();
            Button button = alertDialogCreate.getButton(-1);
            if (button != null) {
                button.setTextColor(ContextCompat.getColor(this, R.color.button));
            }
        }
        prewarmWebView();
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m139lambda$onCreate$0$iogithublazyimmortalsesameuiMainActivity() {
        updateSubTitle(RunType.DISABLE);
    }

    private void prewarmWebView() {
        if (AppConfig.INSTANCE.getNewUI().booleanValue()) {
            this.viewHandler.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m140xc1c44f47();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: renamed from: lambda$prewarmWebView$2$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m140xc1c44f47() {
        try {
            new WebView(this).destroy();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.hasPermissions) {
            return;
        }
        if (!z) {
            this.isBackground = true;
        } else {
            this.isBackground = false;
            this.handler.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MainActivity.this.isBackground) {
                        return;
                    }
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.hasPermissions = PermissionUtil.checkOrRequestFilePermissions(mainActivity).booleanValue();
                    if (MainActivity.this.hasPermissions) {
                        MainActivity.this.onResume();
                    } else {
                        Toast.makeText(MainActivity.this, "未获取文件读写权限", 0).show();
                        MainActivity.this.handler.postDelayed(this, 2000L);
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.hasPermissions) {
            if (RunType.DISABLE == ViewAppInfo.getRunType()) {
                this.viewHandler.postDelayed(this.titleRunner, 3000L);
                try {
                    sendBroadcast(new Intent("com.eg.android.AlipayGphone.sesame.status"));
                } catch (Throwable th) {
                    Log.i("view sendBroadcast status err:");
                    Log.printStackTrace(th);
                }
            }
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                File[] fileArrListFiles = FileUtil.CONFIG_DIRECTORY_FILE.listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (file.isDirectory()) {
                            String name = file.getName();
                            UserIdMap.loadSelf(name);
                            UserEntity userEntity = UserIdMap.get(name);
                            if (userEntity != null) {
                                name = userEntity.getShowName() + ": " + userEntity.getAccount();
                            }
                            arrayList.add(name);
                            arrayList2.add(userEntity);
                        }
                    }
                }
                arrayList.add(0, "默认");
                arrayList2.add(0, null);
                this.userNameArray = (String[]) arrayList.toArray(new String[0]);
                this.userEntityArray = (UserEntity[]) arrayList2.toArray(new UserEntity[0]);
            } catch (Exception e) {
                this.userNameArray = new String[]{"默认"};
                this.userEntityArray = new UserEntity[]{null};
                Log.printStackTrace(e);
            }
            try {
                Statistics.load();
                Statistics.updateDay(Calendar.getInstance());
                this.tvStatistics.setText(Statistics.getText(this));
            } catch (Exception e2) {
                Log.printStackTrace(e2);
            }
        }
    }

    public void onClick(View view) {
        if (view.getId() == R.id.btn_test) {
            try {
                sendBroadcast(new Intent("com.eg.android.AlipayGphone.sesame.status"));
                this.isClick = true;
                return;
            } catch (Throwable th) {
                Log.i("view sendBroadcast status err:");
                Log.printStackTrace(th);
                return;
            }
        }
        String str = "file://";
        if (view.getId() == R.id.btn_forest_log) {
            str = "file://" + FileUtil.getForestLogFile().getAbsolutePath();
        } else if (view.getId() == R.id.btn_farm_log) {
            str = "file://" + FileUtil.getFarmLogFile().getAbsolutePath();
        } else if (view.getId() == R.id.btn_other_log) {
            str = "file://" + FileUtil.getRecordLogFile().getAbsolutePath();
        } else if (view.getId() == R.id.btn_info_log) {
            str = "file://" + FileUtil.getInfoLogFile().getAbsolutePath();
        } else if (view.getId() == R.id.btn_friend_watch) {
            selectFriendWatchUid();
            return;
        } else if (view.getId() == R.id.btn_settings) {
            selectSettingUid();
            return;
        }
        Intent intent = new Intent(this, (Class<?>) HtmlViewerActivity.class);
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        int componentEnabledSetting = getPackageManager().getComponentEnabledSetting(new ComponentName(this, getClass().getCanonicalName() + "Alias"));
        menu.add(0, 1, 1, R.string.other_log);
        menu.add(0, 2, 2, R.string.view_debug_file);
        menu.add(0, 3, 3, R.string.extensions);
        menu.add(0, 13, 4, R.string.update_download);
        menu.add(0, 8, 5, R.string.export_the_statistic_file);
        menu.add(0, 9, 6, R.string.import_the_statistic_file);
        menu.add(0, 4, 7, R.string.view_error_log_file);
        menu.add(0, 5, 8, R.string.export_error_log_file);
        menu.add(0, 6, 9, R.string.view_runtime_log_file);
        menu.add(0, 7, 10, R.string.export_runtime_log_file);
        menu.add(0, 10, 11, R.string.hide_the_application_icon).setCheckable(true).setChecked(componentEnabledSetting > 1);
        menu.add(0, 11, 12, R.string.language_simplified_chinese).setCheckable(true).setChecked(AppConfig.INSTANCE.getLanguageSimplifiedChinese().booleanValue());
        menu.add(0, 12, 13, R.string.settings);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 1:
                String str = "file://" + FileUtil.getOtherLogFile().getAbsolutePath();
                Intent intent = new Intent(this, (Class<?>) HtmlViewerActivity.class);
                intent.setData(Uri.parse(str));
                intent.putExtra("canClear", true);
                startActivity(intent);
                break;
            case 2:
                String str2 = "file://" + FileUtil.getDebugLogFile().getAbsolutePath();
                Intent intent2 = new Intent(this, (Class<?>) HtmlViewerActivity.class);
                intent2.setData(Uri.parse(str2));
                intent2.putExtra("canClear", true);
                startActivity(intent2);
                break;
            case 3:
                startActivity(new Intent(this, (Class<?>) ExtensionsActivity.class));
                break;
            case 4:
                String str3 = "file://" + FileUtil.getErrorLogFile().getAbsolutePath();
                Intent intent3 = new Intent(this, (Class<?>) HtmlViewerActivity.class);
                intent3.putExtra("nextLine", false);
                intent3.putExtra("canClear", true);
                intent3.setData(Uri.parse(str3));
                startActivity(intent3);
                break;
            case 5:
                File fileExportFile = FileUtil.exportFile(FileUtil.getErrorLogFile());
                if (fileExportFile != null) {
                    ToastUtil.show(this, "文件已导出到: " + fileExportFile.getPath());
                }
                break;
            case 6:
                String str4 = "file://" + FileUtil.getRuntimeLogFile().getAbsolutePath();
                Intent intent4 = new Intent(this, (Class<?>) HtmlViewerActivity.class);
                intent4.putExtra("nextLine", false);
                intent4.putExtra("canClear", true);
                intent4.setData(Uri.parse(str4));
                startActivity(intent4);
                break;
            case 7:
                File fileExportFile2 = FileUtil.exportFile(FileUtil.getRuntimeLogFile());
                if (fileExportFile2 != null) {
                    ToastUtil.show(this, "文件已导出到: " + fileExportFile2.getPath());
                }
                break;
            case 8:
                File fileExportFile3 = FileUtil.exportFile(FileUtil.getStatisticsFile());
                if (fileExportFile3 != null) {
                    ToastUtil.show(this, "文件已导出到: " + fileExportFile3.getPath());
                }
                break;
            case 9:
                if (FileUtil.copyTo(FileUtil.getExportedStatisticsFile(), FileUtil.getStatisticsFile())) {
                    this.tvStatistics.setText(Statistics.getText(this));
                    ToastUtil.show(this, "导入成功！");
                }
                break;
            case 10:
                int i = menuItem.isChecked() ? 0 : 2;
                getPackageManager().setComponentEnabledSetting(new ComponentName(this, getClass().getCanonicalName() + "Alias"), i, 1);
                menuItem.setChecked(menuItem.isChecked() ^ true);
                break;
            case 11:
                AppConfig appConfig = AppConfig.INSTANCE;
                appConfig.setLanguageSimplifiedChinese(Boolean.valueOf(!appConfig.getLanguageSimplifiedChinese().booleanValue()));
                if (AppConfig.save().booleanValue()) {
                    menuItem.setChecked(!menuItem.isChecked());
                    LanguageUtil.setLocal(this);
                    recreate();
                }
                break;
            case 12:
                selectSettingUid();
                break;
            case 13:
                Intent intent5 = new Intent(this, (Class<?>) HtmlViewerActivity.class);
                intent5.setData(Uri.parse("https://github.com/Dragon813/Sesame-GR/releases"));
                startActivity(intent5);
                break;
            case 14:
                showChangelog();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void showChangelog() {
        new AlertDialog.Builder(this).setTitle("更新记录").setMessage(R.string.start_message).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show();
    }

    private void selectSettingUid() {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("请选择配置");
        builder.setItems(this.userNameArray, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m144xfc6eeaf3(atomicBoolean, dialogInterface, i);
            }
        });
        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                atomicBoolean.set(true);
            }
        });
        builder.setPositiveButton("返回", new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        Button button = alertDialogCreate.getButton(-1);
        if (button != null) {
            button.setTextColor(ContextCompat.getColor(this, R.color.button));
        }
        final int length = this.userNameArray.length;
        if (length <= 0 || length >= 3) {
            return;
        }
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m145x5cdd5db6(atomicBoolean, alertDialogCreate, length);
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$selectSettingUid$3$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m144xfc6eeaf3(AtomicBoolean atomicBoolean, DialogInterface dialogInterface, int i) {
        atomicBoolean.set(true);
        dialogInterface.dismiss();
        goSettingActivity(i);
    }

    /* JADX INFO: renamed from: lambda$selectSettingUid$6$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m145x5cdd5db6(AtomicBoolean atomicBoolean, AlertDialog alertDialog, int i) {
        TimeUtil.sleep(800L);
        if (atomicBoolean.get()) {
            return;
        }
        alertDialog.dismiss();
        goSettingActivity(i - 1);
    }

    private void goSettingActivity(int i) {
        UserEntity userEntity = this.userEntityArray[i];
        Intent intent = new Intent(this, (Class<?>) (AppConfig.INSTANCE.getNewUI().booleanValue() && !"TEST".equals(ViewAppInfo.getAppVersion()) && LibraryUtil.loadLibrary(FileUtil.CONFIG_DIRECTORY_NAME).booleanValue() ? NewSettingsActivity.class : SettingsActivity.class));
        if (userEntity == null) {
            intent.putExtra("userName", this.userNameArray[i]);
        } else {
            intent.putExtra("userId", userEntity.getUserId());
            intent.putExtra("userName", userEntity.getShowName());
        }
        startActivity(intent);
    }

    private void selectFriendWatchUid() {
        final int length = this.userEntityArray.length - 1;
        if (length <= 0) {
            ToastUtil.show(this, "暂无账号数据");
            return;
        }
        String[] strArr = new String[length];
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            strArr[i] = this.userNameArray[i2];
            i = i2;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.friend_watch);
        builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.m142xa6648b56(atomicBoolean, dialogInterface, i3);
            }
        });
        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                atomicBoolean.set(true);
            }
        });
        builder.setPositiveButton(R.string.cancel, (DialogInterface.OnClickListener) null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        if (length == 1) {
            new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m141xfa42b5d6(atomicBoolean, alertDialogCreate, length);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: lambda$selectFriendWatchUid$7$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m142xa6648b56(AtomicBoolean atomicBoolean, DialogInterface dialogInterface, int i) {
        atomicBoolean.set(true);
        dialogInterface.dismiss();
        showFriendWatch(i);
    }

    /* JADX INFO: renamed from: lambda$selectFriendWatchUid$10$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m141xfa42b5d6(final AtomicBoolean atomicBoolean, final AlertDialog alertDialog, final int i) {
        TimeUtil.sleep(800L);
        if (atomicBoolean.get()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m143x9158d7d8(atomicBoolean, alertDialog, i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$selectFriendWatchUid$9$io-github-lazyimmortal-sesame-ui-MainActivity, reason: not valid java name */
    /* synthetic */ void m143x9158d7d8(AtomicBoolean atomicBoolean, AlertDialog alertDialog, int i) {
        if (atomicBoolean.get()) {
            return;
        }
        alertDialog.dismiss();
        showFriendWatch(i - 1);
    }

    private void showFriendWatch(int i) {
        UserEntity userEntity = this.userEntityArray[i + 1];
        String userId = userEntity.getUserId();
        ListDialog.showFriendWatch(this, getString(R.string.friend_watch) + "-" + userEntity.getShowName(), FriendWatch.getList(userId), FriendWatch.getDontCollectSet(userId));
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.ui.MainActivity$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$data$RunType;

        static {
            int[] iArr = new int[RunType.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$data$RunType = iArr;
            try {
                iArr[RunType.DISABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$data$RunType[RunType.MODEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$data$RunType[RunType.PACKAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSubTitle(RunType runType) {
        int i = AnonymousClass3.$SwitchMap$io$github$lazyimmortal$sesame$data$RunType[runType.ordinal()];
        if (i == 1) {
            setBaseTitle(ViewAppInfo.getAppTitle() + "【" + getString(R.string.disable) + "】");
            setBaseTitleTextColor(ContextCompat.getColor(this, R.color.textColorDisable));
            return;
        }
        if (i == 2) {
            setBaseTitle(ViewAppInfo.getAppTitle() + "【" + getString(R.string.activated) + "】");
            setBaseTitleTextColor(ContextCompat.getColor(this, R.color.textColorPrimary));
            return;
        }
        if (i != 3) {
            return;
        }
        setBaseTitle(ViewAppInfo.getAppTitle() + "【" + getString(R.string.loading) + "】");
        setBaseTitleTextColor(ContextCompat.getColor(this, R.color.textColorPrimary));
    }
}
