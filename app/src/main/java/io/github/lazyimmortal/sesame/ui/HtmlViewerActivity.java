package io.github.lazyimmortal.sesame.ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.ToastUtil;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class HtmlViewerActivity extends BaseActivity {
    Boolean canClear;
    MyWebView mWebView;
    ProgressBar pgb;
    Uri uri;

    @Override // io.github.lazyimmortal.sesame.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_html_viewer);
        setBaseSubtitleTextColor(ContextCompat.getColor(this, R.color.textColorPrimary));
        this.mWebView = (MyWebView) findViewById(R.id.mwv_webview);
        this.pgb = (ProgressBar) findViewById(R.id.pgb_webview);
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: io.github.lazyimmortal.sesame.ui.HtmlViewerActivity.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                HtmlViewerActivity.this.pgb.setProgress(i);
                if (i < 100) {
                    HtmlViewerActivity.this.setBaseSubtitle("Loading...");
                    HtmlViewerActivity.this.pgb.setVisibility(0);
                } else {
                    HtmlViewerActivity htmlViewerActivity = HtmlViewerActivity.this;
                    htmlViewerActivity.setBaseSubtitle(htmlViewerActivity.mWebView.getTitle());
                    HtmlViewerActivity.this.pgb.setVisibility(8);
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Intent intent = getIntent();
        WebSettings settings = this.mWebView.getSettings();
        if (intent != null) {
            if (intent.getBooleanExtra("nextLine", true)) {
                settings.setTextZoom(85);
                settings.setUseWideViewPort(false);
            } else {
                settings.setTextZoom(100);
                settings.setUseWideViewPort(true);
            }
            Uri data = intent.getData();
            this.uri = data;
            if (data != null) {
                this.mWebView.loadUrl(data.toString());
            }
            this.canClear = Boolean.valueOf(intent.getBooleanExtra("canClear", false));
            return;
        }
        settings.setTextZoom(100);
        settings.setUseWideViewPort(true);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 1, 1, getString(R.string.export_file));
        if (this.canClear.booleanValue()) {
            menu.add(0, 2, 2, getString(R.string.clear_file));
        }
        menu.add(0, 3, 3, getString(R.string.open_with_other_browser));
        menu.add(0, 4, 4, getString(R.string.copy_the_url));
        menu.add(0, 5, 5, getString(R.string.scroll_to_top));
        menu.add(0, 6, 6, getString(R.string.scroll_to_bottom));
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String path;
        File fileExportFile;
        String path2;
        switch (menuItem.getItemId()) {
            case 1:
                Uri uri = this.uri;
                if (uri != null && (path = uri.getPath()) != null && (fileExportFile = FileUtil.exportFile(new File(path))) != null) {
                    ToastUtil.show(this, "文件已导出到: " + fileExportFile.getPath());
                    break;
                }
                break;
            case 2:
                Uri uri2 = this.uri;
                if (uri2 != null && (path2 = uri2.getPath()) != null && FileUtil.clearFile(new File(path2)).booleanValue()) {
                    ToastUtil.show(this, "文件已清空");
                    this.mWebView.reload();
                    break;
                }
                break;
            case 3:
                Uri uri3 = this.uri;
                if (uri3 != null) {
                    String scheme = uri3.getScheme();
                    if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                        startActivity(new Intent("android.intent.action.VIEW", this.uri));
                    } else if ("file".equalsIgnoreCase(scheme)) {
                        ToastUtil.show(this, "该文件不支持用浏览器打开");
                    } else {
                        ToastUtil.show(this, "不支持用浏览器打开");
                    }
                }
                break;
            case 4:
                ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.mWebView.getUrl()));
                ToastUtil.show(this, getString(R.string.copy_success));
                break;
            case 5:
                this.mWebView.scrollTo(0, 0);
                break;
            case 6:
                this.mWebView.scrollToBottom();
                break;
        }
        return true;
    }
}
