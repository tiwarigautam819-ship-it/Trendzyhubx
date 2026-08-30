package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v6 implements b7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i5 f1963a;

    public v6(i5 i5Var) {
        this.f1963a = i5Var;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final boolean a(Object obj) {
        a1.a.o(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final int b(z5 z5Var) {
        return z5Var.zzb.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void c(Object obj) {
        c7 c7Var = ((z5) obj).zzb;
        if (c7Var.f1554e) {
            c7Var.f1554e = false;
        }
        a1.a.o(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final int d(z5 z5Var) {
        c7 c7Var = z5Var.zzb;
        int i6 = c7Var.f1553d;
        if (i6 != -1) {
            return i6;
        }
        int iP = 0;
        for (int i9 = 0; i9 < c7Var.f1550a; i9++) {
            int i10 = c7Var.f1551b[i9] >>> 3;
            iP += q5.p(3, (p5) c7Var.f1552c[i9]) + a1.a.h(i10, q5.w(16), q5.w(8) << 1);
        }
        c7Var.f1553d = iP;
        return iP;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void e(Object obj, Object obj2) {
        a5.f(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final boolean f(z5 z5Var, z5 z5Var2) {
        return z5Var.zzb.equals(z5Var2.zzb);
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void g(Object obj, byte[] bArr, int i6, int i9, m5 m5Var) {
        z5 z5Var = (z5) obj;
        if (z5Var.zzb == c7.f1549f) {
            z5Var.zzb = c7.e();
        }
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final void h(Object obj, o6 o6Var) {
        a1.a.o(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.b7
    public final z5 zza() {
        i5 i5Var = this.f1963a;
        return i5Var instanceof z5 ? (z5) ((z5) i5Var).e(4) : ((y5) ((z5) i5Var).e(5)).d();
    }
}
