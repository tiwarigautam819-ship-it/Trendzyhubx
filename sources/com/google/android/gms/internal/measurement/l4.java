package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l4 extends z5 {
    private static final l4 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private j6 zzg = y6.f1995e;
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        l4 l4Var = new l4();
        zzc = l4Var;
        z5.g(l4.class, l4Var);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (m4.f1735a[i6 - 1]) {
            case 1:
                return new l4();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", o2.f1786i, "zzg", l4.class, "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (l4.class) {
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

    public final int o() {
        int iE = a1.a.e(this.zzf);
        if (iE == 0) {
            return 1;
        }
        return iE;
    }

    public final String p() {
        return this.zzh;
    }

    public final String q() {
        return this.zzi;
    }

    public final List r() {
        return this.zzg;
    }

    public final boolean s() {
        return this.zzj;
    }

    public final boolean t() {
        return (this.zze & 8) != 0;
    }

    public final boolean u() {
        return (this.zze & 16) != 0;
    }

    public final boolean v() {
        return (this.zze & 4) != 0;
    }
}
