package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y2 extends z5 {
    private static final y2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private long zzf;
    private String zzg = "";
    private int zzh;
    private j6 zzi;
    private j6 zzj;
    private j6 zzk;
    private String zzl;
    private boolean zzm;
    private j6 zzn;
    private j6 zzo;
    private String zzp;
    private String zzq;
    private t2 zzr;
    private a3 zzs;
    private d3 zzt;
    private b3 zzu;
    private z2 zzv;

    static {
        y2 y2Var = new y2();
        zzc = y2Var;
        z5.g(y2.class, y2Var);
    }

    public y2() {
        y6 y6Var = y6.f1995e;
        this.zzi = y6Var;
        this.zzj = y6Var;
        this.zzk = y6Var;
        this.zzl = "";
        this.zzn = y6Var;
        this.zzo = y6Var;
        this.zzp = "";
        this.zzq = "";
    }

    public static void p(y2 y2Var) {
        y2Var.zzk = y6.f1995e;
    }

    public static void q(y2 y2Var, int i6, w2 w2Var) {
        j6 j6Var = y2Var.zzj;
        if (!((j5) j6Var).f1685a) {
            y2Var.zzj = j6Var.zza(j6Var.size() << 1);
        }
        y2Var.zzj.set(i6, w2Var);
    }

    public static x2 u() {
        return (x2) zzc.j();
    }

    public static y2 v() {
        return zzc;
    }

    public final j6 A() {
        return this.zzo;
    }

    public final j6 B() {
        return this.zzn;
    }

    public final j6 C() {
        return this.zzi;
    }

    public final boolean D() {
        return (this.zze & 128) != 0;
    }

    public final boolean E() {
        return (this.zze & 2) != 0;
    }

    public final boolean F() {
        return (this.zze & 512) != 0;
    }

    public final boolean G() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (e3.f1576a[i6 - 1]) {
            case 1:
                return new y2();
            case 2:
                return new x2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", c3.class, "zzj", w2.class, "zzk", d2.class, "zzl", "zzm", "zzn", k4.class, "zzo", u2.class, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (y2.class) {
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
        return this.zzn.size();
    }

    public final w2 o(int i6) {
        return (w2) this.zzj.get(i6);
    }

    public final int r() {
        return this.zzj.size();
    }

    public final long s() {
        return this.zzf;
    }

    public final t2 t() {
        t2 t2Var = this.zzr;
        return t2Var == null ? t2.n() : t2Var;
    }

    public final d3 w() {
        d3 d3Var = this.zzt;
        return d3Var == null ? d3.o() : d3Var;
    }

    public final String x() {
        return this.zzg;
    }

    public final String y() {
        return this.zzp;
    }

    public final List z() {
        return this.zzk;
    }
}
