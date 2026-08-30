package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e5 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f1577g = new Object();
    public static volatile v4 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicInteger f1578i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f5 f1579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile int f1582d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f1583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f1584f;

    static {
        new AtomicReference();
        f1578i = new AtomicInteger();
    }

    public e5(f5 f5Var, String str, Object obj, int i6) {
        this.f1584f = i6;
        f5Var.getClass();
        if (f5Var.f1632a == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f1579a = f5Var;
        this.f1580b = str;
        this.f1581c = obj;
    }

    public final Object a() {
        int i6 = f1578i.get();
        if (this.f1582d < i6) {
            synchronized (this) {
                try {
                    if (this.f1582d < i6) {
                        v4 v4Var = h;
                        q4.b bVar = q4.a.f4852a;
                        String str = null;
                        if (v4Var != null) {
                            bVar = (q4.b) v4Var.f1961b.get();
                            if (bVar.b()) {
                                w4 w4Var = (w4) bVar.a();
                                f5 f5Var = this.f1579a;
                                Uri uri = f5Var.f1632a;
                                String str2 = f5Var.f1634c;
                                String str3 = this.f1580b;
                                w4Var.getClass();
                                s.j jVar = uri != null ? (s.j) w4Var.f1970a.get(uri.toString()) : null;
                                if (jVar != null) {
                                    if (str2 != null) {
                                        str3 = str2 + str3;
                                    }
                                    str = (String) jVar.get(str3);
                                }
                            }
                        }
                        if (!(v4Var != null)) {
                            throw new IllegalStateException("Must call PhenotypeFlagInitializer.maybeInit() first");
                        }
                        this.f1579a.getClass();
                        Object objD = d(v4Var);
                        if (objD == null && (objD = b(v4Var)) == null) {
                            objD = this.f1581c;
                        }
                        if (bVar.b()) {
                            objD = str == null ? this.f1581c : c(str);
                        }
                        this.f1583e = objD;
                        this.f1582d = i6;
                    }
                } finally {
                }
            }
        }
        return this.f1583e;
    }

    public final Object b(v4 v4Var) {
        y4 y4Var;
        String strF;
        if (!this.f1579a.f1635d) {
            Context context = v4Var.f1960a;
            synchronized (y4.class) {
                try {
                    if (y4.f1988d == null) {
                        y4.f1988d = z.c.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new y4(context, 0) : new y4(0);
                    }
                    y4Var = y4.f1988d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            f5 f5Var = this.f1579a;
            if (f5Var.f1635d) {
                strF = null;
            } else {
                String str = f5Var.f1633b;
                strF = this.f1580b;
                if (str == null || !str.isEmpty()) {
                    strF = q2.x.f(str, strF);
                }
            }
            Object objZza = y4Var.zza(strF);
            if (objZza != null) {
                return c(objZza);
            }
        }
        return null;
    }

    public final Object c(Object obj) {
        switch (this.f1584f) {
            case 0:
                if (!(obj instanceof Long)) {
                    if (obj instanceof String) {
                        try {
                            break;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    String str = this.f1579a.f1634c;
                    String strF = this.f1580b;
                    if (str == null || !str.isEmpty()) {
                        strF = q2.x.f(str, strF);
                    }
                    Log.e("PhenotypeFlag", "Invalid long value for " + strF + ": " + String.valueOf(obj));
                }
                break;
            case 1:
                if (!(obj instanceof Double)) {
                    if (!(obj instanceof Float)) {
                        if (obj instanceof String) {
                            try {
                                break;
                            } catch (NumberFormatException unused2) {
                            }
                        }
                        String str2 = this.f1579a.f1634c;
                        String strF2 = this.f1580b;
                        if (str2 == null || !str2.isEmpty()) {
                            strF2 = q2.x.f(str2, strF2);
                        }
                        Log.e("PhenotypeFlag", "Invalid double value for " + strF2 + ": " + String.valueOf(obj));
                    }
                }
                break;
            case 2:
                if (!(obj instanceof Boolean)) {
                    if (obj instanceof String) {
                        String str3 = (String) obj;
                        if (!n4.f1758c.matcher(str3).matches()) {
                            if (n4.f1759d.matcher(str3).matches()) {
                            }
                        }
                    }
                    String str4 = this.f1579a.f1634c;
                    String strF3 = this.f1580b;
                    if (str4 == null || !str4.isEmpty()) {
                        strF3 = q2.x.f(str4, strF3);
                    }
                    Log.e("PhenotypeFlag", "Invalid boolean value for " + strF3 + ": " + String.valueOf(obj));
                    break;
                }
                break;
            default:
                if (obj instanceof String) {
                }
                break;
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:19|(1:21)(7:22|(1:24)(1:25)|26|(0)|35|36|37)|30|57|31|32|(1:34)|35|36|37) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(com.google.android.gms.internal.measurement.v4 r9) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.e5.d(com.google.android.gms.internal.measurement.v4):java.lang.Object");
    }
}
