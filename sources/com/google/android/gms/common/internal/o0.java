package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.measurement.r0;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 extends k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1471d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f1472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile r0 f1473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a4.b f1474g;
    public final long h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f1475i;

    public o0(Context context, Looper looper) {
        n0 n0Var = new n0(this);
        this.f1472e = context.getApplicationContext();
        r0 r0Var = new r0(looper, n0Var);
        Looper.getMainLooper();
        this.f1473f = r0Var;
        this.f1474g = a4.b.b();
        this.h = 5000L;
        this.f1475i = 300000L;
    }

    @Override // com.google.android.gms.common.internal.k
    public final boolean d(k0 k0Var, g0 g0Var, String str, Executor executor) {
        boolean z5;
        synchronized (this.f1471d) {
            try {
                m0 m0Var = (m0) this.f1471d.get(k0Var);
                if (executor == null) {
                    executor = null;
                }
                if (m0Var == null) {
                    m0Var = new m0(this, k0Var);
                    m0Var.f1452a.put(g0Var, g0Var);
                    m0Var.a(str, executor);
                    this.f1471d.put(k0Var, m0Var);
                } else {
                    this.f1473f.removeMessages(0, k0Var);
                    if (m0Var.f1452a.containsKey(g0Var)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(k0Var.toString()));
                    }
                    m0Var.f1452a.put(g0Var, g0Var);
                    int i6 = m0Var.f1453b;
                    if (i6 == 1) {
                        g0Var.onServiceConnected(m0Var.f1457f, m0Var.f1455d);
                    } else if (i6 == 2) {
                        m0Var.a(str, executor);
                    }
                }
                z5 = m0Var.f1454c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z5;
    }
}
