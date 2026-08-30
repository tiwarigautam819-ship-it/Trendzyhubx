package a8;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f111a = new g();

    @Override // a8.n
    public final boolean a(SSLSocket sSLSocket) {
        return false;
    }

    @Override // a8.n
    public final String b(SSLSocket sSLSocket) {
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // a8.n
    public final boolean c() {
        boolean z5 = z7.e.f6423d;
        return z7.e.f6423d;
    }

    @Override // a8.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        d7.g.f("protocols", list);
        if (a(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            z7.n nVar = z7.n.f6440a;
            parameters.setApplicationProtocols((String[]) w.h(list).toArray(new String[0]));
            bCSSLSocket.setParameters(parameters);
        }
    }
}
