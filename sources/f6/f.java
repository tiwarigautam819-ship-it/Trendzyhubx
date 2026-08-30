package f6;

import java.util.EnumMap;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends y1.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2622a;

    public /* synthetic */ f(int i6) {
        this.f2622a = i6;
    }

    @Override // y1.g, y5.d
    public final b6.b j(String str, int i6, EnumMap enumMap) {
        switch (this.f2622a) {
            case 0:
                if (i6 == 8) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(x.n(i6)));
            case 1:
                if (i6 == 7) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(x.n(i6)));
            default:
                if (i6 == 16) {
                    return super.j(str, i6, enumMap);
                }
                throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(x.n(i6)));
        }
    }

    @Override // y1.g
    public final boolean[] k(String str) {
        switch (this.f2622a) {
            case 0:
                int length = str.length();
                if (length == 12) {
                    try {
                        str = str + h.s(str);
                    } catch (y5.b e9) {
                        throw new IllegalArgumentException(e9);
                    }
                } else {
                    if (length != 13) {
                        throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
                    }
                    try {
                        if (!h.r(str)) {
                            throw new IllegalArgumentException("Contents do not pass checksum");
                        }
                    } catch (y5.b unused) {
                        throw new IllegalArgumentException("Illegal contents");
                    }
                }
                int i6 = e.f2620f[Character.digit(str.charAt(0), 10)];
                boolean[] zArr = new boolean[95];
                int iD = y1.g.d(zArr, 0, h.f2627a, true);
                for (int i9 = 1; i9 <= 6; i9++) {
                    int iDigit = Character.digit(str.charAt(i9), 10);
                    if (((i6 >> (6 - i9)) & 1) == 1) {
                        iDigit += 10;
                    }
                    iD += y1.g.d(zArr, iD, h.f2631e[iDigit], false);
                }
                int iD2 = y1.g.d(zArr, iD, h.f2628b, false) + iD;
                for (int i10 = 7; i10 <= 12; i10++) {
                    iD2 += y1.g.d(zArr, iD2, h.f2630d[Character.digit(str.charAt(i10), 10)], true);
                }
                y1.g.d(zArr, iD2, h.f2627a, true);
                return zArr;
            case 1:
                int length2 = str.length();
                if (length2 == 7) {
                    try {
                        str = str + h.s(str);
                    } catch (y5.b e10) {
                        throw new IllegalArgumentException(e10);
                    }
                } else {
                    if (length2 != 8) {
                        throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length2)));
                    }
                    try {
                        if (!h.r(str)) {
                            throw new IllegalArgumentException("Contents do not pass checksum");
                        }
                    } catch (y5.b unused2) {
                        throw new IllegalArgumentException("Illegal contents");
                    }
                }
                boolean[] zArr2 = new boolean[67];
                int iD3 = y1.g.d(zArr2, 0, h.f2627a, true);
                for (int i11 = 0; i11 <= 3; i11++) {
                    iD3 += y1.g.d(zArr2, iD3, h.f2630d[Character.digit(str.charAt(i11), 10)], false);
                }
                int iD4 = y1.g.d(zArr2, iD3, h.f2628b, false) + iD3;
                for (int i12 = 4; i12 <= 7; i12++) {
                    iD4 += y1.g.d(zArr2, iD4, h.f2630d[Character.digit(str.charAt(i12), 10)], true);
                }
                y1.g.d(zArr2, iD4, h.f2627a, true);
                return zArr2;
            default:
                int length3 = str.length();
                if (length3 == 7) {
                    try {
                        str = str + h.s(e.t(str));
                    } catch (y5.b e11) {
                        throw new IllegalArgumentException(e11);
                    }
                } else {
                    if (length3 != 8) {
                        throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length3)));
                    }
                    try {
                        if (!h.r(str)) {
                            throw new IllegalArgumentException("Contents do not pass checksum");
                        }
                    } catch (y5.b unused3) {
                        throw new IllegalArgumentException("Illegal contents");
                    }
                }
                int iDigit2 = Character.digit(str.charAt(0), 10);
                if (iDigit2 != 0 && iDigit2 != 1) {
                    throw new IllegalArgumentException("Number system must be 0 or 1");
                }
                int i13 = e.f2621g[iDigit2][Character.digit(str.charAt(7), 10)];
                boolean[] zArr3 = new boolean[51];
                int iD5 = y1.g.d(zArr3, 0, h.f2627a, true);
                for (int i14 = 1; i14 <= 6; i14++) {
                    int iDigit3 = Character.digit(str.charAt(i14), 10);
                    if (((i13 >> (6 - i14)) & 1) == 1) {
                        iDigit3 += 10;
                    }
                    iD5 += y1.g.d(zArr3, iD5, h.f2631e[iDigit3], false);
                }
                y1.g.d(zArr3, iD5, h.f2629c, false);
                return zArr3;
        }
    }

    @Override // y1.g
    public final int m() {
        return 9;
    }
}
