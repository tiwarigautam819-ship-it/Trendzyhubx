package r7;

import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f5054j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f5055k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Pattern f5056l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Pattern f5057m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f5060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f5064g;
    public final boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5065i;

    public h(String str, String str2, long j3, String str3, String str4, boolean z5, boolean z8, boolean z9, boolean z10) {
        this.f5058a = str;
        this.f5059b = str2;
        this.f5060c = j3;
        this.f5061d = str3;
        this.f5062e = str4;
        this.f5063f = z5;
        this.f5064g = z8;
        this.h = z9;
        this.f5065i = z10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return d7.g.a(hVar.f5058a, this.f5058a) && d7.g.a(hVar.f5059b, this.f5059b) && hVar.f5060c == this.f5060c && d7.g.a(hVar.f5061d, this.f5061d) && d7.g.a(hVar.f5062e, this.f5062e) && hVar.f5063f == this.f5063f && hVar.f5064g == this.f5064g && hVar.h == this.h && hVar.f5065i == this.f5065i;
    }

    public final int hashCode() {
        int iD = q2.x.d(q2.x.d(527, this.f5058a, 31), this.f5059b, 31);
        long j3 = this.f5060c;
        return ((((((q2.x.d(q2.x.d((iD + ((int) (j3 ^ (j3 >>> 32)))) * 31, this.f5061d, 31), this.f5062e, 31) + (this.f5063f ? 1231 : 1237)) * 31) + (this.f5064g ? 1231 : 1237)) * 31) + (this.h ? 1231 : 1237)) * 31) + (this.f5065i ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5058a);
        sb.append('=');
        sb.append(this.f5059b);
        if (this.h) {
            long j3 = this.f5060c;
            if (j3 == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String str = ((DateFormat) w7.c.f5768a.get()).format(new Date(j3));
                d7.g.e("STANDARD_DATE_FORMAT.get().format(this)", str);
                sb.append(str);
            }
        }
        if (!this.f5065i) {
            sb.append("; domain=");
            sb.append(this.f5061d);
        }
        sb.append("; path=");
        sb.append(this.f5062e);
        if (this.f5063f) {
            sb.append("; secure");
        }
        if (this.f5064g) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        d7.g.e("toString()", string);
        return string;
    }
}
