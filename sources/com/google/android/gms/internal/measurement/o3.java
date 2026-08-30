package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o3 extends z5 {
    private static final o3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        o3 o3Var = new o3();
        zzc = o3Var;
        z5.g(o3.class, o3Var);
    }

    public static /* synthetic */ void o(o3 o3Var, int i6) {
        o3Var.zze |= 1;
        o3Var.zzf = i6;
    }

    public static /* synthetic */ void p(o3 o3Var, long j3) {
        o3Var.zze |= 2;
        o3Var.zzg = j3;
    }

    public static n3 r() {
        return (n3) zzc.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new o3();
            case 2:
                return new n3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (o3.class) {
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

    public final long q() {
        return this.zzg;
    }

    public final boolean s() {
        return (this.zze & 2) != 0;
    }

    public final boolean t() {
        return (this.zze & 1) != 0;
    }
}
