package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p2 extends z5 {
    private static final p2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        p2 p2Var = new p2();
        zzc = p2Var;
        z5.g(p2.class, p2Var);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (e3.f1576a[i6 - 1]) {
            case 1:
                return new p2();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", o2.f1783e, "zzg", o2.f1782d});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (p2.class) {
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
        int i6;
        int i9 = this.zzg;
        if (i9 != 0) {
            i6 = 2;
            if (i9 != 1) {
                i6 = i9 != 2 ? 0 : 3;
            }
        } else {
            i6 = 1;
        }
        if (i6 == 0) {
            return 1;
        }
        return i6;
    }

    public final r2 o() {
        r2 r2VarA = r2.a(this.zzf);
        return r2VarA == null ? r2.CONSENT_TYPE_UNSPECIFIED : r2VarA;
    }
}
