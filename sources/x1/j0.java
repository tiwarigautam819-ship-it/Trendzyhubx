package x1;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j0 f5896a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f5897b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f5898c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i0 f5899d = new i0("com.facebook.sdk.AutoInitEnabled", true);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i0 f5900e = new i0("com.facebook.sdk.AutoLogAppEventsEnabled", true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i0 f5901f = new i0("com.facebook.sdk.AdvertiserIDCollectionEnabled", true);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i0 f5902g = new i0("auto_event_setup_enabled", false);
    public static final i0 h = new i0("com.facebook.sdk.MonitorEnabled", true);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static SharedPreferences f5903i;

    public static final boolean b() {
        if (v2.a.b(j0.class)) {
            return false;
        }
        try {
            f5896a.e();
            return f5901f.a();
        } catch (Throwable th) {
            v2.a.a(th, j0.class);
            return false;
        }
    }

    public static final boolean c() {
        if (v2.a.b(j0.class)) {
            return false;
        }
        try {
            j0 j0Var = f5896a;
            j0Var.e();
            return j0Var.a();
        } catch (Throwable th) {
            v2.a.a(th, j0.class);
            return false;
        }
    }

    public static final Boolean j() {
        SharedPreferences sharedPreferences;
        String str = "";
        if (v2.a.b(j0.class)) {
            return null;
        }
        try {
            f5896a.l();
            try {
                sharedPreferences = f5903i;
            } catch (JSONException unused) {
                r rVar = r.f5918a;
            }
            if (sharedPreferences == null) {
                d7.g.i("userSettingPref");
                throw null;
            }
            String string = sharedPreferences.getString(f5900e.f5892b, "");
            if (string != null) {
                str = string;
            }
            if (str.length() > 0) {
                return Boolean.valueOf(new JSONObject(str).getBoolean("value"));
            }
            return null;
        } catch (Throwable th) {
            v2.a.a(th, j0.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003c A[PHI: r2
      0x003c: PHI (r2v8 java.lang.Boolean) = (r2v6 java.lang.Boolean), (r2v7 java.lang.Boolean) binds: [B:21:0x003a, B:24:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a() {
        /*
            r4 = this;
            boolean r0 = v2.a.b(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.HashMap r0 = q2.w.c()     // Catch: java.lang.Throwable -> L2c
            if (r0 == 0) goto L59
            boolean r2 = r0.isEmpty()     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L15
            goto L59
        L15:
            java.lang.String r2 = "auto_log_app_events_enabled"
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L2c
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L2c
            java.lang.String r3 = "auto_log_app_events_default"
            java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.Throwable -> L2c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L2e
            boolean r0 = r2.booleanValue()     // Catch: java.lang.Throwable -> L2c
            return r0
        L2c:
            r0 = move-exception
            goto L60
        L2e:
            boolean r2 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L2c
            r3 = 0
            if (r2 == 0) goto L36
            goto L49
        L36:
            java.lang.Boolean r2 = j()     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L3e
        L3c:
            r3 = r2
            goto L49
        L3e:
            java.lang.Boolean r2 = r4.f()     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L49
            goto L3c
        L45:
            r2 = move-exception
            v2.a.a(r2, r4)     // Catch: java.lang.Throwable -> L2c
        L49:
            if (r3 == 0) goto L50
            boolean r0 = r3.booleanValue()     // Catch: java.lang.Throwable -> L2c
            return r0
        L50:
            if (r0 == 0) goto L57
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L2c
            return r0
        L57:
            r0 = 1
            return r0
        L59:
            x1.i0 r0 = x1.j0.f5900e     // Catch: java.lang.Throwable -> L2c
            boolean r0 = r0.a()     // Catch: java.lang.Throwable -> L2c
            return r0
        L60:
            v2.a.a(r0, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.j0.a():boolean");
    }

    public final void d() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            i0 i0Var = f5902g;
            k(i0Var);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            if (i0Var.f5893c == null || jCurrentTimeMillis - i0Var.f5894d >= 604800000) {
                i0Var.f5893c = null;
                i0Var.f5894d = 0L;
                if (f5898c.compareAndSet(false, true)) {
                    r.c().execute(new Runnable() { // from class: x1.h0
                        @Override // java.lang.Runnable
                        public final void run() {
                            q2.t tVarK;
                            long j3 = jCurrentTimeMillis;
                            if (v2.a.b(j0.class)) {
                                return;
                            }
                            try {
                                if (j0.f5901f.a() && (tVarK = q2.w.k(r.b(), false)) != null && tVarK.f4816g) {
                                    q2.c cVarB = q2.g.b(r.a());
                                    String strA = (cVarB == null || cVarB.a() == null) ? null : cVarB.a();
                                    if (strA != null) {
                                        Bundle bundle = new Bundle();
                                        bundle.putString("advertiser_id", strA);
                                        bundle.putString("fields", "auto_event_setup_enabled");
                                        String str = z.f5942j;
                                        z zVarU = w.u(null, "app", null);
                                        zVarU.f5948d = bundle;
                                        JSONObject jSONObject = zVarU.c().f5817b;
                                        if (jSONObject != null) {
                                            i0 i0Var2 = j0.f5902g;
                                            i0Var2.f5893c = Boolean.valueOf(jSONObject.optBoolean("auto_event_setup_enabled", false));
                                            i0Var2.f5894d = j3;
                                            j0.f5896a.m(i0Var2);
                                        }
                                    }
                                }
                                j0.f5898c.set(false);
                            } catch (Throwable th) {
                                v2.a.a(th, j0.class);
                            }
                        }
                    });
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void e() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (r.f5931o.get()) {
                if (f5897b.compareAndSet(false, true)) {
                    SharedPreferences sharedPreferences = r.a().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
                    d7.g.e("getApplicationContext()\n…GS, Context.MODE_PRIVATE)", sharedPreferences);
                    f5903i = sharedPreferences;
                    i0[] i0VarArr = {f5900e, f5901f, f5899d};
                    if (!v2.a.b(this)) {
                        for (int i6 = 0; i6 < 3; i6++) {
                            try {
                                i0 i0Var = i0VarArr[i6];
                                if (i0Var == f5902g) {
                                    d();
                                } else if (i0Var.f5893c == null) {
                                    k(i0Var);
                                    if (i0Var.f5893c == null) {
                                        g(i0Var);
                                    }
                                } else {
                                    m(i0Var);
                                }
                            } catch (Throwable th) {
                                v2.a.a(th, this);
                                d();
                                i();
                                h();
                            }
                        }
                    }
                    d();
                    i();
                    h();
                }
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    public final Boolean f() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            l();
            try {
                Context contextA = r.a();
                ApplicationInfo applicationInfo = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128);
                d7.g.e("ctx.packageManager.getAp…ageManager.GET_META_DATA)", applicationInfo);
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    i0 i0Var = f5900e;
                    if (bundle.containsKey(i0Var.f5892b)) {
                        return Boolean.valueOf(applicationInfo.metaData.getBoolean(i0Var.f5892b));
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                r rVar = r.f5918a;
            }
            return null;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final void g(i0 i0Var) {
        String str = i0Var.f5892b;
        if (v2.a.b(this)) {
            return;
        }
        try {
            l();
            try {
                Context contextA = r.a();
                ApplicationInfo applicationInfo = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128);
                d7.g.e("ctx.packageManager.getAp…ageManager.GET_META_DATA)", applicationInfo);
                Bundle bundle = applicationInfo.metaData;
                if (bundle == null || !bundle.containsKey(str)) {
                    return;
                }
                i0Var.f5893c = Boolean.valueOf(applicationInfo.metaData.getBoolean(str, i0Var.f5891a));
                return;
            } catch (PackageManager.NameNotFoundException unused) {
                r rVar = r.f5918a;
                return;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
        v2.a.a(th, this);
    }

    public final void h() {
        int i6;
        int i9;
        ApplicationInfo applicationInfo;
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (f5897b.get() && r.f5931o.get()) {
                Context contextA = r.a();
                int i10 = (f5899d.a() ? 1 : 0) | ((f5900e.a() ? 1 : 0) << 1) | ((f5901f.a() ? 1 : 0) << 2) | ((h.a() ? 1 : 0) << 3);
                SharedPreferences sharedPreferences = f5903i;
                if (sharedPreferences == null) {
                    d7.g.i("userSettingPref");
                    throw null;
                }
                int i11 = sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
                if (i11 != i10) {
                    SharedPreferences sharedPreferences2 = f5903i;
                    if (sharedPreferences2 == null) {
                        d7.g.i("userSettingPref");
                        throw null;
                    }
                    sharedPreferences2.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i10).apply();
                    try {
                        applicationInfo = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128);
                        d7.g.e("ctx.packageManager.getAp…ageManager.GET_META_DATA)", applicationInfo);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    if (applicationInfo.metaData != null) {
                        String[] strArr = {"com.facebook.sdk.AutoInitEnabled", "com.facebook.sdk.AutoLogAppEventsEnabled", "com.facebook.sdk.AdvertiserIDCollectionEnabled", "com.facebook.sdk.MonitorEnabled"};
                        boolean[] zArr = {true, true, true, true};
                        i6 = 0;
                        i9 = 0;
                        for (int i12 = 0; i12 < 4; i12++) {
                            try {
                                i9 |= (applicationInfo.metaData.containsKey(strArr[i12]) ? 1 : 0) << i12;
                                i6 |= (applicationInfo.metaData.getBoolean(strArr[i12], zArr[i12]) ? 1 : 0) << i12;
                            } catch (PackageManager.NameNotFoundException unused2) {
                            }
                        }
                    } else {
                        i6 = 0;
                        i9 = 0;
                    }
                    y1.k kVar = new y1.k(contextA, (String) null);
                    Bundle bundle = new Bundle();
                    bundle.putInt("usage", i9);
                    bundle.putInt("initial", i6);
                    bundle.putInt("previous", i11);
                    bundle.putInt("current", i10);
                    if (!((bundle.getInt("previous") & 2) != 0)) {
                        r rVar = r.f5918a;
                        if (!c()) {
                            return;
                        }
                    }
                    kVar.g(bundle, "fb_sdk_settings_changed");
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void i() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            Context contextA = r.a();
            ApplicationInfo applicationInfo = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128);
            d7.g.e("ctx.packageManager.getAp…ageManager.GET_META_DATA)", applicationInfo);
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                if (!bundle.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled")) {
                    Log.w("x1.j0", "You haven't set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                }
                if (b()) {
                    return;
                }
                Log.w("x1.j0", "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you're sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results.");
            }
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void k(i0 i0Var) {
        String str = "";
        if (v2.a.b(this)) {
            return;
        }
        try {
            l();
            try {
                SharedPreferences sharedPreferences = f5903i;
                if (sharedPreferences == null) {
                    d7.g.i("userSettingPref");
                    throw null;
                }
                String string = sharedPreferences.getString(i0Var.f5892b, "");
                if (string != null) {
                    str = string;
                }
                if (str.length() > 0) {
                    JSONObject jSONObject = new JSONObject(str);
                    i0Var.f5893c = Boolean.valueOf(jSONObject.getBoolean("value"));
                    i0Var.f5894d = jSONObject.getLong("last_timestamp");
                }
            } catch (JSONException unused) {
                r rVar = r.f5918a;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void l() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (f5897b.get()) {
            } else {
                throw new s("The UserSettingManager has not been initialized successfully");
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void m(i0 i0Var) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            l();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("value", i0Var.f5893c);
                jSONObject.put("last_timestamp", i0Var.f5894d);
                SharedPreferences sharedPreferences = f5903i;
                if (sharedPreferences == null) {
                    d7.g.i("userSettingPref");
                    throw null;
                }
                sharedPreferences.edit().putString(i0Var.f5892b, jSONObject.toString()).apply();
                h();
            } catch (Exception unused) {
                r rVar = r.f5918a;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
