package r7;

import java.nio.charset.Charset;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f5088e = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f5089f = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String[] f5093d;

    public p(String str, String str2, String str3, String[] strArr) {
        this.f5090a = str;
        this.f5091b = str2;
        this.f5092c = str3;
        this.f5093d = strArr;
    }

    public final Charset a(Charset charset) {
        String str;
        String[] strArr = this.f5093d;
        int i6 = 0;
        int iM = l2.e.m(0, strArr.length - 1, 2);
        if (iM < 0) {
            str = null;
            break;
        }
        while (!k7.o.q(strArr[i6], "charset")) {
            if (i6 == iM) {
                str = null;
                break;
            }
            i6 += 2;
        }
        str = strArr[i6 + 1];
        if (str == null) {
            return charset;
        }
        try {
            return Charset.forName(str);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof p) && d7.g.a(((p) obj).f5090a, this.f5090a);
    }

    public final int hashCode() {
        return this.f5090a.hashCode();
    }

    public final String toString() {
        return this.f5090a;
    }
}
