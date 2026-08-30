package r7;

import com.getcapacitor.Bridge;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final char[] f5079j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f5085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f5086g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5087i;

    public m(String str, String str2, String str3, String str4, int i6, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        d7.g.f("scheme", str);
        d7.g.f("host", str4);
        this.f5080a = str;
        this.f5081b = str2;
        this.f5082c = str3;
        this.f5083d = str4;
        this.f5084e = i6;
        this.f5085f = arrayList2;
        this.f5086g = str5;
        this.h = str6;
        this.f5087i = str.equals(Bridge.CAPACITOR_HTTPS_SCHEME);
    }

    public final String a() {
        if (this.f5082c.length() == 0) {
            return "";
        }
        int length = this.f5080a.length() + 3;
        String str = this.h;
        String strSubstring = str.substring(k7.g.A(str, ':', length, 4) + 1, k7.g.A(str, '@', 0, 6));
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public final String b() {
        int length = this.f5080a.length() + 3;
        String str = this.h;
        int iA = k7.g.A(str, '/', length, 4);
        String strSubstring = str.substring(iA, s7.b.f(iA, str.length(), str, "?#"));
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public final ArrayList c() {
        int length = this.f5080a.length() + 3;
        String str = this.h;
        int iA = k7.g.A(str, '/', length, 4);
        int iF = s7.b.f(iA, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (iA < iF) {
            int i6 = iA + 1;
            int iG = s7.b.g(str, '/', i6, iF);
            String strSubstring = str.substring(i6, iG);
            d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
            arrayList.add(strSubstring);
            iA = iG;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f5085f == null) {
            return null;
        }
        String str = this.h;
        int iA = k7.g.A(str, '?', 0, 6) + 1;
        String strSubstring = str.substring(iA, s7.b.g(str, '#', iA, str.length()));
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public final String e() {
        if (this.f5081b.length() == 0) {
            return "";
        }
        int length = this.f5080a.length() + 3;
        String str = this.h;
        String strSubstring = str.substring(length, s7.b.f(length, str.length(), str, ":@"));
        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof m) && d7.g.a(((m) obj).h, this.h);
    }

    public final String f() {
        l lVar;
        try {
            lVar = new l();
            lVar.c(this, "/...");
        } catch (IllegalArgumentException unused) {
            lVar = null;
        }
        d7.g.c(lVar);
        lVar.f5073b = b.b("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 251);
        lVar.f5074c = b.b("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 251);
        return lVar.a().h;
    }

    public final URI g() {
        String strSubstring;
        String strReplaceAll;
        l lVar = new l();
        String str = this.f5080a;
        lVar.f5072a = str;
        lVar.f5073b = e();
        lVar.f5074c = a();
        lVar.f5075d = this.f5083d;
        d7.g.f("scheme", str);
        int i6 = str.equals(Bridge.CAPACITOR_HTTP_SCHEME) ? 80 : str.equals(Bridge.CAPACITOR_HTTPS_SCHEME) ? 443 : -1;
        int i9 = this.f5084e;
        lVar.f5076e = i9 != i6 ? i9 : -1;
        ArrayList arrayList = lVar.f5077f;
        arrayList.clear();
        arrayList.addAll(c());
        String strD = d();
        lVar.f5078g = strD != null ? b.f(b.b(strD, 0, 0, " \"'<>#", 211)) : null;
        if (this.f5086g == null) {
            strSubstring = null;
        } else {
            String str2 = this.h;
            strSubstring = str2.substring(k7.g.A(str2, '#', 0, 6) + 1);
            d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
        }
        lVar.h = strSubstring;
        String str3 = lVar.f5075d;
        if (str3 != null) {
            Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
            d7.g.e("compile(...)", patternCompile);
            strReplaceAll = patternCompile.matcher(str3).replaceAll("");
            d7.g.e("replaceAll(...)", strReplaceAll);
        } else {
            strReplaceAll = null;
        }
        lVar.f5075d = strReplaceAll;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.set(i10, b.b((String) arrayList.get(i10), 0, 0, "[]", 227));
        }
        ArrayList arrayList2 = lVar.f5078g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                String str4 = (String) arrayList2.get(i11);
                arrayList2.set(i11, str4 != null ? b.b(str4, 0, 0, "\\^`{|}", 195) : null);
            }
        }
        String str5 = lVar.h;
        lVar.h = str5 != null ? b.b(str5, 0, 0, " \"#<>\\^`{|}", 163) : null;
        String string = lVar.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e9) {
            try {
                Pattern patternCompile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                d7.g.e("compile(...)", patternCompile2);
                String strReplaceAll2 = patternCompile2.matcher(string).replaceAll("");
                d7.g.e("replaceAll(...)", strReplaceAll2);
                URI uriCreate = URI.create(strReplaceAll2);
                d7.g.e("{\n      // Unlikely edge…Unexpected!\n      }\n    }", uriCreate);
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e9);
            }
        }
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final String toString() {
        return this.h;
    }
}
