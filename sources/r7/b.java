package r7;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f5010a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f5011b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5012c = new b();

    public static final f a(b bVar, String str) {
        f fVar = new f(str);
        f.f5031d.put(str, fVar);
        return fVar;
    }

    public static String b(String str, int i6, int i9, String str2, int i10) throws EOFException {
        int i11 = (i10 & 1) != 0 ? 0 : i6;
        int length = (i10 & 2) != 0 ? str.length() : i9;
        boolean z5 = (i10 & 8) == 0;
        boolean z8 = (i10 & 16) == 0;
        boolean z9 = (i10 & 32) == 0;
        boolean z10 = (i10 & 64) == 0;
        d7.g.f("<this>", str);
        int iCharCount = i11;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int i12 = 128;
            int i13 = 32;
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z10) || k7.g.w(str2, (char) iCodePointAt) || ((iCodePointAt == 37 && (!z5 || (z8 && !d(iCharCount, str, length)))) || (iCodePointAt == 43 && z9)))) {
                e8.g gVar = new e8.g();
                gVar.D(i11, str, iCharCount);
                e8.g gVar2 = null;
                while (iCharCount < length) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z5 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == 43 && z9) {
                            gVar.E(z5 ? "+" : "%2B");
                        } else if (iCodePointAt2 < i13 || iCodePointAt2 == 127 || ((iCodePointAt2 >= i12 && !z10) || k7.g.w(str2, (char) iCodePointAt2) || (iCodePointAt2 == 37 && (!z5 || (z8 && !d(iCharCount, str, length)))))) {
                            if (gVar2 == null) {
                                gVar2 = new e8.g();
                            }
                            gVar2.F(iCodePointAt2);
                            while (!gVar2.c()) {
                                byte b3 = gVar2.readByte();
                                gVar.z(37);
                                char[] cArr = m.f5079j;
                                gVar.z(cArr[((b3 & 255) >> 4) & 15]);
                                gVar.z(cArr[b3 & 15]);
                            }
                        } else {
                            gVar.F(iCodePointAt2);
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                    i12 = 128;
                    i13 = 32;
                }
                return gVar.t(gVar.f2450b, k7.a.f3570a);
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        String strSubstring = str.substring(i11, length);
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public static boolean d(int i6, String str, int i9) {
        int i10 = i6 + 2;
        return i10 < i9 && str.charAt(i6) == '%' && s7.b.q(str.charAt(i6 + 1)) != -1 && s7.b.q(str.charAt(i10)) != -1;
    }

    public static String e(String str, int i6, int i9, int i10) {
        int i11;
        if ((i10 & 1) != 0) {
            i6 = 0;
        }
        if ((i10 & 2) != 0) {
            i9 = str.length();
        }
        boolean z5 = (i10 & 4) == 0;
        d7.g.f("<this>", str);
        int iCharCount = i6;
        while (iCharCount < i9) {
            char cCharAt = str.charAt(iCharCount);
            if (cCharAt == '%' || (cCharAt == '+' && z5)) {
                e8.g gVar = new e8.g();
                gVar.D(i6, str, iCharCount);
                while (iCharCount < i9) {
                    int iCodePointAt = str.codePointAt(iCharCount);
                    if (iCodePointAt == 37 && (i11 = iCharCount + 2) < i9) {
                        int iQ = s7.b.q(str.charAt(iCharCount + 1));
                        int iQ2 = s7.b.q(str.charAt(i11));
                        if (iQ == -1 || iQ2 == -1) {
                            gVar.F(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        } else {
                            gVar.z((iQ << 4) + iQ2);
                            iCharCount = Character.charCount(iCodePointAt) + i11;
                        }
                    } else if (iCodePointAt == 43 && z5) {
                        gVar.z(32);
                        iCharCount++;
                    } else {
                        gVar.F(iCodePointAt);
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return gVar.t(gVar.f2450b, k7.a.f3570a);
            }
            iCharCount++;
        }
        String strSubstring = str.substring(i6, i9);
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public static ArrayList f(String str) {
        ArrayList arrayList = new ArrayList();
        int i6 = 0;
        while (i6 <= str.length()) {
            int iA = k7.g.A(str, '&', i6, 4);
            if (iA == -1) {
                iA = str.length();
            }
            int iA2 = k7.g.A(str, '=', i6, 4);
            if (iA2 == -1 || iA2 > iA) {
                String strSubstring = str.substring(i6, iA);
                d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
                arrayList.add(strSubstring);
                arrayList.add(null);
            } else {
                String strSubstring2 = str.substring(i6, iA2);
                d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring2);
                arrayList.add(strSubstring2);
                String strSubstring3 = str.substring(iA2 + 1, iA);
                d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring3);
                arrayList.add(strSubstring3);
            }
            i6 = iA + 1;
        }
        return arrayList;
    }

    public synchronized f c(String str) {
        f fVar;
        String strConcat;
        try {
            d7.g.f("javaName", str);
            LinkedHashMap linkedHashMap = f.f5031d;
            fVar = (f) linkedHashMap.get(str);
            if (fVar == null) {
                if (k7.o.v(str, "TLS_", false)) {
                    String strSubstring = str.substring(4);
                    d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
                    strConcat = "SSL_".concat(strSubstring);
                } else if (k7.o.v(str, "SSL_", false)) {
                    String strSubstring2 = str.substring(4);
                    d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring2);
                    strConcat = "TLS_".concat(strSubstring2);
                } else {
                    strConcat = str;
                }
                fVar = (f) linkedHashMap.get(strConcat);
                if (fVar == null) {
                    fVar = new f(str);
                }
                linkedHashMap.put(str, fVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return fVar;
    }
}
