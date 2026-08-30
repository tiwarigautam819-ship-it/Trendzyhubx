package com.google.android.gms.internal.measurement;

import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ k1 f1652d;

    public g1(k1 k1Var, boolean z5) {
        this.f1652d = k1Var;
        k1Var.f1692b.getClass();
        this.f1649a = System.currentTimeMillis();
        k1Var.f1692b.getClass();
        this.f1650b = SystemClock.elapsedRealtime();
        this.f1651c = z5;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        k1 k1Var = this.f1652d;
        if (k1Var.f1697g) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e9) {
            k1Var.i(e9, false, this.f1651c);
            b();
        }
    }

    public void b() {
    }
}
