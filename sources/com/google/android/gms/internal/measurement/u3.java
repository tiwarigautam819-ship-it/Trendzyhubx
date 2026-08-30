package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u3 extends z5 {
    private static final u3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private j6 zzk = y6.f1995e;

    static {
        u3 u3Var = new u3();
        zzc = u3Var;
        z5.g(u3.class, u3Var);
    }

    public static /* synthetic */ void A(u3 u3Var) {
        u3Var.zze &= -3;
        u3Var.zzg = zzc.zzg;
    }

    public static t3 B() {
        return (t3) zzc.j();
    }

    public static /* synthetic */ void o(u3 u3Var, double d6) {
        u3Var.zze |= 16;
        u3Var.zzj = d6;
    }

    public static /* synthetic */ void p(u3 u3Var, long j3) {
        u3Var.zze |= 4;
        u3Var.zzh = j3;
    }

    public static void q(u3 u3Var, u3 u3Var2) {
        j6 j6Var = u3Var.zzk;
        if (!((j5) j6Var).f1685a) {
            u3Var.zzk = j6Var.zza(j6Var.size() << 1);
        }
        u3Var.zzk.add(u3Var2);
    }

    public static /* synthetic */ void r(u3 u3Var, String str) {
        str.getClass();
        u3Var.zze |= 1;
        u3Var.zzf = str;
    }

    public static void s(u3 u3Var, ArrayList arrayList) {
        j6 j6Var = u3Var.zzk;
        if (!((j5) j6Var).f1685a) {
            u3Var.zzk = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(arrayList, u3Var.zzk);
    }

    public static /* synthetic */ void t(u3 u3Var) {
        u3Var.zze &= -17;
        u3Var.zzj = 0.0d;
    }

    public static /* synthetic */ void v(u3 u3Var) {
        u3Var.zze &= -5;
        u3Var.zzh = 0L;
    }

    public static /* synthetic */ void w(u3 u3Var, String str) {
        str.getClass();
        u3Var.zze |= 2;
        u3Var.zzg = str;
    }

    public static void y(u3 u3Var) {
        u3Var.zzk = y6.f1995e;
    }

    public final String C() {
        return this.zzf;
    }

    public final String D() {
        return this.zzg;
    }

    public final List E() {
        return this.zzk;
    }

    public final boolean F() {
        return (this.zze & 16) != 0;
    }

    public final boolean G() {
        return (this.zze & 8) != 0;
    }

    public final boolean H() {
        return (this.zze & 4) != 0;
    }

    public final boolean I() {
        return (this.zze & 1) != 0;
    }

    public final boolean J() {
        return (this.zze & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new u3();
            case 2:
                return new t3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", u3.class});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (u3.class) {
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

    public final double n() {
        return this.zzj;
    }

    public final float u() {
        return this.zzi;
    }

    public final int x() {
        return this.zzk.size();
    }

    public final long z() {
        return this.zzh;
    }
}
