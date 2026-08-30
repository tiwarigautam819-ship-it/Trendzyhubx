package a8;

import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n f117b;

    public m(l lVar) {
        this.f116a = lVar;
    }

    @Override // a8.n
    public final boolean a(SSLSocket sSLSocket) {
        return this.f116a.a(sSLSocket);
    }

    @Override // a8.n
    public final String b(SSLSocket sSLSocket) {
        n nVarE = e(sSLSocket);
        if (nVarE != null) {
            return nVarE.b(sSLSocket);
        }
        return null;
    }

    @Override // a8.n
    public final boolean c() {
        return true;
    }

    @Override // a8.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        d7.g.f("protocols", list);
        n nVarE = e(sSLSocket);
        if (nVarE != null) {
            nVarE.d(sSLSocket, str, list);
        }
    }

    public final synchronized n e(SSLSocket sSLSocket) {
        try {
            if (this.f117b == null && this.f116a.a(sSLSocket)) {
                this.f117b = this.f116a.b(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f117b;
    }
}
