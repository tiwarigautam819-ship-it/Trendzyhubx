package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile k1 f1690j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b4.b f1692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f1693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppMeasurementSdk f1694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f1695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1697g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile s0 f1698i;

    /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public k1(android.content.Context r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, android.os.Bundle r18) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.k1.<init>(android.content.Context, java.lang.String, java.lang.String, java.lang.String, android.os.Bundle):void");
    }

    public static k1 c(Context context, String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.d0.h(context);
        if (f1690j == null) {
            synchronized (k1.class) {
                try {
                    if (f1690j == null) {
                        f1690j = new k1(context, str, str2, str3, bundle);
                    }
                } finally {
                }
            }
        }
        return f1690j;
    }

    public final int a(String str) {
        t0 t0Var = new t0();
        f(new v1(this, str, t0Var, 1));
        Integer num = (Integer) t0.c(t0Var.b(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long b() {
        t0 t0Var = new t0();
        f(new u1(this, t0Var, 3));
        Long l4 = (Long) t0.c(t0Var.b(500L), Long.class);
        if (l4 != null) {
            return l4.longValue();
        }
        long jNanoTime = System.nanoTime();
        this.f1692b.getClass();
        long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
        int i6 = this.f1696f + 1;
        this.f1696f = i6;
        return jNextLong + ((long) i6);
    }

    public final List d(String str, String str2) {
        t0 t0Var = new t0();
        f(new o1(this, str, str2, t0Var, 0));
        List list = (List) t0.c(t0Var.b(5000L), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final Map e(String str, String str2, boolean z5) {
        t0 t0Var = new t0();
        f(new n1(this, str, str2, z5, t0Var));
        Bundle bundleB = t0Var.b(5000L);
        if (bundleB == null || bundleB.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap(bundleB.size());
        for (String str3 : bundleB.keySet()) {
            Object obj = bundleB.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void f(g1 g1Var) {
        this.f1693c.execute(g1Var);
    }

    public final void g(zzjl zzjlVar) {
        com.google.android.gms.common.internal.d0.h(zzjlVar);
        synchronized (this.f1695e) {
            for (int i6 = 0; i6 < this.f1695e.size(); i6++) {
                try {
                    if (zzjlVar.equals(((Pair) this.f1695e.get(i6)).first)) {
                        Log.w(this.f1691a, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            h1 h1Var = new h1(zzjlVar);
            this.f1695e.add(new Pair(zzjlVar, h1Var));
            if (this.f1698i != null) {
                try {
                    this.f1698i.registerOnMeasurementEventListener(h1Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f1691a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            f(new y1(this, h1Var, 1));
        }
    }

    public final void h(zzjm zzjmVar) {
        i1 i1Var = new i1(zzjmVar);
        if (this.f1698i != null) {
            try {
                this.f1698i.setEventInterceptor(i1Var);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                Log.w(this.f1691a, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        f(new q1(this, i1Var, 1));
    }

    public final void i(Exception exc, boolean z5, boolean z8) {
        this.f1697g |= z5;
        String str = this.f1691a;
        if (z5) {
            Log.w(str, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z8) {
            f(new v1(this, "Error with data collection. Data lost.", exc));
        }
        Log.w(str, "Error with data collection. Data lost.", exc);
    }

    public final void j(zzjl zzjlVar) {
        Pair pair;
        com.google.android.gms.common.internal.d0.h(zzjlVar);
        synchronized (this.f1695e) {
            int i6 = 0;
            while (true) {
                try {
                    if (i6 >= this.f1695e.size()) {
                        pair = null;
                        break;
                    } else {
                        if (zzjlVar.equals(((Pair) this.f1695e.get(i6)).first)) {
                            pair = (Pair) this.f1695e.get(i6);
                            break;
                        }
                        i6++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pair == null) {
                Log.w(this.f1691a, "OnEventListener had not been registered.");
                return;
            }
            this.f1695e.remove(pair);
            h1 h1Var = (h1) pair.second;
            if (this.f1698i != null) {
                try {
                    this.f1698i.unregisterOnMeasurementEventListener(h1Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f1691a, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            f(new y1(this, h1Var, 0));
        }
    }
}
