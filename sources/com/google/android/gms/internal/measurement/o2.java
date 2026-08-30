package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o2 implements d6 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o2 f1780b = new o2(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o2 f1781c = new o2(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o2 f1782d = new o2(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o2 f1783e = new o2(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final o2 f1784f = new o2(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final o2 f1785g = new o2(5);
    public static final o2 h = new o2(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final o2 f1786i = new o2(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1787a;

    public /* synthetic */ o2(int i6) {
        this.f1787a = i6;
    }

    @Override // com.google.android.gms.internal.measurement.d6
    public final boolean zza(int i6) {
        m2 m2Var;
        switch (this.f1787a) {
            case 0:
                if (a1.a.d(i6) != 0) {
                }
                break;
            case 1:
                switch (i6) {
                    case 0:
                        m2Var = m2.UNKNOWN_MATCH_TYPE;
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
                if (m2Var != null) {
                }
                break;
            case 2:
                if (i6 == 0 || i6 == 1 || i6 == 2) {
                }
                break;
            case 3:
                if (r2.a(i6) != null) {
                }
                break;
            case 4:
                if (i6 == 0 || i6 == 1 || i6 == 2 || i6 == 3 || i6 == 4 || i6 == 5) {
                }
                break;
            case 5:
                if (i6 == 0 || i6 == 1) {
                }
                break;
            case 6:
                if (i6 == 1 || i6 == 2) {
                }
                break;
            default:
                if (a1.a.e(i6) != 0) {
                }
                break;
        }
        return true;
    }
}
