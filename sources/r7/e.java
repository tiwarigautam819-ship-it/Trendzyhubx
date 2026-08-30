package r7;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        String str = (String) obj;
        String str2 = (String) obj2;
        d7.g.f("a", str);
        d7.g.f("b", str2);
        int iMin = Math.min(str.length(), str2.length());
        for (int i6 = 4; i6 < iMin; i6++) {
            char cCharAt = str.charAt(i6);
            char cCharAt2 = str2.charAt(i6);
            if (cCharAt != cCharAt2) {
                return d7.g.g(cCharAt, cCharAt2) < 0 ? -1 : 1;
            }
        }
        int length = str.length();
        int length2 = str2.length();
        if (length != length2) {
            return length < length2 ? -1 : 1;
        }
        return 0;
    }
}
