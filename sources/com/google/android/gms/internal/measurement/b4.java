package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b4 extends z5 {
    private static final b4 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf = 1;
    private j6 zzg = y6.f1995e;

    static {
        b4 b4Var = new b4();
        zzc = b4Var;
        z5.g(b4.class, b4Var);
    }

    public static void n(b4 b4Var, s3 s3Var) {
        j6 j6Var = b4Var.zzg;
        if (!((j5) j6Var).f1685a) {
            b4Var.zzg = j6Var.zza(j6Var.size() << 1);
        }
        b4Var.zzg.add(s3Var);
    }

    public static a4 o() {
        return (a4) zzc.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new b4();
            case 2:
                return new a4(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zze", "zzf", o2.h, "zzg", s3.class});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (b4.class) {
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
}
