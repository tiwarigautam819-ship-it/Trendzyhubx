package com.engagelab.privates.common;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.common.utils.WebViewUtils;
import com.engagelab.privates.inapp.business.helper.WebInterface;
import com.engagelab.privates.push.api.InAppMessage;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class j0 extends f0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public WebView f1201i;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            u.a().f(j0.this.f1153e);
        }
    }

    public j0(Context context, d0 d0Var, InAppMessage inAppMessage, int i6) {
        super(context, d0Var, inAppMessage, i6);
    }

    @Override // com.engagelab.privates.common.f0
    public View d() {
        return this.f1201i;
    }

    @Override // com.engagelab.privates.common.f0
    public boolean f() {
        InAppMessage inAppMessage;
        if (this.f1153e == null || (inAppMessage = this.f1151c) == null) {
            MTCommonLog.w("BaseInAppWrapper", "unexpected error param is null");
            return false;
        }
        try {
            String content = inAppMessage.getContent();
            MTCommonLog.w("BaseInAppWrapper", "content= " + content);
            if (TextUtils.isEmpty(content)) {
                return false;
            }
            if (this.f1201i == null) {
                WebView webView = new WebView(this.f1153e);
                this.f1201i = webView;
                webView.setBackgroundColor(this.f1153e.getResources().getColor(R.color.transparent));
            }
            this.f1201i.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.f1201i.setHorizontalScrollBarEnabled(false);
            this.f1201i.setVerticalScrollBarEnabled(false);
            this.f1201i.setScrollbarFadingEnabled(true);
            this.f1201i.setScrollBarStyle(33554432);
            WebSettings settings = this.f1201i.getSettings();
            WebViewUtils.webSettings(settings);
            WebViewUtils.fixSecure(this.f1201i);
            WebViewUtils.setAllowFileAccess(settings);
            MTCommonLog.d("BaseInAppWrapper", "Android sdk version greater than or equal to 17, Java—Js interact by annotation!");
            k();
            this.f1201i.setWebViewClient(new a());
            this.f1201i.loadUrl("file://" + content);
            MTCommonLog.d("BaseInAppWrapper", "wb inflate completed, content: " + content);
            return true;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("wb inflate failed, "), "BaseInAppWrapper");
            return false;
        }
    }

    @Override // com.engagelab.privates.common.f0
    public void h() {
        try {
            WebView webView = this.f1201i;
            if (webView != null) {
                ViewParent parent = webView.getParent();
                if (parent != null) {
                    try {
                        MTCommonLog.d("BaseInAppWrapper", "wb parent view " + parent);
                        ((ViewGroup) parent).removeView(this.f1201i);
                    } catch (Throwable unused) {
                        MTCommonLog.w("BaseInAppWrapper", "release - parent not viewGroup");
                    }
                }
                this.f1201i.getSettings().setJavaScriptEnabled(false);
                this.f1201i.clearCache(true);
                this.f1201i.clearHistory();
                this.f1201i.clearView();
                this.f1201i.removeAllViews();
                this.f1201i.clearSslPreferences();
                this.f1201i.destroy();
                this.f1201i = null;
            }
            b();
            MTCommonLog.d("BaseInAppWrapper", "wb release completed.");
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("wb destroy failed. error: "), "BaseInAppWrapper");
        }
    }

    public final void k() {
        try {
            Utils.invokeMethod(this.f1201i, "addJavascriptInterface", new Class[]{Object.class, String.class}, new Object[]{new WebInterface(this), "EngageLab"});
        } catch (Throwable th) {
            MTCommonLog.e("BaseInAppWrapper", "addJavascriptInterface failed:" + th.toString());
        }
    }

    @Override // com.engagelab.privates.common.f0
    public void a() {
    }

    @Override // com.engagelab.privates.common.f0
    public void g() {
    }

    @Override // com.engagelab.privates.common.f0
    public void j() {
    }
}
