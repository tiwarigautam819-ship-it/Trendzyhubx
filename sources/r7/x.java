package r7;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f5163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Proxy f5164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f5165c;

    public x(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        d7.g.f("socketAddress", inetSocketAddress);
        this.f5163a = aVar;
        this.f5164b = proxy;
        this.f5165c = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return d7.g.a(xVar.f5163a, this.f5163a) && d7.g.a(xVar.f5164b, this.f5164b) && d7.g.a(xVar.f5165c, this.f5165c);
    }

    public final int hashCode() {
        return this.f5165c.hashCode() + ((this.f5164b.hashCode() + ((this.f5163a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.f5165c + '}';
    }
}
