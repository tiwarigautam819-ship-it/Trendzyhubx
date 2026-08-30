package com.lottery.app;

import a2.i;
import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import androidx.lifecycle.c0;
import com.YaarWin.app.R;
import com.google.firebase.messaging.k;
import java.io.File;
import java.lang.ref.WeakReference;
import l6.a;
import m6.g;
import n6.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class App extends Application {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f2173d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f2175b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2174a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference f2176c = new WeakReference(null);

    public static void a(App app, Activity activity) {
        View viewFindViewById;
        if (activity == null || activity.isFinishing() || (viewFindViewById = ((ViewGroup) activity.getWindow().getDecorView()).findViewById(2131362047)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public static void c(App app) {
        try {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.removeAllCookies(null);
            cookieManager.flush();
        } catch (Throwable unused) {
        }
        try {
            WebView webView = new WebView(app);
            webView.clearCache(true);
            webView.clearHistory();
            webView.clearFormData();
            webView.destroy();
        } catch (Throwable unused2) {
        }
        try {
            File file = new File(app.getApplicationInfo().dataDir);
            if (Build.VERSION.SDK_INT >= 24) {
                d(new File(file, "app_webview/Default/Service Worker"));
            }
            d(new File(file, "app_webview/Default/IndexedDB"));
        } catch (Throwable unused3) {
        }
        Log.d("APP", "WebView data cleared.");
    }

    public static void d(File file) {
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        d(file2);
                    } else {
                        file2.delete();
                    }
                }
            }
            file.delete();
        }
    }

    public final void b() {
        i iVar = this.f2175b;
        if (iVar != null) {
            this.f2174a.removeCallbacks(iVar);
            this.f2175b = null;
        }
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("app_prefs", 0);
            long j3 = sharedPreferences.getLong("last_update_time", -1L);
            long j8 = getPackageManager().getPackageInfo(getPackageName(), 0).lastUpdateTime;
            if (j3 != j8) {
                Log.d("APP", "WebView clear (replace install detected). last=" + j3 + " now=" + j8);
                c(this);
                sharedPreferences.edit().putLong("last_update_time", j8).apply();
            } else {
                Log.d("APP", "Skip WebView clear (no replace). now=" + j8);
            }
        } catch (Throwable th) {
            Log.w("APP", "clearWebViewDataOnReplaceInstall error: " + th.getMessage());
        }
        c.f4365d = R.mipmap.ic_launcher;
        g.a(getApplicationContext(), null, null);
        Log.d("✅APP", "### Application.onCreate START pid=" + Process.myPid());
        registerActivityLifecycleCallbacks(new k(this));
        c0.f679i.f685f.a(new a(this));
    }
}
