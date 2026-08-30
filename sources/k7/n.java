package k7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n extends m {
    public static Integer p(String str) {
        boolean z5;
        int i6;
        int i9;
        d7.g.f("<this>", str);
        a2.c.d(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i10 = 0;
        char cCharAt = str.charAt(0);
        int i11 = -2147483647;
        if (d7.g.g(cCharAt, 48) < 0) {
            i6 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                i11 = Integer.MIN_VALUE;
                z5 = true;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z5 = false;
            }
        } else {
            z5 = false;
            i6 = 0;
        }
        int i12 = -59652323;
        while (i6 < length) {
            int iDigit = Character.digit((int) str.charAt(i6), 10);
            if (iDigit < 0) {
                return null;
            }
            if ((i10 < i12 && (i12 != -59652323 || i10 < (i12 = i11 / 10))) || (i9 = i10 * 10) < i11 + iDigit) {
                return null;
            }
            i10 = i9 - iDigit;
            i6++;
        }
        return z5 ? Integer.valueOf(i10) : Integer.valueOf(-i10);
    }
}
