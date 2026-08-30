package com.lottery.app;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import bridges.JSBridge;
import bridges.TomBridge;
import com.getcapacitor.BridgeActivity;
import com.getcapacitor.n;
import i8.l;
import j0.d0;
import j0.k0;
import java.util.Objects;
import java.util.WeakHashMap;
import l6.c;
import l6.f;
import l6.g;
import l6.h;
import m6.d;
import t4.b;
import utils.ReplacePropertiesUtil;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BridgeActivity {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f2183g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ReplacePropertiesUtil f2184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FrameLayout f2185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2186c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2187d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2188e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WebViewClient f2189f;

    public final void f() {
        getWindow().clearFlags(201326592);
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setStatusBarColor(-16777216);
        getWindow().setNavigationBarColor(-16777216);
        getWindow().getDecorView().setSystemUiVisibility(0);
        b.k(getWindow(), false);
    }

    public final void g() {
        if (!this.f2188e && this.f2186c && this.f2187d) {
            this.f2188e = true;
            FrameLayout frameLayout = this.f2185b;
            if (frameLayout != null) {
                frameLayout.animate().alpha(0.0f).setDuration(250L).withEndAction(new g(this, 2)).start();
            }
        }
    }

    @Override // com.getcapacitor.BridgeActivity, androidx.fragment.app.h0, b.p, android.app.Activity
    public final void onActivityResult(int i6, int i9, Intent intent) {
        WebViewClient webViewClient = this.f2189f;
        if (webViewClient instanceof c) {
            c cVar = (c) webViewClient;
            if (i6 == 10086) {
                cVar.getClass();
                return;
            }
            cVar.getClass();
        }
        super.onActivityResult(i6, i9, intent);
    }

    @Override // b.p, android.app.Activity
    public final void onBackPressed() {
        WebView webView = getBridge().getWebView();
        if (webView == null || !webView.canGoBack()) {
            new AlertDialog.Builder(this).setTitle("Confirm Exit").setMessage("Do you really want to exit the game?").setPositiveButton("Exit", new f(0, this)).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        } else {
            webView.goBack();
        }
    }

    @Override // com.getcapacitor.BridgeActivity, androidx.fragment.app.h0, b.p, y.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f2184a == null) {
            this.f2184a = new ReplacePropertiesUtil(this);
        }
        int i6 = 0;
        String string = getSharedPreferences("ga4_config_pref", 0).getString("ga4_config_json", null);
        if (string != null) {
            n6.c.a(this, string, new n(11));
        } else {
            Log.d("AppInit", "No local GA4 config, waiting H5 to provide.");
        }
        WebView webView = getBridge().getWebView();
        f();
        WebSettings settings = webView.getSettings();
        webView.addJavascriptInterface(new TomBridge(this, webView), TomBridge.bridgeName);
        webView.addJavascriptInterface(new JSBridge(this, this), JSBridge.bridgeName);
        webView.setBackgroundColor(-16777216);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        int i9 = 1;
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setBlockNetworkImage(false);
        settings.setCacheMode(-1);
        settings.setMixedContentMode(0);
        if (Build.VERSION.SDK_INT >= 26) {
            settings.setSafeBrowsingEnabled(false);
        }
        WebView webView2 = getBridge().getWebView();
        l lVar = new l(false, false);
        WeakHashMap weakHashMap = k0.f3286a;
        d0.i(webView2, lVar);
        webView2.setFitsSystemWindows(false);
        webView2.requestApplyInsets();
        WebView.setWebContentsDebuggingEnabled(this.f2184a.isDebugger());
        if ("embed".equals(this.f2184a.get("packageType"))) {
            this.f2189f = new c(this, this, 1);
        } else {
            this.f2189f = new h(this, getBridge());
        }
        webView.setWebViewClient(this.f2189f);
        new Handler(getMainLooper()).postDelayed(new g(this, i6), 0L);
        new Handler(getMainLooper()).postDelayed(new g(this, i9), 1800L);
        String strTrim = this.f2184a.get("launcher");
        if (strTrim != null && !strTrim.isEmpty()) {
            strTrim = strTrim.trim();
        }
        FrameLayout frameLayout = new FrameLayout(this);
        this.f2185b = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f2185b.setClickable(true);
        this.f2185b.setFocusable(true);
        int i10 = 10;
        if (strTrim == null || strTrim.isEmpty()) {
            TextView textView = new TextView(this);
            textView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
            textView.setBackgroundColor(-16777216);
            textView.setText("loading...");
            textView.setTextColor(-1);
            textView.setGravity(17);
            textView.setTextSize(2, 20.0f);
            textView.setTypeface(Typeface.MONOSPACE, 1);
            textView.setLetterSpacing(0.05f);
            this.f2185b.addView(textView);
            FrameLayout frameLayout2 = this.f2185b;
            addContentView(frameLayout2, frameLayout2.getLayoutParams());
            FrameLayout frameLayout3 = this.f2185b;
            Objects.requireNonNull(frameLayout3);
            frameLayout3.post(new a2.g(i10, frameLayout3));
            f4.f.a(getWindow(), true, true, true);
            return;
        }
        int identifier = getResources().getIdentifier("splash", "drawable", getPackageName());
        if (identifier == 0) {
            Log.d("MainActivity", "启动图啥都没有");
            f4.f.a(getWindow(), true, true, true);
            return;
        }
        ImageView imageView = new ImageView(this);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setImageResource(identifier);
        this.f2185b.addView(imageView);
        FrameLayout frameLayout4 = this.f2185b;
        addContentView(frameLayout4, frameLayout4.getLayoutParams());
        FrameLayout frameLayout5 = this.f2185b;
        Objects.requireNonNull(frameLayout5);
        frameLayout5.post(new a2.g(i10, frameLayout5));
        f4.f.a(getWindow(), true, true, true);
    }

    @Override // com.getcapacitor.BridgeActivity, g.m, androidx.fragment.app.h0, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        WebView webView = getBridge().getWebView();
        if (webView != null) {
            webView.loadUrl("about:blank");
            webView.clearHistory();
            deleteDatabase("webview.db");
            deleteDatabase("webviewCache.db");
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.removeAllViews();
            webView.destroy();
        }
    }

    @Override // com.getcapacitor.BridgeActivity, androidx.fragment.app.h0, android.app.Activity
    public final void onPause() {
        if (m6.g.f4300a && d.b()) {
            try {
                d.f4290a.getMethod("onPause", null).invoke(null, null);
            } catch (Throwable unused) {
            }
        }
        super.onPause();
    }

    @Override // com.getcapacitor.BridgeActivity, androidx.fragment.app.h0, android.app.Activity
    public final void onResume() {
        super.onResume();
        f();
        if (m6.g.f4300a && d.b()) {
            try {
                d.f4290a.getMethod("onResume", null).invoke(null, null);
            } catch (Throwable unused) {
            }
        }
        Window window = getWindow();
        View decorView = window.getDecorView();
        Log.d("MainActivity", String.format("statusColor=#%08X navColor=#%08X vis=0x%08X", Integer.valueOf(window.getStatusBarColor()), Integer.valueOf(window.getNavigationBarColor()), Integer.valueOf(decorView.getSystemUiVisibility())));
    }
}
