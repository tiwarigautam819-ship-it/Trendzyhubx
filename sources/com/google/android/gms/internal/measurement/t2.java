package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t2 extends z5 {
    private static final t2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private j6 zzf;
    private j6 zzg;
    private j6 zzh;
    private boolean zzi;
    private j6 zzj;

    static {
        t2 t2Var = new t2();
        zzc = t2Var;
        z5.g(t2.class, t2Var);
    }

    public t2() {
        y6 y6Var = y6.f1995e;
        this.zzf = y6Var;
        this.zzg = y6Var;
        this.zzh = y6Var;
        this.zzj = y6Var;
    }

    public static t2 n() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (e3.f1576a[i6 - 1]) {
            case 1:
                return new t2();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zze", "zzf", p2.class, "zzg", q2.class, "zzh", s2.class, "zzi", "zzj", p2.class});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (t2.class) {
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

    public final j6 o() {
        return this.zzh;
    }

    public final List p() {
        return this.zzf;
    }

    public final List q() {
        return this.zzg;
    }

    public final List r() {
        return this.zzj;
    }

    public final boolean s() {
        return this.zzi;
    }

    public final boolean t() {
        return (this.zze & 1) != 0;
    }
}
