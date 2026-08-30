package k7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends o {
    public static int A(CharSequence charSequence, char c8, int i6, int i9) {
        if ((i9 & 2) != 0) {
            i6 = 0;
        }
        d7.g.f("<this>", charSequence);
        return !(charSequence instanceof String) ? C(charSequence, new char[]{c8}, i6, false) : ((String) charSequence).indexOf(c8, i6);
    }

    public static /* synthetic */ int B(CharSequence charSequence, String str, int i6, int i9) {
        if ((i9 & 2) != 0) {
            i6 = 0;
        }
        return z(charSequence, str, i6, false);
    }

    public static final int C(CharSequence charSequence, char[] cArr, int i6, boolean z5) {
        int i9;
        d7.g.f("<this>", charSequence);
        boolean z8 = true;
        if (!z5 && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length != 1) {
                throw new IllegalArgumentException("Array has more than one element.");
            }
            return ((String) charSequence).indexOf(cArr[0], i6);
        }
        if (i6 < 0) {
            i6 = 0;
        }
        h7.c cVar = new h7.c(i6, y(charSequence), 1);
        int i10 = cVar.f3018b;
        int i11 = cVar.f3019c;
        if (i11 <= 0 ? i6 < i10 : i6 > i10) {
            z8 = false;
        }
        if (!z8) {
            i6 = i10;
        }
        while (z8) {
            if (i6 != i10) {
                i9 = i6 + i11;
            } else {
                if (!z8) {
                    throw new NoSuchElementException();
                }
                i9 = i6;
                z8 = false;
            }
            char cCharAt = charSequence.charAt(i6);
            for (char c8 : cArr) {
                if (a2.c.e(c8, cCharAt, z5)) {
                    return i6;
                }
            }
            i6 = i9;
        }
        return -1;
    }

    public static int D(String str, char c8, int i6, int i9) {
        if ((i9 & 2) != 0) {
            i6 = y(str);
        }
        d7.g.f("<this>", str);
        return str.lastIndexOf(c8, i6);
    }

    public static c E(CharSequence charSequence, String[] strArr, int i6) {
        H(i6);
        return new c(charSequence, i6, new p(1, s6.f.h(strArr)));
    }

    public static final boolean F(CharSequence charSequence, int i6, CharSequence charSequence2, int i9, int i10, boolean z5) {
        d7.g.f("<this>", charSequence);
        d7.g.f("other", charSequence2);
        if (i9 < 0 || i6 < 0 || i6 > charSequence.length() - i10 || i9 > charSequence2.length() - i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!a2.c.e(charSequence.charAt(i6 + i11), charSequence2.charAt(i9 + i11), z5)) {
                return false;
            }
        }
        return true;
    }

    public static String G(String str, String str2) {
        if (!o.v(str, str2, false)) {
            return str;
        }
        String strSubstring = str.substring(str2.length());
        d7.g.e("substring(...)", strSubstring);
        return strSubstring;
    }

    public static final void H(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException(a1.a.i(i6, "Limit must be non-negative, but was ").toString());
        }
    }

    public static final List I(CharSequence charSequence, String str, int i6) {
        H(i6);
        int iZ = z(charSequence, str, 0, false);
        if (iZ == -1 || i6 == 1) {
            return f4.f.b(charSequence.toString());
        }
        boolean z5 = i6 > 0;
        int i9 = 10;
        if (z5 && i6 <= 10) {
            i9 = i6;
        }
        ArrayList arrayList = new ArrayList(i9);
        int length = 0;
        do {
            arrayList.add(charSequence.subSequence(length, iZ).toString());
            length = str.length() + iZ;
            if (z5 && arrayList.size() == i6 - 1) {
                break;
            }
            iZ = z(charSequence, str, length, false);
        } while (iZ != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List J(CharSequence charSequence, String[] strArr, int i6, int i9) {
        if ((i9 & 4) != 0) {
            i6 = 0;
        }
        d7.g.f("<this>", charSequence);
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return I(charSequence, str, i6);
            }
        }
        j7.i iVar = new j7.i(E(charSequence, strArr, i6));
        ArrayList arrayList = new ArrayList(s6.i.n(iVar));
        Iterator it = iVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(L(charSequence, (h7.c) bVar.next()));
        }
    }

    public static List K(String str, char[] cArr) {
        d7.g.f("<this>", str);
        if (cArr.length == 1) {
            return I(str, String.valueOf(cArr[0]), 0);
        }
        H(0);
        j7.i iVar = new j7.i(new c(str, 0, new p(0, cArr)));
        ArrayList arrayList = new ArrayList(s6.i.n(iVar));
        Iterator it = iVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(L(str, (h7.c) bVar.next()));
        }
    }

    public static final String L(CharSequence charSequence, h7.c cVar) {
        d7.g.f("<this>", charSequence);
        d7.g.f("range", cVar);
        return charSequence.subSequence(cVar.f3017a, cVar.f3018b + 1).toString();
    }

    public static String M(String str, String str2) {
        d7.g.f("delimiter", str2);
        int iB = B(str, str2, 0, 6);
        if (iB == -1) {
            return str;
        }
        String strSubstring = str.substring(str2.length() + iB, str.length());
        d7.g.e("substring(...)", strSubstring);
        return strSubstring;
    }

    public static String N(String str) {
        d7.g.f("<this>", str);
        d7.g.f("missingDelimiterValue", str);
        int iD = D(str, '.', 0, 6);
        if (iD == -1) {
            return str;
        }
        String strSubstring = str.substring(iD + 1, str.length());
        d7.g.e("substring(...)", strSubstring);
        return strSubstring;
    }

    public static String O(int i6, String str) {
        if (i6 < 0) {
            throw new IllegalArgumentException(a1.a.j(i6, "Requested character count ", " is less than zero.").toString());
        }
        int length = str.length();
        if (i6 > length) {
            i6 = length;
        }
        String strSubstring = str.substring(0, i6);
        d7.g.e("substring(...)", strSubstring);
        return strSubstring;
    }

    public static CharSequence P(String str) {
        d7.g.f("<this>", str);
        int length = str.length() - 1;
        int i6 = 0;
        boolean z5 = false;
        while (i6 <= length) {
            char cCharAt = str.charAt(!z5 ? i6 : length);
            boolean z8 = Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt);
            if (z5) {
                if (!z8) {
                    break;
                }
                length--;
            } else if (z8) {
                i6++;
            } else {
                z5 = true;
            }
        }
        return str.subSequence(i6, length + 1);
    }

    public static boolean w(CharSequence charSequence, char c8) {
        d7.g.f("<this>", charSequence);
        return A(charSequence, c8, 0, 2) >= 0;
    }

    public static boolean x(CharSequence charSequence, String str) {
        d7.g.f("<this>", charSequence);
        d7.g.f("other", str);
        return B(charSequence, str, 0, 2) >= 0;
    }

    public static final int y(CharSequence charSequence) {
        d7.g.f("<this>", charSequence);
        return charSequence.length() - 1;
    }

    public static final int z(CharSequence charSequence, String str, int i6, boolean z5) {
        d7.g.f("<this>", charSequence);
        d7.g.f("string", str);
        if (!z5 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i6);
        }
        int length = charSequence.length();
        if (i6 < 0) {
            i6 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        h7.c cVar = new h7.c(i6, length, 1);
        boolean z8 = charSequence instanceof String;
        int i9 = cVar.f3019c;
        int i10 = cVar.f3018b;
        int i11 = cVar.f3017a;
        if (!z8 || !(str instanceof String)) {
            boolean z9 = z5;
            if ((i9 <= 0 || i11 > i10) && (i9 >= 0 || i10 > i11)) {
                return -1;
            }
            while (true) {
                CharSequence charSequence2 = charSequence;
                boolean z10 = z9;
                z9 = z10;
                if (F(str, 0, charSequence2, i11, str.length(), z10)) {
                    return i11;
                }
                if (i11 == i10) {
                    return -1;
                }
                i11 += i9;
                charSequence = charSequence2;
            }
        } else {
            if ((i9 <= 0 || i11 > i10) && (i9 >= 0 || i10 > i11)) {
                return -1;
            }
            int i12 = i11;
            while (true) {
                String str2 = str;
                boolean z11 = z5;
                if (o.s(0, i12, str.length(), str2, (String) charSequence, z11)) {
                    return i12;
                }
                if (i12 == i10) {
                    return -1;
                }
                i12 += i9;
                str = str2;
                z5 = z11;
            }
        }
    }
}
