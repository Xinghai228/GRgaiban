package io.github.lazyimmortal.sesame.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.AppConfig;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelConfig;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ViewAppInfo;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.LibraryUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.ToastUtil;
import io.github.lazyimmortal.sesame.util.idMap.AnimalIdMap;
import io.github.lazyimmortal.sesame.util.idMap.AntDodoTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmChickenChefTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDoFarmTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDrawMachineTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestHuntTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestVitalityTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntMemberTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanAntiepTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanFishBlackListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardDrawTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntSportsTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntStallTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.BeachIdMap;
import io.github.lazyimmortal.sesame.util.idMap.CooperationIdMap;
import io.github.lazyimmortal.sesame.util.idMap.FarmOrnamentsIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ForestHuntIdMap;
import io.github.lazyimmortal.sesame.util.idMap.GameCenterMallItemMap;
import io.github.lazyimmortal.sesame.util.idMap.GoldenBeansTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MarathonIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberBenefitIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberCreditSesameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MonopolyTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.NewAncientTreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.PathThemeMapListMap;
import io.github.lazyimmortal.sesame.util.idMap.PlantSceneIdMap;
import io.github.lazyimmortal.sesame.util.idMap.PromiseSimpleTemplateIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ReserveIdMap;
import io.github.lazyimmortal.sesame.util.idMap.TreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import io.github.lazyimmortal.sesame.util.idMap.VitalityBenefitIdMap;
import io.github.lazyimmortal.sesame.util.idMap.rpcRequestMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends BaseActivity {
    private static final Integer EXPORT_REQUEST_CODE = 1;
    private static final Integer IMPORT_REQUEST_CODE = 2;
    private Context context;
    private Boolean isDraw = false;
    private ScrollView svTabs;
    private TabHost tabHost;
    private String userId;
    private String userName;

    @Override // io.github.lazyimmortal.sesame.ui.BaseActivity
    public String getBaseSubtitle() {
        return getString(R.string.settings);
    }

    @Override // io.github.lazyimmortal.sesame.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.userId = null;
        this.userName = null;
        Intent intent = getIntent();
        if (intent != null) {
            this.userId = intent.getStringExtra("userId");
            this.userName = intent.getStringExtra("userName");
        }
        Model.initAllModel();
        UserIdMap.setCurrentUserId(this.userId);
        UserIdMap.load(this.userId);
        CooperationIdMap.load(this.userId);
        VitalityBenefitIdMap.load(this.userId);
        GameCenterMallItemMap.load(this.userId);
        FarmOrnamentsIdMap.load(this.userId);
        MemberBenefitIdMap.load(this.userId);
        PromiseSimpleTemplateIdMap.load(this.userId);
        TreeIdMap.load();
        ReserveIdMap.load();
        AnimalIdMap.load();
        MarathonIdMap.load();
        NewAncientTreeIdMap.load();
        BeachIdMap.load();
        PlantSceneIdMap.load();
        IconRegistry.load();
        IconRegistry.prefetch();
        rpcRequestMap.load();
        ForestHuntIdMap.load();
        MemberCreditSesameTaskListMap.load();
        AntForestVitalityTaskListMap.load();
        AntForestHuntTaskListMap.load();
        AntFarmDoFarmTaskListMap.load();
        AntFarmDrawMachineTaskListMap.load();
        AntFarmChickenChefTaskListMap.load();
        AntDodoTaskListMap.load();
        AntOceanAntiepTaskListMap.load();
        AntOceanFishBlackListMap.load();
        AntOrchardTaskListMap.load();
        AntOrchardDrawTaskListMap.load();
        GoldenBeansTaskListMap.load();
        MonopolyTaskListMap.load();
        AntStallTaskListMap.load();
        AntSportsTaskListMap.load();
        PathThemeMapListMap.load();
        AntMemberTaskListMap.load();
        ConfigV2.load(this.userId);
        setContentView(R.layout.activity_settings);
        if (this.userName != null) {
            setBaseSubtitle(getString(R.string.settings) + ": " + this.userName);
        }
        setBaseSubtitleTextColor(ContextCompat.getColor(this, R.color.textColorPrimary));
        this.context = this;
        this.tabHost = (TabHost) findViewById(R.id.tab_settings);
        this.svTabs = (ScrollView) findViewById(R.id.sv_tabs);
        this.tabHost.setup();
        for (Map.Entry<String, ModelConfig> entry : ModelTask.getModelConfigMap().entrySet()) {
            String key = entry.getKey();
            ModelConfig value = entry.getValue();
            final ModelFields fields = value.getFields();
            TabHost tabHost = this.tabHost;
            tabHost.addTab(tabHost.newTabSpec(key).setIndicator(value.getName()).setContent(new TabHost.TabContentFactory() { // from class: io.github.lazyimmortal.sesame.ui.SettingsActivity.1
                @Override // android.widget.TabHost.TabContentFactory
                public View createTabContent(String str) {
                    LinearLayout linearLayout = new LinearLayout(SettingsActivity.this.context);
                    linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    linearLayout.setGravity(1);
                    linearLayout.setOrientation(1);
                    Iterator<ModelField<?>> it = fields.values().iterator();
                    while (it.hasNext()) {
                        View view = it.next().getView(SettingsActivity.this.context);
                        if (view != null) {
                            linearLayout.addView(view);
                        }
                    }
                    return linearLayout;
                }
            }));
        }
        this.tabHost.setCurrentTab(0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        save();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.isDraw.booleanValue() || !z) {
            return;
        }
        int width = this.svTabs.getWidth();
        TabWidget tabWidget = this.tabHost.getTabWidget();
        int childCount = tabWidget.getChildCount();
        for (int i = 0; i < childCount; i++) {
            tabWidget.getChildAt(i).getLayoutParams().width = width;
        }
        tabWidget.requestLayout();
        this.isDraw = true;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 1, 1, "导出配置");
        menu.add(0, 2, 2, "导入配置");
        menu.add(0, 3, 3, "删除配置");
        menu.add(0, 4, 4, "单向好友");
        if (!"TEST".equals(ViewAppInfo.getAppVersion()) && LibraryUtil.loadLibrary(FileUtil.CONFIG_DIRECTORY_NAME).booleanValue()) {
            menu.add(0, 5, 5, "切换至新UI");
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.TITLE", "[" + this.userName + "]-config_v2.json");
            startActivityForResult(intent, EXPORT_REQUEST_CODE.intValue());
        } else if (itemId == 2) {
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.addCategory("android.intent.category.OPENABLE");
            intent2.setType("*/*");
            intent2.putExtra("android.intent.extra.TITLE", "config_v2.json");
            startActivityForResult(intent2, IMPORT_REQUEST_CODE.intValue());
        } else if (itemId == 3) {
            new AlertDialog.Builder(this.context).setTitle("警告").setMessage("确认删除该配置？").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.SettingsActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m148xf1b81cf1(dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.SettingsActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).create().show();
        } else if (itemId == 4) {
            ListDialog.show(this, "单向好友列表", AlipayUser.getList(new AlipayUser.Filter() { // from class: io.github.lazyimmortal.sesame.ui.SettingsActivity$$ExternalSyntheticLambda2
                @Override // io.github.lazyimmortal.sesame.entity.AlipayUser.Filter
                public final Boolean apply(UserEntity userEntity) {
                    return Boolean.valueOf(userEntity.getFriendStatus().intValue() != 1);
                }
            }), SelectModelFieldFunc.CC.newMapInstance(), false, ListDialog.ListType.SHOW);
        } else if (itemId == 5) {
            AppConfig.INSTANCE.setNewUI(true);
            if (AppConfig.save().booleanValue()) {
                Intent intent3 = new Intent(this, (Class<?>) NewSettingsActivity.class);
                intent3.putExtra("userId", this.userId);
                intent3.putExtra("userName", this.userName);
                finish();
                startActivity(intent3);
            } else {
                ToastUtil.show(this, "切换失败");
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: renamed from: lambda$onOptionsItemSelected$0$io-github-lazyimmortal-sesame-ui-SettingsActivity, reason: not valid java name */
    /* synthetic */ void m148xf1b81cf1(DialogInterface dialogInterface, int i) {
        File userConfigDirectoryFile;
        if (StringUtil.isEmpty(this.userId)) {
            userConfigDirectoryFile = FileUtil.getDefaultConfigV2File();
        } else {
            userConfigDirectoryFile = FileUtil.getUserConfigDirectoryFile(this.userId);
        }
        if (FileUtil.deleteFile(userConfigDirectoryFile).booleanValue()) {
            ToastUtil.show(this, "配置删除成功");
        } else {
            ToastUtil.show(this, "配置删除失败");
        }
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        File configV2File;
        File configV2File2;
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            return;
        }
        if (i == EXPORT_REQUEST_CODE.intValue()) {
            if (intent.getData() != null) {
                try {
                    if (StringUtil.isEmpty(this.userId)) {
                        configV2File2 = FileUtil.getDefaultConfigV2File();
                    } else {
                        configV2File2 = FileUtil.getConfigV2File(this.userId);
                    }
                    if (FileUtil.streamTo(new FileInputStream(configV2File2), getContentResolver().openOutputStream(intent.getData()))) {
                        ToastUtil.show(this, "导出成功！");
                        return;
                    } else {
                        ToastUtil.show(this, "导出失败！");
                        return;
                    }
                } catch (IOException e) {
                    Log.printStackTrace(e);
                    ToastUtil.show(this, "导出失败！");
                    return;
                }
            }
            return;
        }
        if (i != IMPORT_REQUEST_CODE.intValue() || intent.getData() == null) {
            return;
        }
        try {
            if (StringUtil.isEmpty(this.userId)) {
                configV2File = FileUtil.getDefaultConfigV2File();
            } else {
                configV2File = FileUtil.getConfigV2File(this.userId);
            }
            if (FileUtil.streamTo(getContentResolver().openInputStream(intent.getData()), new FileOutputStream(configV2File))) {
                ToastUtil.show(this, "导入成功！");
                if (!StringUtil.isEmpty(this.userId)) {
                    try {
                        Intent intent2 = new Intent("com.eg.android.AlipayGphone.sesame.restart");
                        intent2.putExtra("userId", this.userId);
                        sendBroadcast(intent2);
                    } catch (Throwable th) {
                        Log.printStackTrace(th);
                    }
                }
                Intent intent3 = getIntent();
                finish();
                startActivity(intent3);
                return;
            }
            ToastUtil.show(this, "导入失败！");
        } catch (IOException e2) {
            Log.printStackTrace(e2);
            ToastUtil.show(this, "导入失败！");
        }
    }

    private void save() {
        if (ConfigV2.isModify(this.userId).booleanValue() && ConfigV2.save(this.userId, false).booleanValue()) {
            ToastUtil.show(this, "保存成功！");
            if (!StringUtil.isEmpty(this.userId)) {
                try {
                    Intent intent = new Intent("com.eg.android.AlipayGphone.sesame.restart");
                    intent.putExtra("userId", this.userId);
                    sendBroadcast(intent);
                } catch (Throwable th) {
                    Log.printStackTrace(th);
                }
            }
        }
        if (StringUtil.isEmpty(this.userId)) {
            return;
        }
        UserIdMap.save(this.userId);
    }
}
