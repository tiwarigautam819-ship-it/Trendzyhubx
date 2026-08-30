package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o0 f1467a;

    public /* synthetic */ n0(o0 o0Var) {
        this.f1467a = o0Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i6 = message.what;
        if (i6 == 0) {
            synchronized (this.f1467a.f1471d) {
                try {
                    k0 k0Var = (k0) message.obj;
                    m0 m0Var = (m0) this.f1467a.f1471d.get(k0Var);
                    if (m0Var != null && m0Var.f1452a.isEmpty()) {
                        if (m0Var.f1454c) {
                            m0Var.f1458g.f1473f.removeMessages(1, m0Var.f1456e);
                            o0 o0Var = m0Var.f1458g;
                            o0Var.f1474g.c(o0Var.f1472e, m0Var);
                            m0Var.f1454c = false;
                            m0Var.f1453b = 2;
                        }
                        this.f1467a.f1471d.remove(k0Var);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i6 != 1) {
            return false;
        }
        synchronized (this.f1467a.f1471d) {
            try {
                k0 k0Var2 = (k0) message.obj;
                m0 m0Var2 = (m0) this.f1467a.f1471d.get(k0Var2);
                if (m0Var2 != null && m0Var2.f1453b == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(k0Var2)), new Exception());
                    ComponentName componentName = m0Var2.f1457f;
                    if (componentName == null) {
                        k0Var2.getClass();
                        componentName = null;
                    }
                    if (componentName == null) {
                        String str = k0Var2.f1450b;
                        d0.h(str);
                        componentName = new ComponentName(str, "unknown");
                    }
                    m0Var2.onServiceDisconnected(componentName);
                }
            } finally {
            }
        }
        return true;
    }
}
