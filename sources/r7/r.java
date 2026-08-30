package r7;

import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Cloneable {
    public static final List H = s7.b.k(s.HTTP_2, s.HTTP_1_1);
    public static final List I = s7.b.k(g.f5048e, g.f5049f);
    public final d8.c A;
    public final d B;
    public final d4.a C;
    public final int D;
    public final int E;
    public final int F;
    public final o5.c G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.firebase.messaging.y f5113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k1.h f5114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f5115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f5116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.getcapacitor.n f5117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f5119g;
    public final boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f5121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b f5122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ProxySelector f5123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final b f5124m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final SocketFactory f5125v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final SSLSocketFactory f5126w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final X509TrustManager f5127x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final List f5128y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final List f5129z;

    public r(q qVar) throws NoSuchAlgorithmException, KeyStoreException {
        this.f5113a = qVar.f5094a;
        this.f5114b = qVar.f5095b;
        this.f5115c = s7.b.w(qVar.f5096c);
        this.f5116d = s7.b.w(qVar.f5097d);
        this.f5117e = qVar.f5098e;
        this.f5118f = qVar.f5099f;
        this.f5119g = qVar.f5100g;
        this.h = qVar.h;
        this.f5120i = qVar.f5101i;
        this.f5121j = qVar.f5102j;
        this.f5122k = qVar.f5103k;
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.f5123l = proxySelector == null ? b8.a.f984a : proxySelector;
        this.f5124m = qVar.f5104l;
        this.f5125v = qVar.f5105m;
        List list = qVar.f5106n;
        this.f5128y = list;
        this.f5129z = qVar.f5107o;
        this.A = qVar.f5108p;
        this.D = qVar.f5110r;
        this.E = qVar.f5111s;
        this.F = qVar.f5112t;
        this.G = new o5.c(26);
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            this.f5126w = null;
            this.C = null;
            this.f5127x = null;
            this.B = d.f5026c;
        } else {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((g) it.next()).f5050a) {
                    z7.n nVar = z7.n.f6440a;
                    X509TrustManager x509TrustManagerM = z7.n.f6440a.m();
                    this.f5127x = x509TrustManagerM;
                    this.f5126w = z7.n.f6440a.l(x509TrustManagerM);
                    d4.a aVarB = z7.n.f6440a.b(x509TrustManagerM);
                    this.C = aVarB;
                    d dVar = qVar.f5109q;
                    this.B = d7.g.a(dVar.f5028b, aVarB) ? dVar : new d(dVar.f5027a, aVarB);
                }
            }
            this.f5126w = null;
            this.C = null;
            this.f5127x = null;
            this.B = d.f5026c;
        }
        X509TrustManager x509TrustManager = this.f5127x;
        d4.a aVar = this.C;
        SSLSocketFactory sSLSocketFactory = this.f5126w;
        List list3 = this.f5116d;
        List list4 = this.f5115c;
        d7.g.d("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>", list4);
        if (list4.contains(null)) {
            throw new IllegalStateException(("Null interceptor: " + list4).toString());
        }
        d7.g.d("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>", list3);
        if (list3.contains(null)) {
            throw new IllegalStateException(("Null network interceptor: " + list3).toString());
        }
        List list5 = this.f5128y;
        if (!(list5 instanceof Collection) || !list5.isEmpty()) {
            Iterator it2 = list5.iterator();
            while (it2.hasNext()) {
                if (((g) it2.next()).f5050a) {
                    if (sSLSocketFactory == null) {
                        throw new IllegalStateException("sslSocketFactory == null");
                    }
                    if (aVar == null) {
                        throw new IllegalStateException("certificateChainCleaner == null");
                    }
                    if (x509TrustManager == null) {
                        throw new IllegalStateException("x509TrustManager == null");
                    }
                    return;
                }
            }
        }
        if (sSLSocketFactory != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (aVar != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (x509TrustManager != null) {
            throw new IllegalStateException("Check failed.");
        }
        if (!d7.g.a(this.B, d.f5026c)) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final Object clone() {
        return super.clone();
    }
}
