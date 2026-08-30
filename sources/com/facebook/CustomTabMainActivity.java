package com.facebook;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.m1;
import d7.g;
import java.util.concurrent.locks.ReentrantLock;
import o5.c;
import q2.b0;
import q2.d;
import q2.g0;
import q2.x;
import q2.y;
import v2.a;
import x1.j;
import x1.r;
import y0.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class CustomTabMainActivity extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1317c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1318a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f1319b;

    public final void a(Intent intent, int i6) {
        Bundle bundle;
        d dVar = this.f1319b;
        if (dVar != null) {
            b.a(this).d(dVar);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra("CustomTabMainActivity.extra_url");
            if (stringExtra != null) {
                Uri uri = Uri.parse(stringExtra);
                bundle = g0.G(uri.getQuery());
                bundle.putAll(g0.G(uri.getFragment()));
            } else {
                bundle = new Bundle();
            }
            Intent intent2 = getIntent();
            g.e("intent", intent2);
            Intent intentE = b0.e(intent2, bundle, null);
            if (intentE != null) {
                intent = intentE;
            }
            setResult(i6, intent);
        } else {
            Intent intent3 = getIntent();
            g.e("intent", intent3);
            setResult(i6, b0.e(intent3, null, null));
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        String stringExtra;
        int i6;
        c cVar;
        boolean z5;
        Uri uriA;
        super.onCreate(bundle);
        if ("CustomTabActivity.action_customTabRedirect".equals(getIntent().getAction())) {
            setResult(0);
            finish();
            return;
        }
        if (bundle != null || (stringExtra = getIntent().getStringExtra("CustomTabMainActivity.extra_action")) == null) {
            return;
        }
        Bundle bundleExtra = getIntent().getBundleExtra("CustomTabMainActivity.extra_params");
        String stringExtra2 = getIntent().getStringExtra("CustomTabMainActivity.extra_chromePackage");
        String stringExtra3 = getIntent().getStringExtra("CustomTabMainActivity.extra_targetApp");
        int[] iArrH = m1.h(2);
        int length = iArrH.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                i6 = 1;
                break;
            }
            i6 = iArrH[i9];
            if (x.c(i6).equals(stringExtra3)) {
                break;
            } else {
                i9++;
            }
        }
        if (j.f5895a[m1.e(i6)] == 1) {
            cVar = new y(bundleExtra, stringExtra);
            if (bundleExtra == null) {
                bundleExtra = new Bundle();
            }
            if (stringExtra.equals("oauth")) {
                uriA = g0.a(g0.r(), "oauth/authorize", bundleExtra);
            } else {
                uriA = g0.a(g0.r(), r.d() + "/dialog/" + stringExtra, bundleExtra);
            }
            if (!a.b(cVar)) {
                try {
                    cVar.f4446b = uriA;
                } catch (Throwable th) {
                    a.a(th, cVar);
                }
            }
        } else {
            cVar = new c(bundleExtra, stringExtra);
        }
        if (a.b(cVar)) {
            z5 = false;
        } else {
            try {
                ReentrantLock reentrantLock = y2.b.f6161a;
                reentrantLock.lock();
                reentrantLock.unlock();
                Intent intent = new Intent("android.intent.action.VIEW");
                Bundle bundle2 = new Bundle();
                bundle2.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle2);
                intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
                intent.setPackage(stringExtra2);
                try {
                    intent.setData((Uri) cVar.f4446b);
                    startActivity(intent, null);
                    z5 = true;
                } catch (ActivityNotFoundException unused) {
                    z5 = false;
                }
            } catch (Throwable th2) {
                a.a(th2, cVar);
            }
        }
        this.f1318a = false;
        if (!z5) {
            setResult(0, getIntent().putExtra("CustomTabMainActivity.no_activity_exception", true));
            finish();
        } else {
            d dVar = new d(7, this);
            this.f1319b = dVar;
            b.a(this).b(dVar, new IntentFilter("CustomTabActivity.action_customTabRedirect"));
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        g.f("intent", intent);
        super.onNewIntent(intent);
        if ("CustomTabMainActivity.action_refresh".equals(intent.getAction())) {
            b.a(this).c(new Intent("CustomTabActivity.action_destroy"));
            a(intent, -1);
        } else if ("CustomTabActivity.action_customTabRedirect".equals(intent.getAction())) {
            a(intent, -1);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.f1318a) {
            a(null, 0);
        }
        this.f1318a = true;
    }
}
