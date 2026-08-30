package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1452a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1453b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public IBinder f1455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k0 f1456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ComponentName f1457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ o0 f1458g;

    public m0(o0 o0Var, k0 k0Var) {
        this.f1458g = o0Var;
        this.f1456e = k0Var;
    }

    public final void a(String str, Executor executor) throws Throwable {
        a4.b bVar;
        Context context;
        this.f1453b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (Build.VERSION.SDK_INT >= 31) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            o0 o0Var = this.f1458g;
            bVar = o0Var.f1474g;
            context = o0Var.f1472e;
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean zD = bVar.d(context, str, this.f1456e.a(context), this, 4225, executor);
            this.f1454c = zD;
            if (zD) {
                this.f1458g.f1473f.sendMessageDelayed(this.f1458g.f1473f.obtainMessage(1, this.f1456e), this.f1458g.f1475i);
            } else {
                this.f1453b = 2;
                try {
                    o0 o0Var2 = this.f1458g;
                    o0Var2.f1474g.c(o0Var2.f1472e, this);
                } catch (IllegalArgumentException unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        } catch (Throwable th2) {
            th = th2;
            Throwable th3 = th;
            StrictMode.setVmPolicy(vmPolicy);
            throw th3;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f1458g.f1471d) {
            try {
                this.f1458g.f1473f.removeMessages(1, this.f1456e);
                this.f1455d = iBinder;
                this.f1457f = componentName;
                Iterator it = this.f1452a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f1453b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f1458g.f1471d) {
            try {
                this.f1458g.f1473f.removeMessages(1, this.f1456e);
                this.f1455d = null;
                this.f1457f = componentName;
                Iterator it = this.f1452a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f1453b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
