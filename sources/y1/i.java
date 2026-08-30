package y1;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import q2.g0;
import q2.w;
import x1.c0;
import x1.e0;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ScheduledFuture f6126c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile y2.p f6124a = new y2.p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScheduledExecutorService f6125b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i2.c f6127d = new i2.c(12);

    public static final z a(b bVar, s sVar, boolean z5, g.j jVar) {
        if (!v2.a.b(i.class)) {
            try {
                String str = bVar.f6108a;
                q2.t tVarK = w.k(str, false);
                String str2 = z.f5942j;
                z zVarV = x1.w.v(null, String.format("%s/activities", Arrays.copyOf(new Object[]{str}, 1)), null, null);
                zVarV.f5952i = true;
                Bundle bundle = zVarV.f5948d;
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putString("access_token", bVar.f6109b);
                synchronized (k.c()) {
                    v2.a.b(k.class);
                }
                String str3 = k.f6128c;
                String strO = x1.w.o();
                if (strO != null) {
                    bundle.putString("install_referrer", strO);
                }
                zVarV.f5948d = bundle;
                int iE = sVar.e(zVarV, x1.r.a(), tVarK != null ? tVarK.f4810a : false, z5);
                if (iE != 0) {
                    jVar.f2742a += iE;
                    zVarV.j(new x1.c(bVar, zVarV, sVar, jVar, 1));
                    return zVarV;
                }
            } catch (Throwable th) {
                v2.a.a(th, i.class);
                return null;
            }
        }
        return null;
    }

    public static final ArrayList b(y2.p pVar, g.j jVar) {
        if (v2.a.b(i.class)) {
            return null;
        }
        try {
            d7.g.f("appEventCollection", pVar);
            boolean zF = x1.r.f(x1.r.a());
            ArrayList arrayList = new ArrayList();
            for (b bVar : pVar.e()) {
                s sVarB = pVar.b(bVar);
                if (sVarB == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                z zVarA = a(bVar, sVarB, zF, jVar);
                if (zVarA != null) {
                    arrayList.add(zVarA);
                    if (a2.c.f27a) {
                        HashSet hashSet = a2.j.f43a;
                        g0.K(new a2.g(0, zVarA));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            v2.a.a(th, i.class);
            return null;
        }
    }

    public static final void c(final int i6) {
        if (v2.a.b(i.class)) {
            return;
        }
        try {
            a1.a.n(i6, "reason");
            f6125b.execute(new Runnable() { // from class: y1.h
                @Override // java.lang.Runnable
                public final void run() {
                    int i9 = i6;
                    if (v2.a.b(i.class)) {
                        return;
                    }
                    try {
                        a1.a.n(i9, "$reason");
                        i.d(i9);
                    } catch (Throwable th) {
                        v2.a.a(th, i.class);
                    }
                }
            });
        } catch (Throwable th) {
            v2.a.a(th, i.class);
        }
    }

    public static final void d(int i6) {
        if (v2.a.b(i.class)) {
            return;
        }
        try {
            a1.a.n(i6, "reason");
            f6124a.a(g.u());
            try {
                g.j jVarF = f(i6, f6124a);
                if (jVarF != null) {
                    Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", jVarF.f2742a);
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", (m) jVarF.f2743b);
                    y0.b.a(x1.r.a()).c(intent);
                }
            } catch (Exception e9) {
                Log.w("y1.i", "Caught unexpected exception while flushing app events: ", e9);
            }
        } catch (Throwable th) {
            v2.a.a(th, i.class);
        }
    }

    public static final void e(b bVar, z zVar, c0 c0Var, s sVar, g.j jVar) {
        m mVar;
        m mVar2 = m.f6137c;
        if (v2.a.b(i.class)) {
            return;
        }
        try {
            x1.o oVar = c0Var.f5818c;
            m mVar3 = m.f6135a;
            boolean z5 = true;
            if (oVar == null) {
                mVar = mVar3;
            } else if (oVar.f5909b == -1) {
                mVar = mVar2;
            } else {
                String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{c0Var.toString(), oVar.toString()}, 2));
                mVar = m.f6136b;
            }
            synchronized (x1.r.f5919b) {
            }
            if (oVar == null) {
                z5 = false;
            }
            sVar.b(z5);
            if (mVar == mVar2) {
                x1.r.c().execute(new a2.i(bVar, 23, sVar));
            }
            if (mVar == mVar3 || ((m) jVar.f2743b) == mVar2) {
                return;
            }
            jVar.f2743b = mVar;
        } catch (Throwable th) {
            v2.a.a(th, i.class);
        }
    }

    public static final g.j f(int i6, y2.p pVar) {
        String str;
        if (!v2.a.b(i.class)) {
            try {
                a1.a.n(i6, "reason");
                d7.g.f("appEventCollection", pVar);
                g.j jVar = new g.j();
                jVar.f2743b = m.f6135a;
                ArrayList arrayListB = b(pVar, jVar);
                if (!arrayListB.isEmpty()) {
                    o3.a aVar = q2.z.f4846c;
                    e0 e0Var = e0.f5840d;
                    Integer numValueOf = Integer.valueOf(jVar.f2742a);
                    switch (i6) {
                        case 1:
                            str = "EXPLICIT";
                            break;
                        case 2:
                            str = "TIMER";
                            break;
                        case 3:
                            str = "SESSION_CHANGE";
                            break;
                        case 4:
                            str = "PERSISTED_EVENTS";
                            break;
                        case 5:
                            str = "EVENT_THRESHOLD";
                            break;
                        case 6:
                            str = "EAGER_FLUSHING_EVENT";
                            break;
                        default:
                            throw null;
                    }
                    int i9 = 0;
                    o3.a.j(e0Var, "y1.i", "Flushing %d events due to %s.", numValueOf, str);
                    int size = arrayListB.size();
                    while (i9 < size) {
                        Object obj = arrayListB.get(i9);
                        i9++;
                        ((z) obj).c();
                    }
                    return jVar;
                }
            } catch (Throwable th) {
                v2.a.a(th, i.class);
                return null;
            }
        }
        return null;
    }
}
