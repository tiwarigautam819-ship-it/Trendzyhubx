package f6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends y1.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f2613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f2614b = {'T', 'N', '*', 'E'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f2615c = {'/', ':', '+', '.'};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char f2616d;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f2613a = cArr;
        f2616d = cArr[0];
    }

    @Override // y1.g
    public final boolean[] k(String str) {
        int i6;
        int length = str.length();
        char c8 = f2616d;
        if (length < 2) {
            str = c8 + str + c8;
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f2613a;
            boolean zR = a.r(cArr, upperCase);
            boolean zR2 = a.r(cArr, upperCase2);
            char[] cArr2 = f2614b;
            boolean zR3 = a.r(cArr2, upperCase);
            boolean zR4 = a.r(cArr2, upperCase2);
            if (zR) {
                if (!zR2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!zR3) {
                if (zR2 || zR4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
                str = c8 + str + c8;
            } else if (!zR4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i9 = 20;
        for (int i10 = 1; i10 < str.length() - 1; i10++) {
            if (Character.isDigit(str.charAt(i10)) || str.charAt(i10) == '-' || str.charAt(i10) == '$') {
                i9 += 9;
            } else {
                if (!a.r(f2615c, str.charAt(i10))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i10) + '\'');
                }
                i9 += 10;
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i9];
        int i11 = 0;
        for (int i12 = 0; i12 < str.length(); i12++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i12));
            if (i12 == 0 || i12 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i13 = 0;
            while (true) {
                char[] cArr3 = a.f2611a;
                if (i13 >= cArr3.length) {
                    i6 = 0;
                    break;
                }
                if (upperCase3 == cArr3[i13]) {
                    i6 = a.f2612b[i13];
                    break;
                }
                i13++;
            }
            int i14 = 0;
            int i15 = 0;
            boolean z5 = true;
            while (i14 < 7) {
                zArr[i11] = z5;
                i11++;
                if (((i6 >> (6 - i14)) & 1) == 0 || i15 == 1) {
                    z5 = !z5;
                    i14++;
                    i15 = 0;
                } else {
                    i15++;
                }
            }
            if (i12 < str.length() - 1) {
                zArr[i11] = false;
                i11++;
            }
        }
        return zArr;
    }
}
