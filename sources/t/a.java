package t;

import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f5294a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object[] f5295b = new Object[0];

    public static final int a(int i6, int i9, int[] iArr) {
        g.f("array", iArr);
        int i10 = i6 - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            int i13 = iArr[i12];
            if (i13 < i9) {
                i11 = i12 + 1;
            } else {
                if (i13 <= i9) {
                    return i12;
                }
                i10 = i12 - 1;
            }
        }
        return ~i11;
    }

    public static final int b(long[] jArr, int i6, long j3) {
        g.f("array", jArr);
        int i9 = i6 - 1;
        int i10 = 0;
        while (i10 <= i9) {
            int i11 = (i10 + i9) >>> 1;
            long j8 = jArr[i11];
            if (j8 < j3) {
                i10 = i11 + 1;
            } else {
                if (j8 <= j3) {
                    return i11;
                }
                i9 = i11 - 1;
            }
        }
        return ~i10;
    }
}
