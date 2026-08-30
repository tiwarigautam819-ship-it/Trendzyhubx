package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k3 extends z5 {
    private static final k3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        k3 k3Var = new k3();
        zzc = k3Var;
        z5.g(k3.class, k3Var);
    }

    public static j3 n() {
        return (j3) zzc.j();
    }

    public static /* synthetic */ void o(k3 k3Var, boolean z5) {
        k3Var.zze |= 32;
        k3Var.zzk = z5;
    }

    public static /* synthetic */ void p(k3 k3Var, boolean z5) {
        k3Var.zze |= 16;
        k3Var.zzj = z5;
    }

    public static k3 q() {
        return zzc;
    }

    public static /* synthetic */ void r(k3 k3Var, boolean z5) {
        k3Var.zze |= 1;
        k3Var.zzf = z5;
    }

    public static /* synthetic */ void s(k3 k3Var, boolean z5) {
        k3Var.zze |= 64;
        k3Var.zzl = z5;
    }

    public static /* synthetic */ void u(k3 k3Var, boolean z5) {
        k3Var.zze |= 2;
        k3Var.zzg = z5;
    }

    public static /* synthetic */ void w(k3 k3Var, boolean z5) {
        k3Var.zze |= 4;
        k3Var.zzh = z5;
    }

    public static /* synthetic */ void y(k3 k3Var, boolean z5) {
        k3Var.zze |= 8;
        k3Var.zzi = z5;
    }

    public final boolean A() {
        return this.zzg;
    }

    public final boolean B() {
        return this.zzh;
    }

    public final boolean C() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new k3();
            case 2:
                return new j3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (k3.class) {
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

    public final boolean t() {
        return this.zzk;
    }

    public final boolean v() {
        return this.zzj;
    }

    public final boolean x() {
        return this.zzf;
    }

    public final boolean z() {
        return this.zzl;
    }
}
