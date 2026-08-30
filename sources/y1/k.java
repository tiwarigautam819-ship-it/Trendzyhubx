package y1;

import android.content.Context;
import android.os.Bundle;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import q2.g0;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f6128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f6129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f6130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f6131f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f6132g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f6134b;

    static {
        String canonicalName = k.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.AppEventsLoggerImpl";
        }
        f6128c = canonicalName;
        f6130e = new Object();
    }

    public k(String str, String str2) {
        q2.g.k();
        this.f6133a = str;
        Date date = x1.a.f5789l;
        x1.a aVarF = h8.b.f();
        if (aVarF == null || new Date().after(aVarF.f5792a) || !(str2 == null || str2.equals(aVarF.h))) {
            if (str2 == null) {
                x1.r.a();
                str2 = x1.r.b();
            }
            this.f6134b = new b(null, str2);
        } else {
            this.f6134b = new b(aVarF.f5796e, x1.r.b());
        }
        w.q();
    }

    public static final /* synthetic */ String a() {
        if (v2.a.b(k.class)) {
            return null;
        }
        try {
            return f6131f;
        } catch (Throwable th) {
            v2.a.a(th, k.class);
            return null;
        }
    }

    public static final /* synthetic */ ScheduledThreadPoolExecutor b() {
        if (v2.a.b(k.class)) {
            return null;
        }
        try {
            return f6129d;
        } catch (Throwable th) {
            v2.a.a(th, k.class);
            return null;
        }
    }

    public static final /* synthetic */ Object c() {
        if (v2.a.b(k.class)) {
            return null;
        }
        try {
            return f6130e;
        } catch (Throwable th) {
            v2.a.a(th, k.class);
            return null;
        }
    }

    public static /* synthetic */ void f(k kVar, String str, Double d6, Bundle bundle, boolean z5, UUID uuid) {
        if (v2.a.b(k.class)) {
            return;
        }
        try {
            kVar.e(str, d6, bundle, z5, uuid, null);
        } catch (Throwable th) {
            v2.a.a(th, k.class);
        }
    }

    public final void d(String str, Bundle bundle) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            try {
                f(this, str, null, bundle, false, k2.d.b());
            } catch (Throwable th) {
                th = th;
                v2.a.a(th, this);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(java.lang.String r14, java.lang.Double r15, android.os.Bundle r16, boolean r17, java.util.UUID r18, y1.o r19) {
        /*
            Method dump skipped, instruction units count: 455
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.k.e(java.lang.String, java.lang.Double, android.os.Bundle, boolean, java.util.UUID, y1.o):void");
    }

    public final void g(Bundle bundle, String str) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            try {
                f(this, str, null, bundle, true, k2.d.b());
            } catch (Throwable th) {
                th = th;
                v2.a.a(th, this);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public k(Context context, String str) {
        this(g0.l(context), str);
    }
}
