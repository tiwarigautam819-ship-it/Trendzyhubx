package com.lottery.app;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.YaarWin.app.R;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.google.android.gms.internal.measurement.y4;
import f4.f;
import i2.t;
import i8.l;
import j0.d0;
import j0.k0;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import l6.b;
import l6.c;
import l6.d;
import l6.e;
import m1.j;
import org.json.JSONObject;
import utils.ReplacePropertiesUtil;
import v7.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class GameActivity extends Activity {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f2177e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WebView f2178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f2179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m1.e f2180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ReplacePropertiesUtil f2181d;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f2181d == null) {
            this.f2181d = new ReplacePropertiesUtil(this);
        }
        String stringExtra = getIntent().getStringExtra("params");
        e eVar = new e();
        eVar.f3825a = "";
        eVar.f3826b = "#000000";
        eVar.f3827c = "";
        eVar.f3828d = "#FFFFFF";
        eVar.f3829e = "";
        eVar.f3830f = "";
        eVar.f3831g = false;
        eVar.h = 1;
        if (stringExtra != null) {
            try {
                JSONObject jSONObject = new JSONObject(stringExtra);
                if (jSONObject.has("url")) {
                    eVar.f3825a = jSONObject.optString("url", eVar.f3825a);
                }
                if (jSONObject.has("backgroundColor")) {
                    eVar.f3826b = jSONObject.optString("backgroundColor", eVar.f3826b);
                }
                if (jSONObject.has("bodyColor")) {
                    eVar.f3827c = jSONObject.optString("bodyColor", eVar.f3827c);
                }
                if (jSONObject.has("fontColor")) {
                    eVar.f3828d = jSONObject.optString("fontColor", eVar.f3828d);
                }
                if (jSONObject.has(MTCommonConstants.Lifecycle.KEY_TITLE)) {
                    eVar.f3829e = jSONObject.optString(MTCommonConstants.Lifecycle.KEY_TITLE, eVar.f3829e);
                }
                if (jSONObject.has("vendorCode")) {
                    eVar.f3830f = jSONObject.optString("vendorCode", eVar.f3830f);
                }
                if (jSONObject.has("isCache")) {
                    eVar.f3831g = jSONObject.optBoolean("isCache", eVar.f3831g);
                }
                if (jSONObject.has("returnType")) {
                    eVar.h = jSONObject.optInt("returnType", eVar.h);
                }
            } catch (Exception e9) {
                e9.printStackTrace();
            }
        }
        this.f2179b = eVar;
        String stringExtra2 = getIntent().getStringExtra("params");
        Objects.requireNonNull(stringExtra2);
        Log.d("✅GameActivity", stringExtra2);
        f.a(getWindow(), true, false, false);
        getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
        Log.d("✅GameActivity", "buildFixedLayout");
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        try {
            linearLayout.setBackgroundColor(t.k(this.f2179b.f3826b, "#000000"));
        } catch (Exception unused) {
            linearLayout.setBackgroundColor(-16777216);
        }
        e eVar2 = this.f2179b;
        Log.d("✅GameActivity", "buildContentView");
        TextView textView = new TextView(this);
        textView.setText("Failed to retrieve page URL.");
        textView.setGravity(17);
        textView.setTextColor(t.k(eVar2.f3828d, "#ffffff"));
        textView.setBackgroundColor(t.k(eVar2.f3826b, "#000000"));
        textView.setTextSize(18.0f);
        String str = eVar2.f3825a;
        View view = textView;
        if (str != null) {
            view = textView;
            if (!str.isEmpty()) {
                this.f2178a = new WebView(this);
                this.f2180c = new m1.e(this, eVar2.f3830f, eVar2.f3831g);
                this.f2178a.setWebViewClient(new c(this, this, 0));
                this.f2178a.setWebChromeClient(new d(eVar2));
                WebSettings settings = this.f2178a.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setDomStorageEnabled(true);
                settings.setAllowFileAccess(true);
                settings.setAllowContentAccess(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setCacheMode(-1);
                settings.setSupportZoom(true);
                settings.setDisplayZoomControls(false);
                settings.setBuiltInZoomControls(true);
                settings.setLoadWithOverviewMode(true);
                String str2 = eVar2.f3827c;
                this.f2178a.setBackgroundColor(t.k((str2 == null || str2.isEmpty()) ? eVar2.f3826b : eVar2.f3827c, "#000000"));
                this.f2178a.setOverScrollMode(0);
                this.f2178a.setHorizontalScrollBarEnabled(true);
                this.f2178a.setVerticalScrollBarEnabled(true);
                this.f2178a.setScrollBarStyle(0);
                this.f2178a.getSettings().setMixedContentMode(0);
                if (Build.VERSION.SDK_INT >= 26) {
                    settings.setSafeBrowsingEnabled(false);
                }
                WebView.setWebContentsDebuggingEnabled(new ReplacePropertiesUtil(this).isDebugger());
                Log.d("✅GameActivity", "webView.setWebViewClient " + eVar2.h);
                int i6 = eVar2.h;
                if (i6 == 1) {
                    this.f2178a.loadUrl(eVar2.f3825a);
                } else if (i6 == 2) {
                    this.f2178a.loadDataWithBaseURL(null, eVar2.f3825a, "text/html", "utf-8", null);
                }
                view = this.f2178a;
            }
        }
        e eVar3 = this.f2179b;
        String str3 = eVar3.f3829e;
        String str4 = eVar3.f3828d;
        int iRound = Math.round(46 * getResources().getDisplayMetrics().density);
        int iRound2 = Math.round(24 * getResources().getDisplayMetrics().density);
        int iRound3 = Math.round(8 * getResources().getDisplayMetrics().density);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        frameLayout.setBackgroundColor(0);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, iRound));
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.icon_back);
        imageView.setColorFilter(t.k(str4, "#ffffff"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iRound2, iRound2);
        layoutParams.gravity = 8388627;
        layoutParams.setMargins(iRound3, 0, iRound3, 0);
        imageView.setLayoutParams(layoutParams);
        imageView.setOnClickListener(new b(this, 0));
        TextView textView2 = new TextView(this);
        textView2.setText(str3);
        textView2.setTextSize(18.0f);
        textView2.setTextColor(t.k(str4, "#ffffff"));
        textView2.setTypeface(null, 1);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        textView2.setLayoutParams(layoutParams2);
        frameLayout2.addView(imageView);
        frameLayout2.addView(textView2);
        frameLayout.addView(frameLayout2);
        linearLayout.addView(frameLayout);
        linearLayout.addView(view, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        setContentView(linearLayout);
        l lVar = new l(true, true);
        WeakHashMap weakHashMap = k0.f3286a;
        d0.i(linearLayout, lVar);
        linearLayout.setFitsSystemWindows(false);
        linearLayout.requestApplyInsets();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        m1.e eVar = this.f2180c;
        if (eVar != null) {
            eVar.f4227f = true;
            String str = eVar.f4226e;
            if (str != null && j.f4234a != null) {
                int i6 = 0;
                try {
                    for (i iVar : j.f4234a.f5113a.A()) {
                        if (str.equals(Object.class.cast(((Map) iVar.f5669b.f1413f).get(Object.class)))) {
                            iVar.d();
                            i6++;
                        }
                    }
                    for (i iVar2 : j.f4234a.f5113a.B()) {
                        if (str.equals(Object.class.cast(((Map) iVar2.f5669b.f1413f).get(Object.class)))) {
                            iVar2.d();
                            i6++;
                        }
                    }
                } catch (Throwable th) {
                    Log.w("NetFetcher", "cancelByTag failed", th);
                }
                if (i6 > 0) {
                    Log.d("NetFetcher", "cancelByTag(" + ((Object) str) + ") cancelled=" + i6);
                }
            }
            y4 y4Var = eVar.f4225d;
            if (y4Var != null) {
                ((ExecutorService) y4Var.f1990b).shutdownNow();
            }
            Log.d("GameResourceCache", "shutdown vendor=" + eVar.f4222a);
        }
        WebView webView = this.f2178a;
        if (webView != null) {
            webView.stopLoading();
            this.f2178a.setWebChromeClient(null);
            this.f2178a.setWebViewClient(null);
            ViewGroup viewGroup = (ViewGroup) this.f2178a.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.f2178a);
            }
            this.f2178a.removeAllViews();
            this.f2178a.destroy();
            this.f2178a = null;
        }
        this.f2180c = null;
    }
}
