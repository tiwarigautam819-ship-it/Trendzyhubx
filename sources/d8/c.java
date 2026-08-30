package d8;

import d7.g;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import s6.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f2302a = new c();

    public static List a(X509Certificate x509Certificate, int i6) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && g.a(list.get(0), Integer.valueOf(i6)) && (obj = list.get(1)) != null) {
                        arrayList.add((String) obj);
                    }
                }
                return arrayList;
            }
        } catch (CertificateParsingException unused) {
        }
        return o.f5282a;
    }

    public static boolean b(String str) {
        int i6;
        int length = str.length();
        int length2 = str.length();
        if (length2 < 0) {
            throw new IllegalArgumentException(a1.a.j(length2, "endIndex < beginIndex: ", " < 0").toString());
        }
        if (length2 > str.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + length2 + " > " + str.length()).toString());
        }
        long j3 = 0;
        int i9 = 0;
        while (i9 < length2) {
            char cCharAt = str.charAt(i9);
            if (cCharAt < 128) {
                j3++;
            } else {
                if (cCharAt < 2048) {
                    i6 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i6 = 3;
                } else {
                    int i10 = i9 + 1;
                    char cCharAt2 = i10 < length2 ? str.charAt(i10) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j3++;
                        i9 = i10;
                    } else {
                        j3 += (long) 4;
                        i9 += 2;
                    }
                }
                j3 += (long) i6;
            }
            i9++;
        }
        return length == ((int) j3);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean c(java.lang.String r11, java.security.cert.X509Certificate r12) {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: d8.c.c(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        g.f("host", str);
        g.f("session", sSLSession);
        if (b(str)) {
            try {
                Certificate certificate = sSLSession.getPeerCertificates()[0];
                g.d("null cannot be cast to non-null type java.security.cert.X509Certificate", certificate);
                return c(str, (X509Certificate) certificate);
            } catch (SSLException unused) {
            }
        }
        return false;
    }
}
