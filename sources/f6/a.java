package f6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f2611a = "0123456789-$:/.+ABCD".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2612b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    public static boolean r(char[] cArr, char c8) {
        for (char c9 : cArr) {
            if (c9 == c8) {
                return true;
            }
        }
        return false;
    }
}
