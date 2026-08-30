package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n2 extends z5 {
    private static final n2 zzc;
    private static volatile w6 zzd;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private j6 zzi = y6.f1995e;

    static {
        n2 n2Var = new n2();
        zzc = n2Var;
        z5.g(n2.class, n2Var);
    }

    public static n2 p() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final Object e(int i6) {
        w6 a6Var;
        switch (b2.f1531a[i6 - 1]) {
            case 1:
                return new n2();
            case 2:
                return new i2(zzc);
            case 3:
                return new a7(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", o2.f1781c, "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                w6 w6Var = zzd;
                if (w6Var != null) {
                    return w6Var;
                }
                synchronized (n2.class) {
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
        return this.zzi.size();
    }

    public final m2 o() {
        m2 m2Var;
        int i6 = this.zzf;
        m2 m2Var2 = m2.UNKNOWN_MATCH_TYPE;
        switch (i6) {
            case 0:
                m2Var = m2Var2;
                break;
            case 1:
                m2Var = m2.REGEXP;
                break;
            case 2:
                m2Var = m2.BEGINS_WITH;
                break;
            case 3:
                m2Var = m2.ENDS_WITH;
                break;
            case 4:
                m2Var = m2.PARTIAL;
                break;
            case 5:
                m2Var = m2.EXACT;
                break;
            case 6:
                m2Var = m2.IN_LIST;
                break;
            default:
                m2Var = null;
                break;
        }
        return m2Var == null ? m2Var2 : m2Var;
    }

    public final String q() {
        return this.zzg;
    }

    public final List r() {
        return this.zzi;
    }

    public final boolean s() {
        return this.zzh;
    }

    public final boolean t() {
        return (this.zze & 4) != 0;
    }

    public final boolean u() {
        return (this.zze & 2) != 0;
    }

    public final boolean v() {
        return (this.zze & 1) != 0;
    }
}
