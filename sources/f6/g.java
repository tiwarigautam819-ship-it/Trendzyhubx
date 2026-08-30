package f6;

import java.util.EnumMap;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends y1.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2623b = {1, 1, 1, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f2624c = {3, 1, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f2625d = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2626a;

    public /* synthetic */ g(int i6) {
        this.f2626a = i6;
    }

    public static void A(int[] iArr, int i6) {
        for (int i9 = 0; i9 < 9; i9++) {
            int i10 = 1;
            if (((1 << (8 - i9)) & i6) == 0) {
                i10 = 0;
            }
            iArr[i9] = i10;
        }
    }

    public static void w(boolean[] zArr, int i6, int[] iArr) {
        int length = iArr.length;
        int i9 = 0;
        while (i9 < length) {
            int i10 = i6 + 1;
            zArr[i6] = iArr[i9] != 0;
            i9++;
            i6 = i10;
        }
    }

    public static int x(int i6, String str) {
        int iIndexOf = 0;
        int i9 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i9;
            i9++;
            if (i9 > i6) {
                i9 = 1;
            }
        }
        return iIndexOf % 47;
    }

    public static int y(int i6, String str) {
        char cCharAt;
        int length = str.length();
        if (i6 < length) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 == 241) {
                return 4;
            }
            if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                int i9 = i6 + 1;
                return (i9 < length && (cCharAt = str.charAt(i9)) >= '0' && cCharAt <= '9') ? 3 : 2;
            }
        }
        return 1;
    }

    public static void z(int[] iArr, int i6) {
        for (int i9 = 0; i9 < 9; i9++) {
            int i10 = 1;
            if (((1 << (8 - i9)) & i6) != 0) {
                i10 = 2;
            }
            iArr[i9] = i10;
        }
    }

    @Override // y1.g, y5.d
    public final b6.b j(String str, int i6, EnumMap enumMap) {
        switch (this.f2626a) {
            case 0:
                if (i6 == 9) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode ITF, but got ".concat(x.n(i6)));
            case 1:
                if (i6 == 5) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(x.n(i6)));
            case 2:
                if (i6 == 3) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(x.n(i6)));
            default:
                if (i6 == 4) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(x.n(i6)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018a  */
    @Override // y1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean[] k(java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 1024
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f6.g.k(java.lang.String):boolean[]");
    }
}
