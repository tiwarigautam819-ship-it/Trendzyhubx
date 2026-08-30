package f6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f2627a = {1, 1, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2628b = {1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f2629c = {1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f2630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[][] f2631e;

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f2630d = iArr;
        int[][] iArr2 = new int[20][];
        f2631e = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i6 = 10; i6 < 20; i6++) {
            int[] iArr3 = f2630d[i6 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i9 = 0; i9 < iArr3.length; i9++) {
                iArr4[i9] = iArr3[(iArr3.length - i9) - 1];
            }
            f2631e[i6] = iArr4;
        }
    }

    public static boolean r(String str) {
        int length = str.length();
        if (length != 0) {
            int i6 = length - 1;
            if (s(str.subSequence(0, i6)) == Character.digit(str.charAt(i6), 10)) {
                return true;
            }
        }
        return false;
    }

    public static int s(CharSequence charSequence) throws y5.b {
        int length = charSequence.length();
        int i6 = 0;
        for (int i9 = length - 1; i9 >= 0; i9 -= 2) {
            int iCharAt = charSequence.charAt(i9) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                y5.b bVar = y5.b.f6264c;
                if (y5.c.f6265a) {
                    throw new y5.b();
                }
                throw y5.b.f6264c;
            }
            i6 += iCharAt;
        }
        int i10 = i6 * 3;
        for (int i11 = length - 2; i11 >= 0; i11 -= 2) {
            int iCharAt2 = charSequence.charAt(i11) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                y5.b bVar2 = y5.b.f6264c;
                if (y5.c.f6265a) {
                    throw new y5.b();
                }
                throw y5.b.f6264c;
            }
            i10 += iCharAt2;
        }
        return (1000 - i10) % 10;
    }
}
