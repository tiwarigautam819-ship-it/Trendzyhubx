package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l2 extends z5 {
    private static final l2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private h2 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        l2 l2Var = new l2();
        zzc = l2Var;
        z5.g(l2.class, l2Var);
    }

    public static /* synthetic */ void o(l2 l2Var, String str) {
        l2Var.zze |= 2;
        l2Var.zzg = str;
    }

    public static k2 q() {
        return (k2) zzc.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new l2();
            case 2:
                return new k2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (l2.class) {
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

    public final h2 p() {
        h2 h2Var = this.zzh;
        return h2Var == null ? h2.o() : h2Var;
    }

    public final String r() {
        return this.zzg;
    }

    public final boolean s() {
        return this.zzi;
    }

    public final boolean t() {
        return this.zzj;
    }

    public final boolean u() {
        return this.zzk;
    }

    public final boolean v() {
        return (this.zze & 1) != 0;
    }

    public final boolean w() {
        return (this.zze & 32) != 0;
    }
}
