package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d4 extends z5 {
    private static final d4 zzc;
    private static volatile w6 zzd;
    private f6 zze;
    private f6 zzf;
    private j6 zzg;
    private j6 zzh;

    static {
        d4 d4Var = new d4();
        zzc = d4Var;
        z5.g(d4.class, d4Var);
    }

    public d4() {
        n6 n6Var = n6.f1764e;
        this.zze = n6Var;
        this.zzf = n6Var;
        y6 y6Var = y6.f1995e;
        this.zzg = y6Var;
        this.zzh = y6Var;
    }

    public static d4 A() {
        return zzc;
    }

    public static void o(d4 d4Var) {
        d4Var.zzg = y6.f1995e;
    }

    public static void p(d4 d4Var, ArrayList arrayList) {
        j6 j6Var = d4Var.zzg;
        if (!((j5) j6Var).f1685a) {
            d4Var.zzg = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(arrayList, d4Var.zzg);
    }

    public static void r(d4 d4Var) {
        d4Var.zzf = n6.f1764e;
    }

    public static void s(d4 d4Var, Iterable iterable) {
        List list = d4Var.zzf;
        if (!((j5) list).f1685a) {
            d4Var.zzf = ((n6) list).zza(list.size() << 1);
        }
        i5.b(iterable, d4Var.zzf);
    }

    public static void u(d4 d4Var) {
        d4Var.zzh = y6.f1995e;
    }

    public static void v(d4 d4Var, Iterable iterable) {
        j6 j6Var = d4Var.zzh;
        if (!((j5) j6Var).f1685a) {
            d4Var.zzh = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(iterable, d4Var.zzh);
    }

    public static void x(d4 d4Var) {
        d4Var.zze = n6.f1764e;
    }

    public static void y(d4 d4Var, Iterable iterable) {
        List list = d4Var.zze;
        if (!((j5) list).f1685a) {
            d4Var.zze = ((n6) list).zza(list.size() << 1);
        }
        i5.b(iterable, d4Var.zze);
    }

    public static c4 z() {
        return (c4) zzc.j();
    }

    public final j6 B() {
        return this.zzg;
    }

    public final List C() {
        return this.zzf;
    }

    public final j6 D() {
        return this.zzh;
    }

    public final List E() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new d4();
            case 2:
                return new c4(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", o3.class, "zzh", f4.class});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (d4.class) {
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
        return this.zzg.size();
    }

    public final int q() {
        return this.zzf.size();
    }

    public final int t() {
        return this.zzh.size();
    }

    public final int w() {
        return this.zze.size();
    }
}
