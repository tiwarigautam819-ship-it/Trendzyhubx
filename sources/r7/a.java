package r7;

import com.getcapacitor.Bridge;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f5001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SocketFactory f5002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SSLSocketFactory f5003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HostnameVerifier f5004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f5005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f5006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProxySelector f5007g;
    public final m h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f5008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f5009j;

    public a(String str, int i6, b bVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, d dVar, b bVar2, List list, List list2, ProxySelector proxySelector) {
        d7.g.f("uriHost", str);
        d7.g.f("dns", bVar);
        d7.g.f("socketFactory", socketFactory);
        d7.g.f("proxyAuthenticator", bVar2);
        d7.g.f("protocols", list);
        d7.g.f("connectionSpecs", list2);
        d7.g.f("proxySelector", proxySelector);
        this.f5001a = bVar;
        this.f5002b = socketFactory;
        this.f5003c = sSLSocketFactory;
        this.f5004d = hostnameVerifier;
        this.f5005e = dVar;
        this.f5006f = bVar2;
        this.f5007g = proxySelector;
        l lVar = new l();
        String str2 = sSLSocketFactory != null ? Bridge.CAPACITOR_HTTPS_SCHEME : Bridge.CAPACITOR_HTTP_SCHEME;
        if (str2.equalsIgnoreCase(Bridge.CAPACITOR_HTTP_SCHEME)) {
            lVar.f5072a = Bridge.CAPACITOR_HTTP_SCHEME;
        } else {
            if (!str2.equalsIgnoreCase(Bridge.CAPACITOR_HTTPS_SCHEME)) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
            }
            lVar.f5072a = Bridge.CAPACITOR_HTTPS_SCHEME;
        }
        String strM = k2.e.m(b.e(str, 0, 0, 7));
        if (strM == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(str));
        }
        lVar.f5075d = strM;
        if (1 > i6 || i6 >= 65536) {
            throw new IllegalArgumentException(a1.a.i(i6, "unexpected port: ").toString());
        }
        lVar.f5076e = i6;
        this.h = lVar.a();
        this.f5008i = s7.b.w(list);
        this.f5009j = s7.b.w(list2);
    }

    public final boolean a(a aVar) {
        d7.g.f("that", aVar);
        return d7.g.a(this.f5001a, aVar.f5001a) && d7.g.a(this.f5006f, aVar.f5006f) && d7.g.a(this.f5008i, aVar.f5008i) && d7.g.a(this.f5009j, aVar.f5009j) && d7.g.a(this.f5007g, aVar.f5007g) && d7.g.a(this.f5003c, aVar.f5003c) && d7.g.a(this.f5004d, aVar.f5004d) && d7.g.a(this.f5005e, aVar.f5005e) && this.h.f5084e == aVar.h.f5084e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return d7.g.a(this.h, aVar.h) && a(aVar);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f5005e) + ((Objects.hashCode(this.f5004d) + ((Objects.hashCode(this.f5003c) + ((this.f5007g.hashCode() + ((this.f5009j.hashCode() + ((this.f5008i.hashCode() + ((this.f5006f.hashCode() + ((this.f5001a.hashCode() + q2.x.d(527, this.h.h, 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        m mVar = this.h;
        sb.append(mVar.f5083d);
        sb.append(':');
        sb.append(mVar.f5084e);
        sb.append(", ");
        sb.append("proxySelector=" + this.f5007g);
        sb.append('}');
        return sb.toString();
    }
}
