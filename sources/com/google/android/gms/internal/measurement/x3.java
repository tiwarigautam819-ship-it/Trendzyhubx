package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x3 extends z5 {
    private static final x3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private j6 zzf = y6.f1995e;
    private String zzg = "";
    private String zzh = "";
    private int zzi;

    static {
        x3 x3Var = new x3();
        zzc = x3Var;
        z5.g(x3.class, x3Var);
    }

    public static w3 o(x3 x3Var) {
        y5 y5VarJ = zzc.j();
        if (!y5VarJ.f1992a.equals(x3Var)) {
            if (!y5VarJ.f1993b.m()) {
                y5VarJ.f();
            }
            y5.a(y5VarJ.f1993b, x3Var);
        }
        return (w3) y5VarJ;
    }

    public static void q(x3 x3Var, z3 z3Var) {
        j6 j6Var = x3Var.zzf;
        if (!((j5) j6Var).f1685a) {
            x3Var.zzf = j6Var.zza(j6Var.size() << 1);
        }
        x3Var.zzf.add(z3Var);
    }

    public static /* synthetic */ void r(x3 x3Var, String str) {
        str.getClass();
        x3Var.zze |= 1;
        x3Var.zzg = str;
    }

    public static void s(x3 x3Var, ArrayList arrayList) {
        j6 j6Var = x3Var.zzf;
        if (!((j5) j6Var).f1685a) {
            x3Var.zzf = j6Var.zza(j6Var.size() << 1);
        }
        i5.b(arrayList, x3Var.zzf);
    }

    public static void t(x3 x3Var) {
        x3Var.zzf = y6.f1995e;
    }

    public static /* synthetic */ void u(x3 x3Var, String str) {
        str.getClass();
        x3Var.zze |= 2;
        x3Var.zzh = str;
    }

    public static w3 v() {
        return (w3) zzc.j();
    }

    public final boolean A() {
        return (this.zze & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new x3();
            case 2:
                return new w3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zze", "zzf", z3.class, "zzg", "zzh", "zzi", o2.f1785g});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (x3.class) {
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
        return this.zzf.size();
    }

    public final z3 p() {
        return (z3) this.zzf.get(0);
    }

    public final String w() {
        return this.zzg;
    }

    public final String x() {
        return this.zzh;
    }

    public final List y() {
        return this.zzf;
    }

    public final boolean z() {
        return (this.zze & 1) != 0;
    }
}
