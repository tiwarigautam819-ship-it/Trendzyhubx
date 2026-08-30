package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m3 extends z5 {
    private static final m3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private d4 zzg;
    private d4 zzh;
    private boolean zzi;

    static {
        m3 m3Var = new m3();
        zzc = m3Var;
        z5.g(m3.class, m3Var);
    }

    public static /* synthetic */ void o(m3 m3Var, int i6) {
        m3Var.zze |= 1;
        m3Var.zzf = i6;
    }

    public static /* synthetic */ void p(m3 m3Var, d4 d4Var) {
        m3Var.zzg = d4Var;
        m3Var.zze |= 2;
    }

    public static /* synthetic */ void q(m3 m3Var, boolean z5) {
        m3Var.zze |= 8;
        m3Var.zzi = z5;
    }

    public static l3 r() {
        return (l3) zzc.j();
    }

    public static /* synthetic */ void s(m3 m3Var, d4 d4Var) {
        d4Var.getClass();
        m3Var.zzh = d4Var;
        m3Var.zze |= 4;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new m3();
            case 2:
                return new l3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (m3.class) {
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

    public final d4 t() {
        d4 d4Var = this.zzg;
        return d4Var == null ? d4.A() : d4Var;
    }

    public final d4 u() {
        d4 d4Var = this.zzh;
        return d4Var == null ? d4.A() : d4Var;
    }

    public final boolean v() {
        return this.zzi;
    }

    public final boolean w() {
        return (this.zze & 1) != 0;
    }

    public final boolean x() {
        return (this.zze & 8) != 0;
    }

    public final boolean y() {
        return (this.zze & 4) != 0;
    }
}
