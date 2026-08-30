package org.apache.cordova.engine;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import g8.c;
import g8.e;
import org.apache.cordova.t;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class SystemWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e f4501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f4502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SystemWebViewEngine f4503c;

    public SystemWebView(Context context) {
        this(context, null);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean boolOnDispatchKeyEvent = this.f4503c.f4508e.onDispatchKeyEvent(keyEvent);
        return boolOnDispatchKeyEvent != null ? boolOnDispatchKeyEvent.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public t getCordovaWebView() {
        SystemWebViewEngine systemWebViewEngine = this.f4503c;
        if (systemWebViewEngine != null) {
            return systemWebViewEngine.getCordovaWebView();
        }
        return null;
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f4502b = (c) webChromeClient;
        super.setWebChromeClient(webChromeClient);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        this.f4501a = (e) webViewClient;
        super.setWebViewClient(webViewClient);
    }

    public SystemWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
