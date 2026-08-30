package k2;

import android.content.Context;
import android.os.Bundle;
import g.m0;
import java.util.Arrays;
import java.util.Locale;
import q2.z;
import x1.e0;
import x1.j0;
import x1.r;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f3550a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f3551b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    public static final void b(Context context, String str, String str2) {
        if (v2.a.b(o.class)) {
            return;
        }
        try {
            d7.g.f("context", context);
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", "Unclassified");
            y1.k kVar = new y1.k(str, str2);
            r rVar = r.f5918a;
            if (j0.c()) {
                kVar.d("fb_mobile_activate_app", bundle);
            }
            String str3 = y1.k.f6128c;
            if (w.n() == 2 || v2.a.b(kVar)) {
                return;
            }
            try {
                y1.i.c(1);
            } catch (Throwable th) {
                v2.a.a(th, kVar);
            }
        } catch (Throwable th2) {
            v2.a.a(th2, o.class);
        }
    }

    public static final void d(String str, n nVar, String str2) {
        int i6;
        String string;
        Long l4;
        if (v2.a.b(o.class) || nVar == null) {
            return;
        }
        try {
            Long l8 = (Long) nVar.f3547d;
            if (l8 == null) {
                l8 = 0L;
            }
            long jLongValue = l8.longValue();
            o oVar = f3550a;
            if (jLongValue < 0) {
                oVar.c();
                jLongValue = 0;
            }
            Long l9 = (Long) nVar.f3545b;
            long jLongValue2 = (l9 == null || (l4 = (Long) nVar.f3546c) == null) ? 0L : l4.longValue() - l9.longValue();
            if (jLongValue2 < 0) {
                oVar.c();
                jLongValue2 = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("fb_mobile_app_interruptions", nVar.f3544a);
            Locale locale = Locale.ROOT;
            if (v2.a.b(o.class)) {
                i6 = 0;
            } else {
                i6 = 0;
                while (true) {
                    try {
                        long[] jArr = f3551b;
                        if (i6 >= 19 || jArr[i6] >= jLongValue) {
                            break;
                        } else {
                            i6++;
                        }
                    } catch (Throwable th) {
                        v2.a.a(th, o.class);
                        i6 = 0;
                    }
                }
            }
            bundle.putString("fb_mobile_time_between_sessions", String.format(locale, "session_quanta_%d", Arrays.copyOf(new Object[]{Integer.valueOf(i6)}, 1)));
            m0 m0Var = (m0) nVar.f3549f;
            if (m0Var == null || (string = m0Var.toString()) == null) {
                string = "Unclassified";
            }
            bundle.putString("fb_mobile_launch_source", string);
            Long l10 = (Long) nVar.f3546c;
            bundle.putLong("_logTime", (l10 != null ? l10.longValue() : 0L) / ((long) 1000));
            y1.k kVar = new y1.k(str, str2);
            double d6 = jLongValue2 / 1000;
            r rVar = r.f5918a;
            if (!j0.c() || v2.a.b(kVar)) {
                return;
            }
            try {
                y1.k.f(kVar, "fb_mobile_deactivate_app", Double.valueOf(d6), bundle, false, d.b());
            } catch (Throwable th2) {
                v2.a.a(th2, kVar);
            }
        } catch (Throwable th3) {
            v2.a.a(th3, o.class);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0032 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #1 {, blocks: (B:11:0x0016, B:15:0x0020, B:23:0x0032, B:29:0x0044, B:21:0x002d, B:26:0x0040, B:18:0x0029), top: B:40:0x0016, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public k2.i a() {
        /*
            r3 = this;
            java.lang.Class<k2.i> r0 = k2.i.class
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto Lb
        L9:
            r0 = r2
            goto L13
        Lb:
            k2.i r0 = k2.i.f3534c     // Catch: java.lang.Throwable -> Le
            goto L13
        Le:
            r1 = move-exception
            v2.a.a(r1, r0)
            goto L9
        L13:
            if (r0 != 0) goto L4e
            monitor-enter(r3)
            java.util.concurrent.atomic.AtomicBoolean r0 = x1.r.f5931o     // Catch: java.lang.Throwable -> L48
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L20
            monitor-exit(r3)
            return r2
        L20:
            java.lang.Class<k2.i> r0 = k2.i.class
            boolean r1 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L29
            goto L30
        L29:
            k2.i r2 = k2.i.f3534c     // Catch: java.lang.Throwable -> L2c
            goto L30
        L2c:
            r1 = move-exception
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L48
        L30:
            if (r2 != 0) goto L4a
            k2.i r2 = new k2.i     // Catch: java.lang.Throwable -> L48
            r2.<init>()     // Catch: java.lang.Throwable -> L48
            java.lang.Class<k2.i> r0 = k2.i.class
            boolean r1 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L40
            goto L4a
        L40:
            k2.i.f3534c = r2     // Catch: java.lang.Throwable -> L43
            goto L4a
        L43:
            r1 = move-exception
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L48
            goto L4a
        L48:
            r0 = move-exception
            goto L4c
        L4a:
            monitor-exit(r3)
            return r2
        L4c:
            monitor-exit(r3)
            throw r0
        L4e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.o.a():k2.i");
    }

    public void c() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            o3.a aVar = z.f4846c;
            o3.a.i(e0.f5840d, "k2.o", "Clock skew detected");
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
