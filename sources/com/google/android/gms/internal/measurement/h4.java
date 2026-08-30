package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h4 extends z5 {
    private static final h4 zzc;
    private static volatile w6 zzd;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    static {
        h4 h4Var = new h4();
        zzc = h4Var;
        z5.g(h4.class, h4Var);
    }

    public static /* synthetic */ void o(h4 h4Var, double d6) {
        h4Var.zze |= 32;
        h4Var.zzk = d6;
    }

    public static /* synthetic */ void p(h4 h4Var, long j3) {
        h4Var.zze |= 8;
        h4Var.zzi = j3;
    }

    public static /* synthetic */ void q(h4 h4Var, String str) {
        str.getClass();
        h4Var.zze |= 2;
        h4Var.zzg = str;
    }

    public static /* synthetic */ void r(h4 h4Var) {
        h4Var.zze &= -33;
        h4Var.zzk = 0.0d;
    }

    public static /* synthetic */ void t(h4 h4Var) {
        h4Var.zze &= -9;
        h4Var.zzi = 0L;
    }

    public static /* synthetic */ void u(h4 h4Var, long j3) {
        h4Var.zze |= 1;
        h4Var.zzf = j3;
    }

    public static /* synthetic */ void v(h4 h4Var, String str) {
        str.getClass();
        h4Var.zze |= 4;
        h4Var.zzh = str;
    }

    public static /* synthetic */ void x(h4 h4Var) {
        h4Var.zze &= -5;
        h4Var.zzh = zzc.zzh;
    }

    public static g4 z() {
        return (g4) zzc.j();
    }

    public final String A() {
        return this.zzg;
    }

    public final String B() {
        return this.zzh;
    }

    public final boolean C() {
        return (this.zze & 32) != 0;
    }

    public final boolean D() {
        return (this.zze & 16) != 0;
    }

    public final boolean E() {
        return (this.zze & 8) != 0;
    }

    public final boolean F() {
        return (this.zze & 1) != 0;
    }

    public final boolean G() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new h4();
            case 2:
                return new g4(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (h4.class) {
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
        return this.zzk;
    }

    public final float s() {
        return this.zzj;
    }

    public final long w() {
        return this.zzi;
    }

    public final long y() {
        return this.zzf;
    }
}
