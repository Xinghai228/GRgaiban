package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ViewAppInfo;
import io.github.lazyimmortal.sesame.util.LanguageUtil;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends AppCompatActivity {
    private Toolbar toolbar;
    private WatermarkView watermarkView;

    private void addWatermark() {
    }

    public String getBaseSubtitle() {
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewAppInfo.init(getApplicationContext());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        addWatermark();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        Toolbar toolbar = (Toolbar) findViewById(R.id.x_toolbar);
        this.toolbar = toolbar;
        toolbar.setTitle(getBaseTitle());
        this.toolbar.setSubtitle(getBaseSubtitle());
        setSupportActionBar(this.toolbar);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(LanguageUtil.setLocal(context));
    }

    public String getBaseTitle() {
        return ViewAppInfo.getAppTitle();
    }

    public void setBaseTitle(String str) {
        this.toolbar.setTitle(str);
    }

    public void setBaseSubtitle(String str) {
        this.toolbar.setSubtitle(str);
    }

    public void setBaseTitleTextColor(int i) {
        this.toolbar.setTitleTextColor(i);
    }

    public void setBaseSubtitleTextColor(int i) {
        this.toolbar.setSubtitleTextColor(i);
    }
}
