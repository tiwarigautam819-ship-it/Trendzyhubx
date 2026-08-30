package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c7 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c7 f1549f = new c7(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f1552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1553d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1554e;

    public c7(int i6, int[] iArr, Object[] objArr, boolean z5) {
        this.f1550a = i6;
        this.f1551b = iArr;
        this.f1552c = objArr;
        this.f1554e = z5;
    }

    public static c7 e() {
        return new c7(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iW;
        int iU;
        int i6 = this.f1553d;
        if (i6 != -1) {
            return i6;
        }
        int iH = 0;
        for (int i9 = 0; i9 < this.f1550a; i9++) {
            int i10 = this.f1551b[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 != 0) {
                if (i12 == 1) {
                    ((Long) this.f1552c[i9]).getClass();
                    iH = a1.a.h(i11 << 3, 8, iH);
                } else if (i12 == 2) {
                    iH = q5.p(i11, (p5) this.f1552c[i9]) + iH;
                } else if (i12 == 3) {
                    iW = q5.v(i11) << 1;
                    iU = ((c7) this.f1552c[i9]).a();
                } else {
                    if (i12 != 5) {
                        int i13 = i6.f1676a;
                        throw new IllegalStateException(new l6("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.f1552c[i9]).getClass();
                    iH = a1.a.h(i11 << 3, 4, iH);
                }
            } else {
                long jLongValue = ((Long) this.f1552c[i9]).longValue();
                iW = q5.w(i11 << 3);
                iU = q5.u(jLongValue);
            }
            iH = iU + iW + iH;
        }
        this.f1553d = iH;
        return iH;
    }

    public final void b(int i6) {
        int[] iArr = this.f1551b;
        if (i6 > iArr.length) {
            int i9 = this.f1550a;
            int i10 = (i9 / 2) + i9;
            if (i10 >= i6) {
                i6 = i10;
            }
            if (i6 < 8) {
                i6 = 8;
            }
            this.f1551b = Arrays.copyOf(iArr, i6);
            this.f1552c = Arrays.copyOf(this.f1552c, i6);
        }
    }

    public final void c(int i6, Object obj) {
        if (!this.f1554e) {
            throw new UnsupportedOperationException();
        }
        b(this.f1550a + 1);
        int[] iArr = this.f1551b;
        int i9 = this.f1550a;
        iArr[i9] = i6;
        this.f1552c[i9] = obj;
        this.f1550a = i9 + 1;
    }

    public final void d(o6 o6Var) throws r5 {
        if (this.f1550a == 0) {
            return;
        }
        o6Var.getClass();
        q5 q5Var = (q5) o6Var.f1792a;
        for (int i6 = 0; i6 < this.f1550a; i6++) {
            int i9 = this.f1551b[i6];
            Object obj = this.f1552c[i6];
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i11 == 0) {
                q5Var.n(i10, ((Long) obj).longValue());
            } else if (i11 == 1) {
                q5Var.g(i10, ((Long) obj).longValue());
            } else if (i11 == 2) {
                p5 p5Var = (p5) obj;
                q5Var.r(i10, 2);
                q5Var.q(p5Var.e());
                q5Var.s(p5Var.f1808b, p5Var.f(), p5Var.e());
            } else if (i11 == 3) {
                q5Var.r(i10, 3);
                ((c7) obj).d(o6Var);
                q5Var.r(i10, 4);
            } else {
                if (i11 != 5) {
                    int i12 = i6.f1676a;
                    throw new RuntimeException(new l6("Protocol message tag had invalid wire type."));
                }
                q5Var.f(i10, ((Integer) obj).intValue());
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c7)) {
            return false;
        }
        c7 c7Var = (c7) obj;
        int i6 = this.f1550a;
        if (i6 == c7Var.f1550a) {
            int[] iArr = this.f1551b;
            int[] iArr2 = c7Var.f1551b;
            int i9 = 0;
            while (true) {
                if (i9 >= i6) {
                    Object[] objArr = this.f1552c;
                    Object[] objArr2 = c7Var.f1552c;
                    int i10 = this.f1550a;
                    for (int i11 = 0; i11 < i10; i11++) {
                        if (objArr[i11].equals(objArr2[i11])) {
                        }
                    }
                    return true;
                }
                if (iArr[i9] != iArr2[i9]) {
                    break;
                }
                i9++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i6 = this.f1550a;
        int i9 = (i6 + 527) * 31;
        int[] iArr = this.f1551b;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i6; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = (i9 + i10) * 31;
        Object[] objArr = this.f1552c;
        int i13 = this.f1550a;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }
}
