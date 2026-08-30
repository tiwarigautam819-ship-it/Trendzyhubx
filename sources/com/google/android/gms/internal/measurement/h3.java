package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h3 extends z5 {
    private static final h3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private long zzi;
    private long zzm;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzj = "";
    private String zzk = "";
    private String zzl = "";

    static {
        h3 h3Var = new h3();
        zzc = h3Var;
        z5.g(h3.class, h3Var);
    }

    public static h3 A() {
        return zzc;
    }

    public static /* synthetic */ void B(h3 h3Var) {
        h3Var.zze &= -33;
        h3Var.zzk = zzc.zzk;
    }

    public static /* synthetic */ void C(h3 h3Var, String str) {
        h3Var.zze |= 32;
        h3Var.zzk = str;
    }

    public static /* synthetic */ void E(h3 h3Var) {
        h3Var.zze &= -17;
        h3Var.zzj = zzc.zzj;
    }

    public static /* synthetic */ void F(h3 h3Var, String str) {
        h3Var.zze |= 16;
        h3Var.zzj = str;
    }

    public static /* synthetic */ void o(h3 h3Var) {
        h3Var.zze &= -5;
        h3Var.zzh = zzc.zzh;
    }

    public static /* synthetic */ void p(h3 h3Var, long j3) {
        h3Var.zze |= 8;
        h3Var.zzi = j3;
    }

    public static /* synthetic */ void q(h3 h3Var, String str) {
        h3Var.zze |= 4;
        h3Var.zzh = str;
    }

    public static /* synthetic */ void s(h3 h3Var) {
        h3Var.zze &= -3;
        h3Var.zzg = zzc.zzg;
    }

    public static /* synthetic */ void t(h3 h3Var, long j3) {
        h3Var.zze |= 128;
        h3Var.zzm = j3;
    }

    public static /* synthetic */ void u(h3 h3Var, String str) {
        h3Var.zze |= 2;
        h3Var.zzg = str;
    }

    public static /* synthetic */ void v(h3 h3Var) {
        h3Var.zze &= -2;
        h3Var.zzf = zzc.zzf;
    }

    public static /* synthetic */ void w(h3 h3Var, String str) {
        h3Var.zze |= 1;
        h3Var.zzf = str;
    }

    public static g3 x() {
        return (g3) zzc.j();
    }

    public static /* synthetic */ void y(h3 h3Var) {
        h3Var.zze &= -65;
        h3Var.zzl = zzc.zzl;
    }

    public static /* synthetic */ void z(h3 h3Var, String str) {
        h3Var.zze |= 64;
        h3Var.zzl = str;
    }

    public final String D() {
        return this.zzh;
    }

    public final String G() {
        return this.zzg;
    }

    public final String H() {
        return this.zzf;
    }

    public final String I() {
        return this.zzl;
    }

    public final String J() {
        return this.zzk;
    }

    public final String K() {
        return this.zzj;
    }

    public final boolean L() {
        return (this.zze & 4) != 0;
    }

    public final boolean M() {
        return (this.zze & 2) != 0;
    }

    public final boolean N() {
        return (this.zze & 1) != 0;
    }

    public final boolean O() {
        return (this.zze & 8) != 0;
    }

    public final boolean P() {
        return (this.zze & 128) != 0;
    }

    public final boolean Q() {
        return (this.zze & 64) != 0;
    }

    public final boolean R() {
        return (this.zze & 32) != 0;
    }

    public final boolean S() {
        return (this.zze & 16) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new h3();
            case 2:
                return new g3(zzc);
            case 3:
                return new a7(zzc, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (h3.class) {
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

    public final long n() {
        return this.zzi;
    }

    public final long r() {
        return this.zzm;
    }
}
