package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s3 extends z5 {
    private static final s3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        s3 s3Var = new s3();
        zzc = s3Var;
        z5.g(s3.class, s3Var);
    }

    public static /* synthetic */ void n(s3 s3Var, long j3) {
        s3Var.zze |= 2;
        s3Var.zzg = j3;
    }

    public static /* synthetic */ void o(s3 s3Var, String str) {
        str.getClass();
        s3Var.zze |= 1;
        s3Var.zzf = str;
    }

    public static r3 p() {
        return (r3) zzc.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new s3();
            case 2:
                return new r3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (s3.class) {
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
