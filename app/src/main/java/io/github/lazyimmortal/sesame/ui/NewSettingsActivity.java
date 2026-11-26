package io.github.lazyimmortal.sesame.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.core.type.TypeReference;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.AppConfig;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelConfig;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.ui.dto.ModelDto;
import io.github.lazyimmortal.sesame.ui.dto.ModelFieldInfoDto;
import io.github.lazyimmortal.sesame.ui.dto.ModelFieldShowDto;
import io.github.lazyimmortal.sesame.ui.dto.ModelGroupDto;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.JsonUtil;
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
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class NewSettingsActivity extends BaseActivity {
    private static final Integer EXPORT_REQUEST_CODE = 1;
    private static final Integer IMPORT_REQUEST_CODE = 2;
    private Context context;
    private WebView webView;
    private String userId = null;
    private String userName = null;
    private Boolean debug = false;
    private final List<ModelDto> tabList = new ArrayList();
    private final List<ModelGroupDto> groupList = new ArrayList();
    private final Map<String, String> fieldJsonCache = new HashMap();
    private final CountDownLatch initLatch = new CountDownLatch(1);
    private final CountDownLatch configLatch = new CountDownLatch(1);
    private final CountDownLatch listLatch = new CountDownLatch(1);

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
            this.debug = Boolean.valueOf(intent.getBooleanExtra("debug", this.debug.booleanValue()));
        }
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.doInit();
            }
        }, "settings-init").start();
        setContentView(R.layout.activity_new_settings);
        if (this.userName != null) {
            setBaseSubtitle(getString(R.string.settings) + ": " + this.userName);
        }
        setBaseSubtitleTextColor(ContextCompat.getColor(this, R.color.textColorPrimary));
        this.context = this;
        WebView webView = (WebView) findViewById(R.id.webView);
        this.webView = webView;
        WebSettings settings = webView.getSettings();
        settings.setMixedContentMode(0);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setDefaultTextEncodingName(StandardCharsets.UTF_8.name());
        this.webView.setWebViewClient(new WebViewClient() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity.1
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                Uri url = webResourceRequest.getUrl();
                String scheme = url.getScheme();
                if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https") || scheme.equalsIgnoreCase("ws") || scheme.equalsIgnoreCase("wss")) {
                    webView2.loadUrl(url.toString());
                    return true;
                }
                webView2.stopLoading();
                ToastUtil.show(NewSettingsActivity.this.context, "Forbidden Scheme:\"" + scheme + "\"");
                return false;
            }
        });
        if (this.debug.booleanValue()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.webView.addJavascriptInterface(new WebViewCallback(), "HOOK");
        this.webView.loadUrl("file:///android_asset/web/index.html");
        this.webView.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doInit() {
        try {
            Model.initAllModel();
            UserIdMap.setCurrentUserId(this.userId);
            for (Map.Entry<String, ModelConfig> entry : ModelTask.getModelConfigMap().entrySet()) {
                ModelConfig value = entry.getValue();
                this.tabList.add(new ModelDto(entry.getKey(), value.getName(), value.getIcon(), null));
            }
            for (ModelGroup modelGroup : ModelGroup.values()) {
                this.groupList.add(new ModelGroupDto(modelGroup.getCode(), modelGroup.getName(), modelGroup.getIcon()));
            }
        } catch (Throwable th) {
            try {
                Log.printStackTrace(th);
            } catch (Throwable th2) {
                this.initLatch.countDown();
                throw th2;
            }
        }
        this.initLatch.countDown();
        try {
            UserIdMap.load(this.userId);
            ConfigV2.load(this.userId);
        } catch (Throwable th3) {
            try {
                Log.printStackTrace(th3);
            } catch (Throwable th4) {
                this.configLatch.countDown();
                throw th4;
            }
        }
        this.configLatch.countDown();
        try {
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
            AntMemberTaskListMap.load();
            PathThemeMapListMap.load();
        } catch (Throwable th5) {
            try {
                Log.printStackTrace(th5);
            } finally {
                this.listLatch.countDown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awaitInit() {
        try {
            this.initLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awaitConfig() {
        try {
            this.configLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awaitLists() {
        try {
            this.listLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
        } else {
            super.onBackPressed();
            save();
        }
    }

    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onBackPressed() {
            NewSettingsActivity.this.runOnUiThread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m147xa7e5f84c();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onBackPressed$0$io-github-lazyimmortal-sesame-ui-NewSettingsActivity$WebAppInterface, reason: not valid java name */
        /* synthetic */ void m147xa7e5f84c() {
            if (NewSettingsActivity.this.webView.canGoBack()) {
                NewSettingsActivity.this.webView.goBack();
            } else {
                NewSettingsActivity.this.finish();
            }
        }

        @JavascriptInterface
        public void onExit() {
            final NewSettingsActivity newSettingsActivity = NewSettingsActivity.this;
            newSettingsActivity.runOnUiThread(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    newSettingsActivity.finish();
                }
            });
        }
    }

    private class WebViewCallback {
        @JavascriptInterface
        public void Log(String str) {
        }

        private WebViewCallback() {
        }

        @JavascriptInterface
        public String getTabs() {
            NewSettingsActivity.this.awaitInit();
            return JsonUtil.toJsonString(NewSettingsActivity.this.tabList);
        }

        @JavascriptInterface
        public String getBuildInfo() {
            return "io.github.lazyimmortal.sesame:1.12";
        }

        @JavascriptInterface
        public String getUserId() {
            return NewSettingsActivity.this.userId;
        }

        @JavascriptInterface
        public String getGroup() {
            NewSettingsActivity.this.awaitInit();
            return JsonUtil.toJsonString(NewSettingsActivity.this.groupList);
        }

        @JavascriptInterface
        public String getModelByGroup(String str) {
            NewSettingsActivity.this.awaitInit();
            NewSettingsActivity.this.awaitConfig();
            Collection<ModelConfig> collectionValues = ModelTask.getGroupModelConfig(ModelGroup.getByCode(str)).values();
            ArrayList arrayList = new ArrayList();
            for (ModelConfig modelConfig : collectionValues) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<ModelField<?>> it = modelConfig.getFields().values().iterator();
                while (it.hasNext()) {
                    arrayList2.add(ModelFieldShowDto.toShowDto(it.next()));
                }
                arrayList.add(new ModelDto(modelConfig.getCode(), modelConfig.getName(), str, arrayList2));
            }
            return JsonUtil.toJsonString(arrayList);
        }

        @JavascriptInterface
        public String setModelByGroup(String str, String str2) {
            List<ModelFieldShowDto> modelFields;
            ModelField<?> modelField;
            NewSettingsActivity.this.awaitInit();
            NewSettingsActivity.this.awaitConfig();
            List<ModelDto> list = (List) JsonUtil.parseObject(str2, (TypeReference) new TypeReference<List<ModelDto>>() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity.WebViewCallback.1
            });
            Map<String, ModelConfig> groupModelConfig = ModelTask.getGroupModelConfig(ModelGroup.getByCode(str));
            NewSettingsActivity.this.fieldJsonCache.clear();
            for (ModelDto modelDto : list) {
                ModelConfig modelConfig = groupModelConfig.get(modelDto.getModelCode());
                if (modelConfig != null && (modelFields = modelDto.getModelFields()) != null) {
                    for (ModelFieldShowDto modelFieldShowDto : modelFields) {
                        if (modelFieldShowDto != null && (modelField = modelConfig.getModelField(modelFieldShowDto.getCode())) != null) {
                            modelField.setConfigValue(modelFieldShowDto.getConfigValue());
                        }
                    }
                }
            }
            return "SUCCESS";
        }

        @JavascriptInterface
        public String getModel(String str) {
            NewSettingsActivity.this.awaitInit();
            NewSettingsActivity.this.awaitConfig();
            ModelConfig modelConfig = ModelTask.getModelConfigMap().get(str);
            if (modelConfig == null) {
                return null;
            }
            ModelFields fields = modelConfig.getFields();
            ArrayList arrayList = new ArrayList();
            Iterator<ModelField<?>> it = fields.values().iterator();
            while (it.hasNext()) {
                arrayList.add(ModelFieldShowDto.toShowDto(it.next()));
            }
            return JsonUtil.toJsonString(arrayList);
        }

        @JavascriptInterface
        public String setModel(String str, String str2) {
            ModelField<?> modelField;
            NewSettingsActivity.this.awaitInit();
            NewSettingsActivity.this.awaitConfig();
            ModelConfig modelConfig = ModelTask.getModelConfigMap().get(str);
            if (modelConfig != null) {
                try {
                    ModelFields fields = modelConfig.getFields();
                    Map map = (Map) JsonUtil.parseObject(str2, (TypeReference) new TypeReference<Map<String, ModelFieldShowDto>>() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity.WebViewCallback.2
                    });
                    NewSettingsActivity.this.fieldJsonCache.clear();
                    for (Map.Entry entry : map.entrySet()) {
                        ModelFieldShowDto modelFieldShowDto = (ModelFieldShowDto) entry.getValue();
                        if (modelFieldShowDto != null && (modelField = fields.get(entry.getKey())) != null) {
                            modelField.setConfigValue(modelFieldShowDto.getConfigValue());
                        }
                    }
                    return "SUCCESS";
                } catch (Exception e) {
                    Log.printStackTrace(e);
                    return "FAILED";
                }
            }
            return "FAILED";
        }

        @JavascriptInterface
        public String getField(String str, String str2) {
            ModelField<?> modelField;
            NewSettingsActivity.this.awaitInit();
            NewSettingsActivity.this.awaitConfig();
            NewSettingsActivity.this.awaitLists();
            String str3 = str + "\u0000" + str2;
            String str4 = (String) NewSettingsActivity.this.fieldJsonCache.get(str3);
            if (str4 != null) {
                return str4;
            }
            ModelConfig modelConfig = ModelTask.getModelConfigMap().get(str);
            if (modelConfig == null || (modelField = modelConfig.getModelField(str2)) == null) {
                return null;
            }
            String jsonString = JsonUtil.toJsonString(ModelFieldInfoDto.toInfoDto(modelField));
            NewSettingsActivity.this.fieldJsonCache.put(str3, jsonString);
            return jsonString;
        }

        @JavascriptInterface
        public boolean isListsReady() {
            return NewSettingsActivity.this.initLatch.getCount() == 0 && NewSettingsActivity.this.configLatch.getCount() == 0 && NewSettingsActivity.this.listLatch.getCount() == 0;
        }

        @JavascriptInterface
        public String setField(String str, String str2, String str3) {
            NewSettingsActivity.this.awaitInit();
            ModelConfig modelConfig = ModelTask.getModelConfigMap().get(str);
            if (modelConfig != null) {
                try {
                    ModelField<?> modelField = modelConfig.getModelField(str2);
                    if (modelField != null) {
                        modelField.setConfigValue(str3);
                        NewSettingsActivity.this.fieldJsonCache.clear();
                        return "SUCCESS";
                    }
                    return "FAILED";
                } catch (Exception e) {
                    Log.printStackTrace(e);
                    return "FAILED";
                }
            }
            return "FAILED";
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 1, 1, "导出配置");
        menu.add(0, 2, 2, "导入配置");
        menu.add(0, 3, 3, "删除配置");
        menu.add(0, 4, 4, "单向好友");
        menu.add(0, 5, 5, "切换至旧UI");
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        awaitInit();
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
            new AlertDialog.Builder(this.context).setTitle("警告").setMessage("确认删除该配置？").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m146xc1d913(dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).create().show();
        } else if (itemId == 4) {
            ListDialog.show(this, "单向好友列表", AlipayUser.getList(new AlipayUser.Filter() { // from class: io.github.lazyimmortal.sesame.ui.NewSettingsActivity$$ExternalSyntheticLambda2
                @Override // io.github.lazyimmortal.sesame.entity.AlipayUser.Filter
                public final Boolean apply(UserEntity userEntity) {
                    return Boolean.valueOf(userEntity.getFriendStatus().intValue() != 1);
                }
            }), SelectModelFieldFunc.CC.newMapInstance(), false, ListDialog.ListType.SHOW);
        } else if (itemId == 5) {
            AppConfig.INSTANCE.setNewUI(false);
            if (AppConfig.save().booleanValue()) {
                Intent intent3 = new Intent(this, (Class<?>) SettingsActivity.class);
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

    /* JADX INFO: renamed from: lambda$onOptionsItemSelected$0$io-github-lazyimmortal-sesame-ui-NewSettingsActivity, reason: not valid java name */
    /* synthetic */ void m146xc1d913(DialogInterface dialogInterface, int i) {
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
        awaitInit();
        awaitConfig();
        awaitLists();
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
