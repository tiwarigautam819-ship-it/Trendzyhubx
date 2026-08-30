package k7;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o extends n {
    public static boolean q(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static boolean r(String str) {
        d7.g.f("<this>", str);
        if (str.length() != 0) {
            Iterable cVar = new h7.c(0, str.length() - 1, 1);
            if (!(cVar instanceof Collection) || !((Collection) cVar).isEmpty()) {
                Iterator it = cVar.iterator();
                while (true) {
                    h7.b bVar = (h7.b) it;
                    if (!bVar.f3022c) {
                        break;
                    }
                    char cCharAt = str.charAt(bVar.nextInt());
                    if (!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static final boolean s(int i6, int i9, int i10, String str, String str2, boolean z5) {
        d7.g.f("<this>", str);
        d7.g.f("other", str2);
        return !z5 ? str.regionMatches(i6, str2, i9, i10) : str.regionMatches(z5, i6, str2, i9, i10);
    }

    public static String t(String str, String str2, String str3) {
        d7.g.f("<this>", str);
        d7.g.f("oldValue", str2);
        d7.g.f("newValue", str3);
        int iZ = g.z(str, str2, 0, false);
        if (iZ < 0) {
            return str;
        }
        int length = str2.length();
        int i6 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i9 = 0;
        do {
            sb.append((CharSequence) str, i9, iZ);
            sb.append(str3);
            i9 = iZ + length;
            if (iZ >= str.length()) {
                break;
            }
            iZ = g.z(str, str2, iZ + i6, false);
        } while (iZ > 0);
        sb.append((CharSequence) str, i9, str.length());
        String string = sb.toString();
        d7.g.e("toString(...)", string);
        return string;
    }

    public static boolean u(String str, String str2, int i6, boolean z5) {
        d7.g.f("<this>", str);
        return !z5 ? str.startsWith(str2, i6) : s(i6, 0, str2.length(), str, str2, z5);
    }

    public static boolean v(String str, String str2, boolean z5) {
        d7.g.f("<this>", str);
        d7.g.f("prefix", str2);
        return !z5 ? str.startsWith(str2) : s(0, 0, str2.length(), str, str2, z5);
    }
}
