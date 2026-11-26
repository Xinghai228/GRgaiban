package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public class MyWebView extends WebView {
    public MyWebView(Context context) {
        super(context);
        defInit();
    }

    public MyWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        defInit();
    }

    public MyWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        defInit();
    }

    public MyWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        defInit();
    }

    private void defInit() {
        getSettings().setSupportZoom(true);
        getSettings().setBuiltInZoomControls(true);
        getSettings().setDisplayZoomControls(false);
        getSettings().setUseWideViewPort(false);
        getSettings().setUseWideViewPort(true);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setAllowFileAccess(true);
        setWebViewClient(new WebViewClient() { // from class: io.github.lazyimmortal.sesame.ui.MyWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (str.endsWith(".log")) {
                    MyWebView.this.postDelayed(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.MyWebView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Thread.interrupted()) {
                                return;
                            }
                            if (MyWebView.this.getContentHeight() == 0) {
                                MyWebView.this.postDelayed(this, 100L);
                            } else {
                                MyWebView.this.scrollToBottom();
                            }
                        }
                    }, 500L);
                }
            }
        });
    }

    public void scrollToBottom() {
        scrollTo(0, computeVerticalScrollRange());
    }
}
