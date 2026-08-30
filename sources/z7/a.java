package z7;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f6414d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f6415c;

    static {
        f6414d = w.r() && Build.VERSION.SDK_INT >= 29;
    }

    public a() {
        int i6 = 0;
        ArrayList arrayListO = s6.f.o(new a8.n[]{(!w.r() || Build.VERSION.SDK_INT < 29) ? null : new a8.a(), new a8.m(a8.f.f105f), new a8.m(a8.k.f115a), new a8.m(a8.h.f111a)});
        ArrayList arrayList = new ArrayList();
        int size = arrayListO.size();
        while (i6 < size) {
            Object obj = arrayListO.get(i6);
            i6++;
            if (((a8.n) obj).c()) {
                arrayList.add(obj);
            }
        }
        this.f6415c = arrayList;
    }

    @Override // z7.n
    public final d4.a b(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        a8.b bVar = x509TrustManagerExtensions != null ? new a8.b(x509TrustManager, x509TrustManagerExtensions) : null;
        return bVar != null ? bVar : new d8.a(c(x509TrustManager));
    }

    @Override // z7.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        d7.g.f("protocols", list);
        ArrayList arrayList = this.f6415c;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i6);
            i6++;
            if (((a8.n) obj).a(sSLSocket)) {
                break;
            }
        }
        a8.n nVar = (a8.n) obj;
        if (nVar != null) {
            nVar.d(sSLSocket, str, list);
        }
    }

    @Override // z7.n
    public final String f(SSLSocket sSLSocket) {
        Object obj;
        ArrayList arrayList = this.f6415c;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i6);
            i6++;
            if (((a8.n) obj).a(sSLSocket)) {
                break;
            }
        }
        a8.n nVar = (a8.n) obj;
        if (nVar != null) {
            return nVar.b(sSLSocket);
        }
        return null;
    }

    @Override // z7.n
    public final boolean h(String str) {
        d7.g.f("hostname", str);
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }
}
