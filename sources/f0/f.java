package f0;

import android.os.Build;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f2519b = a(new Locale[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f2520a;

    public f(h hVar) {
        this.f2520a = hVar;
    }

    public static f a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new f(new i(c.a(localeArr))) : new f(new g(localeArr));
    }

    public static f b(String str) {
        if (str == null || str.isEmpty()) {
            return f2519b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i6 = 0; i6 < length; i6++) {
            String str2 = strArrSplit[i6];
            int i9 = e.f2518a;
            localeArr[i6] = Locale.forLanguageTag(str2);
        }
        return a(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f2520a.equals(((f) obj).f2520a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2520a.hashCode();
    }

    public final String toString() {
        return this.f2520a.toString();
    }
}
