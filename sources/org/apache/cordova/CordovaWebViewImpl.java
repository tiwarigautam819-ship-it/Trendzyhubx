package org.apache.cordova;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.cordova.engine.SystemWebViewEngine;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CordovaWebViewImpl implements t {
    public static final String TAG = "CordovaWebViewImpl";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l0 f4460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f4461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m f4462c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s f4464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public q f4465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CoreAndroid f4466g;
    public i0 h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f4469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a0 f4470l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public WebChromeClient.CustomViewCallback f4471m;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4463d = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EngineClient f4467i = new EngineClient();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final HashSet f4472n = new HashSet();

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class EngineClient implements u {
        public EngineClient() {
        }

        @Override // org.apache.cordova.u
        public void clearLoadTimeoutTimer() {
            CordovaWebViewImpl.this.f4463d++;
        }

        @Override // org.apache.cordova.u
        public Boolean onDispatchKeyEvent(KeyEvent keyEvent) {
            CordovaWebViewImpl cordovaWebViewImpl = CordovaWebViewImpl.this;
            v vVar = cordovaWebViewImpl.f4461b;
            HashSet hashSet = cordovaWebViewImpl.f4472n;
            int keyCode = keyEvent.getKeyCode();
            boolean z5 = keyCode == 4;
            if (keyEvent.getAction() == 0) {
                if (z5 && cordovaWebViewImpl.f4470l != null) {
                    return Boolean.TRUE;
                }
                if (hashSet.contains(Integer.valueOf(keyCode))) {
                    return Boolean.TRUE;
                }
                if (z5) {
                    return Boolean.valueOf(vVar.canGoBack());
                }
            } else if (keyEvent.getAction() == 1) {
                if (z5 && cordovaWebViewImpl.f4470l != null) {
                    cordovaWebViewImpl.hideCustomView();
                    return Boolean.TRUE;
                }
                if (hashSet.contains(Integer.valueOf(keyCode))) {
                    String str = keyCode != 4 ? keyCode != 82 ? keyCode != 84 ? keyCode != 24 ? keyCode != 25 ? null : "volumedownbutton" : "volumeupbutton" : "searchbutton" : "menubutton" : "backbutton";
                    if (str != null) {
                        cordovaWebViewImpl.a(str);
                        return Boolean.TRUE;
                    }
                } else if (z5) {
                    return Boolean.valueOf(vVar.goBack());
                }
            }
            return null;
        }

        @Override // org.apache.cordova.u
        public boolean onNavigationAttempt(String str) {
            l0 l0Var = CordovaWebViewImpl.this.f4460a;
            synchronized (l0Var.f4543b) {
                try {
                    Iterator it = l0Var.f4543b.values().iterator();
                    while (it.hasNext()) {
                        o oVar = (o) l0Var.f4542a.get(((j0) it.next()).f4533a);
                        if (oVar != null && oVar.onOverrideUrlLoading(str)) {
                            return true;
                        }
                    }
                    if (CordovaWebViewImpl.this.f4460a.l(str)) {
                        return false;
                    }
                    if (CordovaWebViewImpl.this.f4460a.n(str).booleanValue()) {
                        CordovaWebViewImpl.this.showWebPage(str, true, false, null);
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // org.apache.cordova.u
        public void onPageFinishedLoading(String str) {
            clearLoadTimeoutTimer();
            CordovaWebViewImpl cordovaWebViewImpl = CordovaWebViewImpl.this;
            cordovaWebViewImpl.f4460a.k("onPageFinished", str);
            if (cordovaWebViewImpl.f4461b.getView().getVisibility() != 0) {
                new Thread(new z(this)).start();
            }
            if (str.equals("about:blank")) {
                cordovaWebViewImpl.f4460a.k("exit", null);
            }
        }

        @Override // org.apache.cordova.u
        public void onPageStarted(String str) {
            CordovaWebViewImpl.this.f4472n.clear();
            l0 l0Var = CordovaWebViewImpl.this.f4460a;
            synchronized (l0Var.f4542a) {
                try {
                    for (o oVar : l0Var.f4542a.values()) {
                        if (oVar != null) {
                            oVar.onReset();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            CordovaWebViewImpl.this.f4460a.k("onPageStarted", str);
        }

        @Override // org.apache.cordova.u
        public void onReceivedError(int i6, String str, String str2) {
            clearLoadTimeoutTimer();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("errorCode", i6);
                jSONObject.put("description", str);
                jSONObject.put("url", str2);
            } catch (JSONException e9) {
                e9.printStackTrace();
            }
            CordovaWebViewImpl.this.f4460a.k("onReceivedError", jSONObject);
        }
    }

    public CordovaWebViewImpl(v vVar) {
        this.f4461b = vVar;
    }

    public static v createEngine(Context context, q qVar) {
        try {
            return (v) Class.forName(qVar.b("webview", SystemWebViewEngine.class.getCanonicalName())).getConstructor(Context.class, q.class).newInstance(context, qVar);
        } catch (Exception e9) {
            throw new RuntimeException("Failed to create webview. ", e9);
        }
    }

    public final void a(String str) {
        if (this.f4466g == null) {
            this.f4466g = (CoreAndroid) this.f4460a.c(CoreAndroid.PLUGIN_NAME);
        }
        CoreAndroid coreAndroid = this.f4466g;
        if (coreAndroid == null) {
            return;
        }
        coreAndroid.fireJavascriptEvent(str);
    }

    @Override // org.apache.cordova.t
    public boolean backHistory() {
        return this.f4461b.goBack();
    }

    public boolean canGoBack() {
        return this.f4461b.canGoBack();
    }

    @Override // org.apache.cordova.t
    public void clearCache() {
        this.f4461b.clearCache();
    }

    @Override // org.apache.cordova.t
    public void clearHistory() {
        this.f4461b.clearHistory();
    }

    @Override // org.apache.cordova.t
    public Context getContext() {
        return this.f4461b.getView().getContext();
    }

    public d0 getCookieManager() {
        return this.f4461b.getCookieManager();
    }

    public v getEngine() {
        return this.f4461b;
    }

    @Override // org.apache.cordova.t
    public l0 getPluginManager() {
        return this.f4460a;
    }

    @Override // org.apache.cordova.t
    public q getPreferences() {
        return this.f4465f;
    }

    public s getResourceApi() {
        return this.f4464e;
    }

    public String getUrl() {
        return this.f4461b.getUrl();
    }

    public View getView() {
        return this.f4461b.getView();
    }

    @Override // org.apache.cordova.t
    public void handleDestroy() {
        if (isInitialized()) {
            this.f4463d++;
            this.f4460a.e();
            loadUrl("about:blank");
            this.f4461b.destroy();
            hideCustomView();
        }
    }

    @Override // org.apache.cordova.t
    public void handlePause(boolean z5) {
        if (isInitialized()) {
            this.f4468j = true;
            this.f4460a.g(z5);
            a("pause");
            if (z5) {
                return;
            }
            this.f4461b.setPaused(true);
        }
    }

    @Override // org.apache.cordova.t
    public void handleResume(boolean z5) {
        if (isInitialized()) {
            this.f4461b.setPaused(false);
            this.f4460a.h(z5);
            if (this.f4468j) {
                a("resume");
            }
        }
    }

    @Override // org.apache.cordova.t
    public void handleStart() {
        if (isInitialized()) {
            this.f4460a.i();
        }
    }

    @Override // org.apache.cordova.t
    public void handleStop() {
        if (isInitialized()) {
            this.f4460a.j();
        }
    }

    @Override // org.apache.cordova.t
    @Deprecated
    public void hideCustomView() {
        a0 a0Var = this.f4470l;
        if (a0Var == null) {
            return;
        }
        a0Var.setVisibility(8);
        v vVar = this.f4461b;
        ((ViewGroup) vVar.getView().getParent()).removeView(this.f4470l);
        this.f4470l = null;
        this.f4471m.onCustomViewHidden();
        vVar.getView().setVisibility(0);
        vVar.getView().requestFocus();
    }

    public void init(m mVar) {
        init(mVar, new ArrayList(), new q());
    }

    @Override // org.apache.cordova.t
    public boolean isButtonPlumbedToJs(int i6) {
        return this.f4472n.contains(Integer.valueOf(i6));
    }

    @Deprecated
    public boolean isCustomViewShowing() {
        return this.f4470l != null;
    }

    public boolean isInitialized() {
        return this.f4462c != null;
    }

    public void loadUrl(String str) {
        loadUrlIntoView(str, true);
    }

    public void loadUrlIntoView(String str, boolean z5) {
        if (str.equals("about:blank") || str.startsWith("javascript:")) {
            this.f4461b.loadUrl(str, false);
            return;
        }
        boolean z8 = z5 || this.f4469k == null;
        if (z8) {
            if (this.f4469k != null) {
                this.f4466g = null;
                this.f4460a.d();
            }
            this.f4469k = str;
        }
        int i6 = this.f4463d;
        q qVar = this.f4465f;
        qVar.getClass();
        String str2 = (String) qVar.f4558a.get("LoadUrlTimeoutValue".toLowerCase(Locale.ENGLISH));
        int iLongValue = str2 != null ? (int) Long.decode(str2).longValue() : 20000;
        w wVar = new w(this, iLongValue, i6, new s4.b(this, str, 3, false));
        if (this.f4462c.getActivity() != null) {
            this.f4462c.getActivity().runOnUiThread(new x(this, iLongValue, wVar, str, z8));
        }
    }

    @Override // org.apache.cordova.t
    public void onNewIntent(Intent intent) {
        l0 l0Var = this.f4460a;
        if (l0Var != null) {
            l0Var.f(intent);
        }
    }

    public Object postMessage(String str, Object obj) {
        return this.f4460a.k(str, obj);
    }

    @Deprecated
    public void sendJavascript(String str) {
        i0 i0Var = this.h;
        i0Var.getClass();
        i0Var.b(new g0(str));
    }

    @Override // org.apache.cordova.t
    public void sendPluginResult(m0 m0Var, String str) {
        this.h.a(m0Var, str);
    }

    @Override // org.apache.cordova.t
    public void setButtonPlumbedToJs(int i6, boolean z5) {
        if (i6 != 4 && i6 != 82 && i6 != 24 && i6 != 25) {
            throw new IllegalArgumentException(a1.a.i(i6, "Unsupported keycode: "));
        }
        HashSet hashSet = this.f4472n;
        if (z5) {
            hashSet.add(Integer.valueOf(i6));
        } else {
            hashSet.remove(Integer.valueOf(i6));
        }
    }

    @Override // org.apache.cordova.t
    @Deprecated
    public void showCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.f4470l != null) {
            customViewCallback.onCustomViewHidden();
            return;
        }
        Context context = getContext();
        v vVar = this.f4461b;
        a0 a0Var = new a0(context, vVar);
        a0Var.addView(view);
        this.f4470l = a0Var;
        this.f4471m = customViewCallback;
        ViewGroup viewGroup = (ViewGroup) vVar.getView().getParent();
        viewGroup.addView(a0Var, new FrameLayout.LayoutParams(-1, -1, 17));
        vVar.getView().setVisibility(8);
        viewGroup.setVisibility(0);
        viewGroup.bringToFront();
    }

    @Override // org.apache.cordova.t
    public void showWebPage(String str, boolean z5, boolean z8, Map<String, Object> map) {
        Intent intent;
        if (z8) {
            this.f4461b.clearHistory();
        }
        if (!z5) {
            if (this.f4460a.l(str)) {
                loadUrlIntoView(str, true);
                return;
            }
            return;
        }
        if (this.f4460a.n(str).booleanValue()) {
            Intent intent2 = null;
            try {
                try {
                    if (str.startsWith("intent://")) {
                        intent = Intent.parseUri(str, 1);
                    } else {
                        intent = new Intent("android.intent.action.VIEW");
                        try {
                            intent.addCategory("android.intent.category.BROWSABLE");
                            Uri uri = Uri.parse(str);
                            if ("file".equals(uri.getScheme())) {
                                intent.setDataAndType(uri, this.f4464e.a(uri));
                            } else {
                                intent.setData(uri);
                            }
                        } catch (ActivityNotFoundException e9) {
                            intent2 = intent;
                            e = e9;
                        }
                    }
                    intent2 = intent;
                    if (this.f4462c.getActivity() != null) {
                        this.f4462c.getActivity().startActivity(intent2);
                        return;
                    }
                    return;
                } catch (ActivityNotFoundException e10) {
                    e = e10;
                }
                if (!str.startsWith("intent://") || intent2 == null || intent2.getStringExtra("browser_fallback_url") == null) {
                    Log.e(TAG, "Error loading url ".concat(str), e);
                } else {
                    showWebPage(intent2.getStringExtra("browser_fallback_url"), z5, z8, map);
                }
            } catch (URISyntaxException e11) {
                Log.e(TAG, "Error parsing url " + str, e11);
            }
        }
    }

    public void stopLoading() {
        this.f4463d++;
    }

    @Deprecated
    public void clearCache(boolean z5) {
        this.f4461b.clearCache();
    }

    public void init(m mVar, List<j0> list, q qVar) {
        if (this.f4462c != null) {
            throw new IllegalStateException();
        }
        this.f4462c = mVar;
        this.f4465f = qVar;
        this.f4460a = new l0(this, this.f4462c, list);
        v vVar = this.f4461b;
        this.f4464e = new s(vVar.getView().getContext(), this.f4460a);
        i0 i0Var = new i0();
        this.h = i0Var;
        i0Var.f4529c.add(new f0() { // from class: org.apache.cordova.NativeToJsMessageQueue$NoOpBridgeMode
            @Override // org.apache.cordova.f0
            public void onNativeToJsMessageAvailable(i0 i0Var2) {
            }
        });
        i0 i0Var2 = this.h;
        i0Var2.f4529c.add(new NativeToJsMessageQueue$LoadUrlBridgeMode(vVar, mVar));
        if (qVar.a("DisallowOverscroll", false)) {
            vVar.getView().setOverScrollMode(2);
        }
        this.f4461b.init(this, mVar, this.f4467i, this.f4464e, this.f4460a, this.h);
        l0 l0Var = this.f4460a;
        l0Var.getClass();
        l0Var.f4543b.put(CoreAndroid.PLUGIN_NAME, new j0(CoreAndroid.PLUGIN_NAME, "org.apache.cordova.CoreAndroid", false));
        this.f4460a.d();
    }
}
