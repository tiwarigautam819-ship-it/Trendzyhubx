package com.getcapacitor;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class WebViewListener {
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return false;
    }

    public void onPageLoaded(WebView webView) {
    }

    public void onPageStarted(WebView webView) {
    }

    public void onReceivedError(WebView webView) {
    }

    public void onReceivedHttpError(WebView webView) {
    }
}
