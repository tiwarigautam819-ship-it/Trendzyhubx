package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d2 extends z5 {
    private static final d2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private j6 zzg;
    private j6 zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        d2 d2Var = new d2();
        zzc = d2Var;
        z5.g(d2.class, d2Var);
    }

    public d2() {
        y6 y6Var = y6.f1995e;
        this.zzg = y6Var;
        this.zzh = y6Var;
    }

    public static void p(d2 d2Var, int i6, f2 f2Var) {
        j6 j6Var = d2Var.zzh;
        if (!((j5) j6Var).f1685a) {
            d2Var.zzh = j6Var.zza(j6Var.size() << 1);
        }
        d2Var.zzh.set(i6, f2Var);
    }

    public static void q(d2 d2Var, int i6, l2 l2Var) {
        j6 j6Var = d2Var.zzg;
        if (!((j5) j6Var).f1685a) {
            d2Var.zzg = j6Var.zza(j6Var.size() << 1);
        }
        d2Var.zzg.set(i6, l2Var);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new d2();
            case 2:
                return new c2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", l2.class, "zzh", f2.class, "zzi", "zzj"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (d2.class) {
                    try {
                        a6Var = zzd;
                        if (a6Var == null) {
                            a6Var = new a6(6);
                            zzd = a6Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return a6Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int n() {
        return this.zzf;
    }

    public final f2 o(int i6) {
        return (f2) this.zzh.get(i6);
    }

    public final int r() {
        return this.zzh.size();
    }

    public final l2 s(int i6) {
        return (l2) this.zzg.get(i6);
    }

    public final int t() {
        return this.zzg.size();
    }

    public final List v() {
        return this.zzh;
    }

    public final List w() {
        return this.zzg;
    }

    public final boolean x() {
        return (this.zze & 1) != 0;
    }
}
