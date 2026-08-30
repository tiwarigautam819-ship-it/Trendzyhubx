package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w2 extends z5 {
    private static final w2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        w2 w2Var = new w2();
        zzc = w2Var;
        z5.g(w2.class, w2Var);
    }

    public static /* synthetic */ void o(w2 w2Var, String str) {
        str.getClass();
        w2Var.zze |= 1;
        w2Var.zzf = str;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (e3.f1576a[i6 - 1]) {
            case 1:
                return new w2();
            case 2:
                return new v2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (w2.class) {
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
        return this.zzi;
    }

    public final String p() {
        return this.zzf;
    }

    public final boolean q() {
        return this.zzg;
    }

    public final boolean r() {
        return this.zzh;
    }

    public final boolean s() {
        return (this.zze & 2) != 0;
    }

    public final boolean t() {
        return (this.zze & 4) != 0;
    }

    public final boolean u() {
        return (this.zze & 8) != 0;
    }
}
