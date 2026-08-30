package q2;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.Arrays;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import k2.f;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g;
import s6.o;
import x1.e0;
import x1.l;
import x1.r;
import x1.w;
import x1.z;
import y1.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4801a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f4802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4804d;

    public /* synthetic */ r(Context context, String str, String str2) {
        this.f4802b = context;
        this.f4803c = str;
        this.f4804d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        JSONObject jSONObject;
        final int i6 = 0;
        switch (this.f4801a) {
            case 0:
                String str = this.f4803c;
                Context context = this.f4802b;
                String str2 = this.f4804d;
                d7.g.f("$applicationId", str);
                JSONObject jSONObjectA = s.a();
                if (jSONObjectA.length() != 0) {
                    s.d(str, jSONObjectA);
                    context.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(str2, jSONObjectA.toString()).apply();
                    s.f4808d = Long.valueOf(System.currentTimeMillis());
                }
                s.e();
                s.f4805a.set(false);
                return;
            default:
                Context context2 = this.f4802b;
                String str3 = this.f4803c;
                String str4 = this.f4804d;
                w wVar = w.f4840a;
                SharedPreferences sharedPreferences = context2.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                t tVarE = null;
                String string = sharedPreferences.getString(str3, null);
                if (!g0.B(string)) {
                    if (string == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    try {
                        jSONObject = new JSONObject(string);
                    } catch (JSONException unused) {
                        x1.r rVar = x1.r.f5918a;
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        tVarE = w.e(str4, jSONObject);
                    }
                    break;
                }
                JSONObject jSONObjectA2 = w.a();
                w.e(str4, jSONObjectA2);
                sharedPreferences.edit().putString(str3, jSONObjectA2.toString()).apply();
                final int i9 = 1;
                if (tVarE != null) {
                    String str5 = tVarE.f4817i;
                    if (!w.f4845f && str5.length() > 0) {
                        w.f4845f = true;
                        Log.w("w", str5);
                    }
                }
                JSONObject jSONObjectA3 = s.a();
                x1.r.a().getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{str4}, 1)), jSONObjectA3.toString()).apply();
                s.d(str4, jSONObjectA3);
                y1.n nVar = k2.k.f3540a;
                Context contextA = x1.r.a();
                final String strB = x1.r.b();
                if (x1.j0.c()) {
                    if (contextA instanceof Application) {
                        Application application = (Application) contextA;
                        String str6 = y1.k.f6128c;
                        if (!x1.r.f5931o.get()) {
                            throw new x1.l("The Facebook sdk must be initialized before calling activateApp");
                        }
                        if (!y1.c.f6112c) {
                            if (y1.k.b() == null) {
                                x1.w.q();
                            }
                            ScheduledThreadPoolExecutor scheduledThreadPoolExecutorB = y1.k.b();
                            if (scheduledThreadPoolExecutorB == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            scheduledThreadPoolExecutorB.execute(new i2.c(11));
                        }
                        y1.t tVar = y1.t.f6151a;
                        if (!v2.a.b(y1.t.class)) {
                            try {
                                if (!y1.t.f6153c.get()) {
                                    y1.t.f6151a.b();
                                    break;
                                }
                            } catch (Throwable th) {
                                v2.a.a(th, y1.t.class);
                            }
                        }
                        if (!v2.a.b(x1.r.class)) {
                            try {
                                final Context applicationContext = application.getApplicationContext();
                                if (applicationContext != null) {
                                    if (!s.b("app_events_killswitch", x1.r.b(), false)) {
                                        x1.r.c().execute(new Runnable() { // from class: m2.a
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                e eVar = e.f4251a;
                                                int i10 = i9;
                                                String str7 = strB;
                                                Context context3 = applicationContext;
                                                switch (i10) {
                                                    case 0:
                                                        if (v2.a.b(b.class)) {
                                                            return;
                                                        }
                                                        try {
                                                            SharedPreferences sharedPreferences2 = context3.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                                                            String strConcat = str7.concat("pingForOnDevice");
                                                            if (sharedPreferences2.getLong(strConcat, 0L) == 0) {
                                                                if (!v2.a.b(e.class)) {
                                                                    try {
                                                                        eVar.b(1, str7, o.f5282a);
                                                                    } catch (Throwable th2) {
                                                                        v2.a.a(th2, e.class);
                                                                    }
                                                                    break;
                                                                }
                                                                SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                                                                editorEdit.putLong(strConcat, System.currentTimeMillis());
                                                                editorEdit.apply();
                                                                return;
                                                            }
                                                            return;
                                                        } catch (Throwable th3) {
                                                            v2.a.a(th3, b.class);
                                                            return;
                                                        }
                                                    default:
                                                        r rVar2 = r.f5918a;
                                                        if (v2.a.b(rVar2)) {
                                                            return;
                                                        }
                                                        try {
                                                            q2.c cVarB = g.b(context3);
                                                            SharedPreferences sharedPreferences3 = context3.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                                                            String strConcat2 = str7.concat("ping");
                                                            long j3 = sharedPreferences3.getLong(strConcat2, 0L);
                                                            try {
                                                                JSONObject jSONObjectA4 = k2.g.a(f.f3528a, cVarB, t4.b.g(context3), r.f(context3), context3);
                                                                String str8 = k.f6128c;
                                                                String strO = w.o();
                                                                if (strO != null) {
                                                                    jSONObjectA4.put("install_referrer", strO);
                                                                }
                                                                String str9 = String.format("%s/activities", Arrays.copyOf(new Object[]{str7}, 1));
                                                                r.f5934r.getClass();
                                                                String str10 = z.f5942j;
                                                                z zVarV = w.v(null, str9, jSONObjectA4, null);
                                                                if (j3 == 0 && zVarV.c().f5818c == null) {
                                                                    SharedPreferences.Editor editorEdit2 = sharedPreferences3.edit();
                                                                    editorEdit2.putLong(strConcat2, System.currentTimeMillis());
                                                                    editorEdit2.apply();
                                                                    o3.a aVar = q2.z.f4846c;
                                                                    o3.a.i(e0.f5840d, "x1.r", "MOBILE_APP_INSTALL has been logged");
                                                                    return;
                                                                }
                                                                return;
                                                            } catch (JSONException e9) {
                                                                throw new l("An error occurred while publishing install.", e9);
                                                            }
                                                        } catch (Exception unused2) {
                                                            return;
                                                        } catch (Throwable th4) {
                                                            v2.a.a(th4, rVar2);
                                                            return;
                                                        }
                                                }
                                            }
                                        });
                                    }
                                    if (q.b(o.OnDeviceEventProcessing) && m2.b.a() && !v2.a.b(m2.b.class)) {
                                        try {
                                            final Context contextA2 = x1.r.a();
                                            x1.r.c().execute(new Runnable() { // from class: m2.a
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    e eVar = e.f4251a;
                                                    int i10 = i6;
                                                    String str7 = strB;
                                                    Context context3 = contextA2;
                                                    switch (i10) {
                                                        case 0:
                                                            if (v2.a.b(b.class)) {
                                                                return;
                                                            }
                                                            try {
                                                                SharedPreferences sharedPreferences2 = context3.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                                                                String strConcat = str7.concat("pingForOnDevice");
                                                                if (sharedPreferences2.getLong(strConcat, 0L) == 0) {
                                                                    if (!v2.a.b(e.class)) {
                                                                        try {
                                                                            eVar.b(1, str7, o.f5282a);
                                                                        } catch (Throwable th2) {
                                                                            v2.a.a(th2, e.class);
                                                                        }
                                                                        break;
                                                                    }
                                                                    SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                                                                    editorEdit.putLong(strConcat, System.currentTimeMillis());
                                                                    editorEdit.apply();
                                                                    return;
                                                                }
                                                                return;
                                                            } catch (Throwable th3) {
                                                                v2.a.a(th3, b.class);
                                                                return;
                                                            }
                                                        default:
                                                            r rVar2 = r.f5918a;
                                                            if (v2.a.b(rVar2)) {
                                                                return;
                                                            }
                                                            try {
                                                                q2.c cVarB = g.b(context3);
                                                                SharedPreferences sharedPreferences3 = context3.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                                                                String strConcat2 = str7.concat("ping");
                                                                long j3 = sharedPreferences3.getLong(strConcat2, 0L);
                                                                try {
                                                                    JSONObject jSONObjectA4 = k2.g.a(f.f3528a, cVarB, t4.b.g(context3), r.f(context3), context3);
                                                                    String str8 = k.f6128c;
                                                                    String strO = w.o();
                                                                    if (strO != null) {
                                                                        jSONObjectA4.put("install_referrer", strO);
                                                                    }
                                                                    String str9 = String.format("%s/activities", Arrays.copyOf(new Object[]{str7}, 1));
                                                                    r.f5934r.getClass();
                                                                    String str10 = z.f5942j;
                                                                    z zVarV = w.v(null, str9, jSONObjectA4, null);
                                                                    if (j3 == 0 && zVarV.c().f5818c == null) {
                                                                        SharedPreferences.Editor editorEdit2 = sharedPreferences3.edit();
                                                                        editorEdit2.putLong(strConcat2, System.currentTimeMillis());
                                                                        editorEdit2.apply();
                                                                        o3.a aVar = q2.z.f4846c;
                                                                        o3.a.i(e0.f5840d, "x1.r", "MOBILE_APP_INSTALL has been logged");
                                                                        return;
                                                                    }
                                                                    return;
                                                                } catch (JSONException e9) {
                                                                    throw new l("An error occurred while publishing install.", e9);
                                                                }
                                                            } catch (Exception unused2) {
                                                                return;
                                                            } catch (Throwable th4) {
                                                                v2.a.a(th4, rVar2);
                                                                return;
                                                            }
                                                    }
                                                }
                                            });
                                        } catch (Throwable th2) {
                                            v2.a.a(th2, m2.b.class);
                                        }
                                    }
                                    break;
                                }
                            } catch (Throwable th3) {
                                v2.a.a(th3, x1.r.class);
                            }
                        }
                        k2.d.c(application, strB);
                        if (q.b(o.GPSPACAProcessing)) {
                            g2.b bVar = g2.b.f2851a;
                            if (!v2.a.b(bVar)) {
                                try {
                                    if (!g2.b.f2854d) {
                                        g2.b.a();
                                    }
                                    if (g2.b.f2853c) {
                                        bVar.b(strB, "fb_mobile_app_install");
                                        break;
                                    }
                                } catch (Throwable th4) {
                                    v2.a.a(th4, bVar);
                                }
                            }
                        }
                        if (q.b(o.GPSARATriggers)) {
                            f2.d.f2537a.d(strB, new y1.e("unknown", "MOBILE_INSTALL_EVENT", null, null, false, k2.d.f3525k == 0, k2.d.b(), null));
                        }
                    } else {
                        Log.w("k2.k", "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
                    }
                }
                w.f4843d.set(w.f4842c.containsKey(str4) ? v.f4837c : v.f4838d);
                wVar.j();
                return;
        }
    }

    public /* synthetic */ r(String str, Context context, String str2) {
        this.f4803c = str;
        this.f4802b = context;
        this.f4804d = str2;
    }
}
