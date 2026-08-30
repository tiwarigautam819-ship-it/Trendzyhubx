package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f1585a;

    public e7(Unsafe unsafe) {
        this.f1585a = unsafe;
    }

    public abstract double a(long j3, Object obj);

    public abstract void b(Object obj, long j3, byte b3);

    public abstract void c(Object obj, long j3, double d6);

    public abstract void d(Object obj, long j3, float f9);

    public final void e(Object obj, long j3, int i6) {
        this.f1585a.putInt(obj, j3, i6);
    }

    public final void f(Object obj, long j3, long j8) {
        this.f1585a.putLong(obj, j3, j8);
    }

    public abstract void g(Object obj, long j3, boolean z5);

    public abstract float h(long j3, Object obj);

    public abstract boolean i(long j3, Object obj);

    public final int j(long j3, Object obj) {
        return this.f1585a.getInt(obj, j3);
    }

    public final long k(long j3, Object obj) {
        return this.f1585a.getLong(obj, j3);
    }
}
