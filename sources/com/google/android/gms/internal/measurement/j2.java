package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j2 extends z5 {
    private static final j2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        j2 j2Var = new j2();
        zzc = j2Var;
        z5.g(j2.class, j2Var);
    }

    public static j2 o() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new j2();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", o2.f1780b, "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (j2.class) {
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
        int iD = a1.a.d(this.zzf);
        if (iD == 0) {
            return 1;
        }
        return iD;
    }

    public final String p() {
        return this.zzh;
    }

    public final String q() {
        return this.zzj;
    }

    public final String r() {
        return this.zzi;
    }

    public final boolean s() {
        return this.zzg;
    }

    public final boolean t() {
        return (this.zze & 1) != 0;
    }

    public final boolean u() {
        return (this.zze & 4) != 0;
    }

    public final boolean v() {
        return (this.zze & 2) != 0;
    }

    public final boolean w() {
        return (this.zze & 16) != 0;
    }

    public final boolean x() {
        return (this.zze & 8) != 0;
    }
}
