package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f4 extends z5 {
    private static final f4 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private f6 zzg = n6.f1764e;

    static {
        f4 f4Var = new f4();
        zzc = f4Var;
        z5.g(f4.class, f4Var);
    }

    public static /* synthetic */ void p(f4 f4Var, int i6) {
        f4Var.zze |= 1;
        f4Var.zzf = i6;
    }

    public static void q(f4 f4Var, List list) {
        List list2 = f4Var.zzg;
        if (!((j5) list2).f1685a) {
            f4Var.zzg = ((n6) list2).zza(list2.size() << 1);
        }
        i5.b(list, f4Var.zzg);
    }

    public static e4 s() {
        return (e4) zzc.j();
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new f4();
            case 2:
                return new e4(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (f4.class) {
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
        return this.zzg.size();
    }

    public final long o(int i6) {
        return ((n6) this.zzg).b(i6);
    }

    public final int r() {
        return this.zzf;
    }

    public final List t() {
        return this.zzg;
    }

    public final boolean u() {
        return (this.zze & 1) != 0;
    }
}
