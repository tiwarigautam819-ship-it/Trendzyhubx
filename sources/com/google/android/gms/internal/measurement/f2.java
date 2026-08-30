package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f2 extends z5 {
    private static final f2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private j6 zzh = y6.f1995e;
    private boolean zzi;
    private j2 zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    static {
        f2 f2Var = new f2();
        zzc = f2Var;
        z5.g(f2.class, f2Var);
    }

    public static void p(f2 f2Var, int i6, h2 h2Var) {
        j6 j6Var = f2Var.zzh;
        if (!((j5) j6Var).f1685a) {
            f2Var.zzh = j6Var.zza(j6Var.size() << 1);
        }
        f2Var.zzh.set(i6, h2Var);
    }

    public static /* synthetic */ void q(f2 f2Var, String str) {
        f2Var.zze |= 2;
        f2Var.zzg = str;
    }

    public static e2 s() {
        return (e2) zzc.j();
    }

    public final boolean A() {
        return (this.zze & 1) != 0;
    }

    public final boolean B() {
        return (this.zze & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new f2();
            case 2:
                return new e2(zzc);
            case 3:
                return new a7(zzc, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", h2.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (f2.class) {
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
        return this.zzh.size();
    }

    public final h2 o(int i6) {
        return (h2) this.zzh.get(i6);
    }

    public final int r() {
        return this.zzf;
    }

    public final j2 t() {
        j2 j2Var = this.zzj;
        return j2Var == null ? j2.o() : j2Var;
    }

    public final String u() {
        return this.zzg;
    }

    public final j6 v() {
        return this.zzh;
    }

    public final boolean w() {
        return this.zzk;
    }

    public final boolean x() {
        return this.zzl;
    }

    public final boolean y() {
        return this.zzm;
    }

    public final boolean z() {
        return (this.zze & 8) != 0;
    }
}
