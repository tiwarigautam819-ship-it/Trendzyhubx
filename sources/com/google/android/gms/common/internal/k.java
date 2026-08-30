package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1445a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static o0 f1446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HandlerThread f1447c;

    public static o0 a(Context context) {
        synchronized (f1445a) {
            try {
                if (f1446b == null) {
                    f1446b = new o0(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f1446b;
    }

    public static HandlerThread b() {
        synchronized (f1445a) {
            try {
                HandlerThread handlerThread = f1447c;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f1447c = handlerThread2;
                handlerThread2.start();
                return f1447c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(String str, String str2, ServiceConnection serviceConnection, boolean z5) {
        k0 k0Var = new k0(str, str2, z5);
        o0 o0Var = (o0) this;
        d0.i("ServiceConnection must not be null", serviceConnection);
        synchronized (o0Var.f1471d) {
            try {
                m0 m0Var = (m0) o0Var.f1471d.get(k0Var);
                if (m0Var == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: ".concat(k0Var.toString()));
                }
                if (!m0Var.f1452a.containsKey(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(k0Var.toString()));
                }
                m0Var.f1452a.remove(serviceConnection);
                if (m0Var.f1452a.isEmpty()) {
                    o0Var.f1473f.sendMessageDelayed(o0Var.f1473f.obtainMessage(0, k0Var), o0Var.h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract boolean d(k0 k0Var, g0 g0Var, String str, Executor executor);
}
