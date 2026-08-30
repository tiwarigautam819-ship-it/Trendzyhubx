package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q3 extends z5 {
    private static final q3 zzc;
    private static volatile w6 zzd;
    private int zze;
    private j6 zzf = y6.f1995e;
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        q3 q3Var = new q3();
        zzc = q3Var;
        z5.g(q3.class, q3Var);
    }

    public static p3 A() {
        return (p3) zzc.j();
    }

    public static /* synthetic */ void p(int i6, q3 q3Var) {
        q3Var.G();
        q3Var.zzf.remove(i6);
    }

    public static /* synthetic */ void q(long j3, q3 q3Var) {
        q3Var.zze |= 4;
        q3Var.zzi = j3;
    }

    public static void r(q3 q3Var) {
        q3Var.zzf = y6.f1995e;
    }

    public static /* synthetic */ void s(q3 q3Var, int i6, u3 u3Var) {
        q3Var.G();
        q3Var.zzf.set(i6, u3Var);
    }

    public static /* synthetic */ void t(q3 q3Var, u3 u3Var) {
        u3Var.getClass();
        q3Var.G();
        q3Var.zzf.add(u3Var);
    }

    public static /* synthetic */ void u(q3 q3Var, Iterable iterable) {
        q3Var.G();
        i5.b(iterable, q3Var.zzf);
    }

    public static /* synthetic */ void v(q3 q3Var, String str) {
        str.getClass();
        q3Var.zze |= 1;
        q3Var.zzg = str;
    }

    public static /* synthetic */ void x(long j3, q3 q3Var) {
        q3Var.zze |= 2;
        q3Var.zzh = j3;
    }

    public final String B() {
        return this.zzg;
    }

    public final j6 C() {
        return this.zzf;
    }

    public final boolean D() {
        return (this.zze & 8) != 0;
    }

    public final boolean E() {
        return (this.zze & 4) != 0;
    }

    public final boolean F() {
        return (this.zze & 2) != 0;
    }

    public final void G() {
        j6 j6Var = this.zzf;
        if (((j5) j6Var).f1685a) {
            return;
        }
        this.zzf = j6Var.zza(j6Var.size() << 1);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (f3.f1631a[i6 - 1]) {
            case 1:
                return new q3();
            case 2:
                return new p3(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", u3.class, "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (q3.class) {
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
        return this.zzj;
    }

    public final u3 o(int i6) {
        return (u3) this.zzf.get(i6);
    }

    public final int w() {
        return this.zzf.size();
    }

    public final long y() {
        return this.zzi;
    }

    public final long z() {
        return this.zzh;
    }
}
