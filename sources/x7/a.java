package x7;

import com.google.firebase.analytics.FirebaseAnalytics;
import e8.i;
import r7.j;
import r7.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f6027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f6028b;

    public a(i iVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, iVar);
        this.f6027a = iVar;
        this.f6028b = 262144L;
    }

    public final k a() {
        j jVar = new j();
        while (true) {
            String strI = this.f6027a.i(this.f6028b);
            this.f6028b -= (long) strI.length();
            if (strI.length() == 0) {
                return jVar.c();
            }
            int iA = k7.g.A(strI, ':', 1, 4);
            if (iA != -1) {
                String strSubstring = strI.substring(0, iA);
                d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
                String strSubstring2 = strI.substring(iA + 1);
                d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring2);
                jVar.b(strSubstring, strSubstring2);
            } else if (strI.charAt(0) == ':') {
                String strSubstring3 = strI.substring(1);
                d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring3);
                jVar.b("", strSubstring3);
            } else {
                jVar.b("", strI);
            }
        }
    }
}
