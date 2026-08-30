package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i4 extends z5 {
    private static final i4 zzc;
    private static volatile w6 zzd;
    private j6 zze = y6.f1995e;

    static {
        i4 i4Var = new i4();
        zzc = i4Var;
        z5.g(i4.class, i4Var);
    }

    public static i4 o() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (m4.f1735a[i6 - 1]) {
            case 1:
                return new i4();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", j4.class});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (i4.class) {
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
        return this.zze.size();
    }

    public final List p() {
        return this.zze;
    }
}
