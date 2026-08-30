package z7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d8.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final X509TrustManager f6416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f6417b;

    public b(X509TrustManager x509TrustManager, Method method) {
        this.f6416a = x509TrustManager;
        this.f6417b = method;
    }

    @Override // d8.d
    public final X509Certificate a(X509Certificate x509Certificate) {
        try {
            Object objInvoke = this.f6417b.invoke(this.f6416a, x509Certificate);
            d7.g.d("null cannot be cast to non-null type java.security.cert.TrustAnchor", objInvoke);
            return ((TrustAnchor) objInvoke).getTrustedCert();
        } catch (IllegalAccessException e9) {
            throw new AssertionError("unable to get issues and signature", e9);
        } catch (InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return d7.g.a(this.f6416a, bVar.f6416a) && d7.g.a(this.f6417b, bVar.f6417b);
    }

    public final int hashCode() {
        return this.f6417b.hashCode() + (this.f6416a.hashCode() * 31);
    }

    public final String toString() {
        return "CustomTrustRootIndex(trustManager=" + this.f6416a + ", findByIssuerAndSignatureMethod=" + this.f6417b + ')';
    }
}
