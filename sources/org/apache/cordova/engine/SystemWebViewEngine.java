package org.apache.cordova.engine;

import android.app.AlertDialog;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import e5.e;
import g8.a;
import g8.c;
import org.apache.cordova.NativeToJsMessageQueue$EvalBridgeMode;
import org.apache.cordova.NativeToJsMessageQueue$OnlineEventsBridgeMode;
import org.apache.cordova.d0;
import org.apache.cordova.h;
import org.apache.cordova.i0;
import org.apache.cordova.l0;
import org.apache.cordova.m;
import org.apache.cordova.q;
import org.apache.cordova.s;
import org.apache.cordova.t;
import org.apache.cordova.u;
import org.apache.cordova.v;
import q2.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class SystemWebViewEngine implements v {
    public static final String TAG = "SystemWebViewEngine";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SystemWebView f4504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f4505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q f4506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h f4507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public u f4508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public t f4509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public m f4510g;
    public l0 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public s f4511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d f4512j;

    public SystemWebViewEngine(Context context, q qVar) {
        this(new SystemWebView(context), qVar);
    }

    @Override // org.apache.cordova.v
    public boolean canGoBack() {
        return this.f4504a.canGoBack();
    }

    @Override // org.apache.cordova.v
    public void clearCache() {
        this.f4504a.clearCache(true);
    }

    @Override // org.apache.cordova.v
    public void clearHistory() {
        this.f4504a.clearHistory();
    }

    @Override // org.apache.cordova.v
    public void destroy() {
        SystemWebView systemWebView = this.f4504a;
        AlertDialog alertDialog = (AlertDialog) systemWebView.f4502b.f2875d.f1991c;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
        systemWebView.destroy();
        if (this.f4512j != null) {
            try {
                systemWebView.getContext().unregisterReceiver(this.f4512j);
            } catch (Exception e9) {
                Log.e(TAG, "Error unregistering configuration receiver: " + e9.getMessage(), e9);
            }
        }
    }

    @Override // org.apache.cordova.v
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        this.f4504a.evaluateJavascript(str, valueCallback);
    }

    @Override // org.apache.cordova.v
    public d0 getCookieManager() {
        return this.f4505b;
    }

    public t getCordovaWebView() {
        return this.f4509f;
    }

    @Override // org.apache.cordova.v
    public String getUrl() {
        return this.f4504a.getUrl();
    }

    @Override // org.apache.cordova.v
    public View getView() {
        return this.f4504a;
    }

    @Override // org.apache.cordova.v
    public boolean goBack() {
        SystemWebView systemWebView = this.f4504a;
        if (!systemWebView.canGoBack()) {
            return false;
        }
        systemWebView.goBack();
        return true;
    }

    @Override // org.apache.cordova.v
    public void init(t tVar, m mVar, u uVar, s sVar, l0 l0Var, i0 i0Var) {
        if (this.f4510g != null) {
            throw new IllegalStateException();
        }
        if (this.f4506c == null) {
            this.f4506c = tVar.getPreferences();
        }
        this.f4509f = tVar;
        this.f4510g = mVar;
        this.f4508e = uVar;
        this.f4511i = sVar;
        this.h = l0Var;
        SystemWebView systemWebView = this.f4504a;
        systemWebView.f4503c = this;
        if (systemWebView.f4501a == null) {
            systemWebView.setWebViewClient(new g8.e(this));
        }
        if (systemWebView.f4502b == null) {
            systemWebView.setWebChromeClient(new c(this));
        }
        SystemWebView systemWebView2 = this.f4504a;
        systemWebView2.setInitialScale(0);
        systemWebView2.setVerticalScrollBarEnabled(false);
        WebSettings settings = systemWebView2.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        String str = Build.MANUFACTURER;
        settings.setSaveFormData(false);
        if (this.f4506c.a("AndroidInsecureFileModeEnabled", false)) {
            settings.setAllowFileAccess(true);
            settings.setAllowUniversalAccessFromFileURLs(true);
        }
        settings.setMediaPlaybackRequiresUserGesture(false);
        String path = systemWebView2.getContext().getApplicationContext().getDir("database", 0).getPath();
        settings.setDatabaseEnabled(true);
        if ((systemWebView2.getContext().getApplicationContext().getApplicationInfo().flags & 2) != 0) {
            try {
                WebView.setWebContentsDebuggingEnabled(true);
            } catch (IllegalArgumentException e9) {
                e9.printStackTrace();
            }
        }
        settings.setGeolocationDatabasePath(path);
        settings.setDomStorageEnabled(true);
        settings.setGeolocationEnabled(true);
        String userAgentString = settings.getUserAgentString();
        String strB = this.f4506c.b("OverrideUserAgent", null);
        if (strB != null) {
            settings.setUserAgentString(strB);
        } else {
            String strB2 = this.f4506c.b("AppendUserAgent", null);
            if (strB2 != null) {
                settings.setUserAgentString(userAgentString + " " + strB2);
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        if (this.f4512j == null) {
            this.f4512j = new d(3, settings);
            systemWebView2.getContext().registerReceiver(this.f4512j, intentFilter);
        }
        i0Var.f4529c.add(new NativeToJsMessageQueue$OnlineEventsBridgeMode(new k1.h(11, this)));
        i0Var.f4529c.add(new NativeToJsMessageQueue$EvalBridgeMode(this, mVar));
        h hVar = new h();
        hVar.f4524c = -1;
        hVar.f4522a = l0Var;
        hVar.f4523b = i0Var;
        this.f4507d = hVar;
        this.f4504a.addJavascriptInterface(new a(hVar), "_cordovaNative");
    }

    @Override // org.apache.cordova.v
    public void loadUrl(String str, boolean z5) {
        this.f4504a.loadUrl(str);
    }

    @Override // org.apache.cordova.v
    public void setPaused(boolean z5) {
        SystemWebView systemWebView = this.f4504a;
        if (z5) {
            systemWebView.onPause();
            systemWebView.pauseTimers();
        } else {
            systemWebView.onResume();
            systemWebView.resumeTimers();
        }
    }

    public void stopLoading() {
        this.f4504a.stopLoading();
    }

    public SystemWebViewEngine(SystemWebView systemWebView) {
        this(systemWebView, (q) null);
    }

    public SystemWebViewEngine(SystemWebView systemWebView, q qVar) {
        this.f4506c = qVar;
        this.f4504a = systemWebView;
        e eVar = new e(24);
        CookieManager cookieManager = CookieManager.getInstance();
        CookieManager.setAcceptFileSchemeCookies(true);
        cookieManager.setAcceptThirdPartyCookies(systemWebView, true);
        this.f4505b = eVar;
    }
}
