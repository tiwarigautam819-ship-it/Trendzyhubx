package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h2 extends z5 {
    private static final h2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private n2 zzf;
    private j2 zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        h2 h2Var = new h2();
        zzc = h2Var;
        z5.g(h2.class, h2Var);
    }

    public static /* synthetic */ void n(h2 h2Var, String str) {
        h2Var.zze |= 8;
        h2Var.zzi = str;
    }

    public static h2 o() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new h2();
            case 2:
                return new g2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (h2.class) {
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

    public final j2 p() {
        j2 j2Var = this.zzg;
        return j2Var == null ? j2.o() : j2Var;
    }

    public final n2 q() {
        n2 n2Var = this.zzf;
        return n2Var == null ? n2.p() : n2Var;
    }

    public final String r() {
        return this.zzi;
    }

    public final boolean s() {
        return this.zzh;
    }

    public final boolean t() {
        return (this.zze & 4) != 0;
    }

    public final boolean u() {
        return (this.zze & 2) != 0;
    }

    public final boolean v() {
        return (this.zze & 8) != 0;
    }

    public final boolean w() {
        return (this.zze & 1) != 0;
    }
}
