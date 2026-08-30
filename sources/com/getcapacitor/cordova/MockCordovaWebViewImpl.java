package com.getcapacitor.cordova;

import a2.i;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.fragment.app.e;
import com.getcapacitor.d;
import java.util.List;
import java.util.Map;
import org.apache.cordova.d0;
import org.apache.cordova.f0;
import org.apache.cordova.g0;
import org.apache.cordova.i0;
import org.apache.cordova.j0;
import org.apache.cordova.l0;
import org.apache.cordova.m;
import org.apache.cordova.m0;
import org.apache.cordova.q;
import org.apache.cordova.s;
import org.apache.cordova.t;
import org.apache.cordova.v;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MockCordovaWebViewImpl implements t {
    private Context context;
    private CapacitorCordovaCookieManager cookieManager;
    private m cordova;
    private boolean hasPausedEver;
    private i0 nativeToJsMessageQueue;
    private l0 pluginManager;
    private q preferences;
    private s resourceApi;
    private WebView webView;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class CapacitorEvalBridgeMode extends f0 {
        private final m cordova;
        private final WebView webView;

        public CapacitorEvalBridgeMode(WebView webView, m mVar) {
            this.webView = webView;
            this.cordova = mVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNativeToJsMessageAvailable$0(i0 i0Var) {
            String strE = i0Var.e();
            if (strE != null) {
                this.webView.evaluateJavascript(strE, null);
            }
        }

        @Override // org.apache.cordova.f0
        public void onNativeToJsMessageAvailable(i0 i0Var) {
            this.cordova.getActivity().runOnUiThread(new i(this, 6, i0Var));
        }
    }

    public MockCordovaWebViewImpl(Context context) {
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$eval$0(String str, ValueCallback valueCallback) {
        this.webView.evaluateJavascript(str, valueCallback);
    }

    @Override // org.apache.cordova.t
    public boolean backHistory() {
        return false;
    }

    public boolean canGoBack() {
        return false;
    }

    @Override // org.apache.cordova.t
    public void clearCache() {
    }

    public void eval(String str, ValueCallback<String> valueCallback) {
        new Handler(this.context.getMainLooper()).post(new e(this, str, valueCallback, 1));
    }

    @Override // org.apache.cordova.t
    public Context getContext() {
        return this.webView.getContext();
    }

    public d0 getCookieManager() {
        return this.cookieManager;
    }

    public v getEngine() {
        return null;
    }

    @Override // org.apache.cordova.t
    public l0 getPluginManager() {
        return this.pluginManager;
    }

    @Override // org.apache.cordova.t
    public q getPreferences() {
        return this.preferences;
    }

    public s getResourceApi() {
        return this.resourceApi;
    }

    public String getUrl() {
        return this.webView.getUrl();
    }

    public View getView() {
        return this.webView;
    }

    @Override // org.apache.cordova.t
    public void handleDestroy() {
        if (isInitialized()) {
            this.pluginManager.e();
        }
    }

    @Override // org.apache.cordova.t
    public void handlePause(boolean z5) {
        if (isInitialized()) {
            this.hasPausedEver = true;
            this.pluginManager.g(z5);
            triggerDocumentEvent("pause");
            if (z5) {
                return;
            }
            setPaused(true);
        }
    }

    @Override // org.apache.cordova.t
    public void handleResume(boolean z5) {
        if (isInitialized()) {
            setPaused(false);
            this.pluginManager.h(z5);
            if (this.hasPausedEver) {
                triggerDocumentEvent("resume");
            }
        }
    }

    @Override // org.apache.cordova.t
    public void handleStart() {
        if (isInitialized()) {
            this.pluginManager.i();
        }
    }

    @Override // org.apache.cordova.t
    public void handleStop() {
        if (isInitialized()) {
            this.pluginManager.j();
        }
    }

    public void init(m mVar, List<j0> list, q qVar) {
        this.cordova = mVar;
        this.preferences = qVar;
        l0 l0Var = new l0(this, this.cordova, list);
        this.pluginManager = l0Var;
        this.resourceApi = new s(this.context, l0Var);
        this.pluginManager.d();
    }

    @Override // org.apache.cordova.t
    public boolean isButtonPlumbedToJs(int i6) {
        return false;
    }

    @Deprecated
    public boolean isCustomViewShowing() {
        return false;
    }

    public boolean isInitialized() {
        return this.cordova != null;
    }

    public void loadUrl(String str) {
        loadUrlIntoView(str, true);
    }

    public void loadUrlIntoView(String str, boolean z5) {
        if (str.equals("about:blank") || str.startsWith("javascript:")) {
            this.webView.loadUrl(str);
        }
    }

    @Override // org.apache.cordova.t
    public void onNewIntent(Intent intent) {
        l0 l0Var = this.pluginManager;
        if (l0Var != null) {
            l0Var.f(intent);
        }
    }

    public Object postMessage(String str, Object obj) {
        return this.pluginManager.k(str, obj);
    }

    @Deprecated
    public void sendJavascript(String str) {
        i0 i0Var = this.nativeToJsMessageQueue;
        i0Var.getClass();
        i0Var.b(new g0(str));
    }

    @Override // org.apache.cordova.t
    public void sendPluginResult(m0 m0Var, String str) {
        this.nativeToJsMessageQueue.a(m0Var, str);
    }

    public void setPaused(boolean z5) {
        if (z5) {
            this.webView.onPause();
            this.webView.pauseTimers();
        } else {
            this.webView.onResume();
            this.webView.resumeTimers();
        }
    }

    public void triggerDocumentEvent(String str) {
        eval(x.g("window.Capacitor.triggerEvent('", str, "', 'document');"), new d(2));
    }

    @Deprecated
    public void clearCache(boolean z5) {
    }

    public void init(m mVar, List<j0> list, q qVar, WebView webView) {
        this.cordova = mVar;
        this.webView = webView;
        this.preferences = qVar;
        l0 l0Var = new l0(this, this.cordova, list);
        this.pluginManager = l0Var;
        this.resourceApi = new s(this.context, l0Var);
        i0 i0Var = new i0();
        this.nativeToJsMessageQueue = i0Var;
        i0Var.f4529c.add(new CapacitorEvalBridgeMode(webView, this.cordova));
        this.nativeToJsMessageQueue.f(0);
        this.cookieManager = new CapacitorCordovaCookieManager(webView);
        this.pluginManager.d();
    }

    @Override // org.apache.cordova.t
    public void clearHistory() {
    }

    @Override // org.apache.cordova.t
    @Deprecated
    public void hideCustomView() {
    }

    public void stopLoading() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$triggerDocumentEvent$1(String str) {
    }

    @Override // org.apache.cordova.t
    public void setButtonPlumbedToJs(int i6, boolean z5) {
    }

    @Override // org.apache.cordova.t
    @Deprecated
    public void showCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
    }

    @Override // org.apache.cordova.t
    public void showWebPage(String str, boolean z5, boolean z8, Map<String, Object> map) {
    }
}
