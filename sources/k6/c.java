package k6;

import y5.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f3565a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[][] f3566b = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[][] f3567c = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f3568d = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[][] f3569e = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    public static int a(b bVar, boolean z5) {
        int i6 = bVar.f3562b;
        int i9 = bVar.f3563c;
        int i10 = z5 ? i9 : i6;
        if (!z5) {
            i6 = i9;
        }
        byte[][] bArr = (byte[][]) bVar.f3564d;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            byte b3 = -1;
            int i13 = 0;
            for (int i14 = 0; i14 < i6; i14++) {
                byte b7 = z5 ? bArr[i12][i14] : bArr[i14][i12];
                if (b7 == b3) {
                    i13++;
                } else {
                    if (i13 >= 5) {
                        i11 += i13 - 2;
                    }
                    i13 = 1;
                    b3 = b7;
                }
            }
            if (i13 >= 5) {
                i11 = (i13 - 2) + i11;
            }
        }
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(b6.a r27, int r28, j6.b r29, int r30, k6.b r31) throws y5.e {
        /*
            Method dump skipped, instruction units count: 712
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.c.b(b6.a, int, j6.b, int, k6.b):void");
    }

    public static int c(int i6, int i9) {
        if (i9 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i9);
        int i10 = 32 - iNumberOfLeadingZeros;
        int iNumberOfLeadingZeros2 = i6 << (31 - iNumberOfLeadingZeros);
        while (32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2) >= i10) {
            iNumberOfLeadingZeros2 ^= i9 << ((32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2)) - i10);
        }
        return iNumberOfLeadingZeros2;
    }

    public static void d(int i6, int i9, b bVar) throws e {
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = i6 + i10;
            if (!g(bVar.a(i11, i9))) {
                throw new e();
            }
            bVar.b(i11, i9, 0);
        }
    }

    public static void e(int i6, int i9, b bVar) {
        for (int i10 = 0; i10 < 7; i10++) {
            int[] iArr = f3566b[i10];
            for (int i11 = 0; i11 < 7; i11++) {
                bVar.b(i6 + i11, i9 + i10, iArr[i11]);
            }
        }
    }

    public static void f(int i6, int i9, b bVar) throws e {
        for (int i10 = 0; i10 < 7; i10++) {
            int i11 = i9 + i10;
            if (!g(bVar.a(i6, i11))) {
                throw new e();
            }
            bVar.b(i6, i11, 0);
        }
    }

    public static boolean g(int i6) {
        return i6 == -1;
    }
}
