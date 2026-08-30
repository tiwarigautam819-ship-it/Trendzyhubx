package f8;

import d7.g;
import e8.t;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f2637a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final int a(char c8) {
        if ('0' <= c8 && c8 < ':') {
            return c8 - '0';
        }
        if ('a' <= c8 && c8 < 'g') {
            return c8 - 'W';
        }
        if ('A' <= c8 && c8 < 'G') {
            return c8 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c8);
    }

    public static final int b(t tVar, int i6) {
        int i9;
        int[] iArr = tVar.f2485f;
        int i10 = i6 + 1;
        int length = tVar.f2484e.length;
        g.f("<this>", iArr);
        int i11 = length - 1;
        int i12 = 0;
        while (true) {
            if (i12 <= i11) {
                i9 = (i12 + i11) >>> 1;
                int i13 = iArr[i9];
                if (i13 >= i10) {
                    if (i13 <= i10) {
                        break;
                    }
                    i11 = i9 - 1;
                } else {
                    i12 = i9 + 1;
                }
            } else {
                i9 = (-i12) - 1;
                break;
            }
        }
        return i9 >= 0 ? i9 : ~i9;
    }
}
