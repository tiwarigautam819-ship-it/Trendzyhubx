package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k4 extends z5 {
    private static final k4 zzc;
    private static volatile w6 zzd;
    private int zze;
    private j6 zzf = y6.f1995e;
    private i4 zzg;

    static {
        k4 k4Var = new k4();
        zzc = k4Var;
        z5.g(k4.class, k4Var);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (m4.f1735a[i6 - 1]) {
            case 1:
                return new k4();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", l4.class, "zzg"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (k4.class) {
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

    public final i4 n() {
        i4 i4Var = this.zzg;
        return i4Var == null ? i4.o() : i4Var;
    }

    public final j6 o() {
        return this.zzf;
    }
}
