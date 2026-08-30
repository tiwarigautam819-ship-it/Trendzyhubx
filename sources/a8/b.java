package a8;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends d4.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final X509TrustManager f100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final X509TrustManagerExtensions f101e;

    public b(X509TrustManager x509TrustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        this.f100d = x509TrustManager;
        this.f101e = x509TrustManagerExtensions;
    }

    @Override // d4.a
    public final List a(String str, List list) throws SSLPeerUnverifiedException {
        d7.g.f("chain", list);
        d7.g.f("hostname", str);
        try {
            List<X509Certificate> listCheckServerTrusted = this.f101e.checkServerTrusted((X509Certificate[]) list.toArray(new X509Certificate[0]), "RSA", str);
            d7.g.e("x509TrustManagerExtensio…ficates, \"RSA\", hostname)", listCheckServerTrusted);
            return listCheckServerTrusted;
        } catch (CertificateException e9) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e9.getMessage());
            sSLPeerUnverifiedException.initCause(e9);
            throw sSLPeerUnverifiedException;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof b) && ((b) obj).f100d == this.f100d;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f100d);
    }
}
