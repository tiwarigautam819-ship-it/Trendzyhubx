package z7;

import a8.o;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f6418e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f6419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a8.i f6420d;

    static {
        boolean z5 = false;
        if (w.r() && Build.VERSION.SDK_INT < 30) {
            z5 = true;
        }
        f6418e = z5;
    }

    public c() throws NoSuchMethodException {
        o oVar;
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketImpl"));
            Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketFactoryImpl"));
            Class.forName("com.android.org.conscrypt".concat(".SSLParametersImpl"));
            oVar = new o(cls);
        } catch (Exception e9) {
            n.f6440a.getClass();
            n.i("unable to load android socket classes", 5, e9);
            oVar = null;
        }
        ArrayList arrayListO = s6.f.o(new a8.n[]{oVar, new a8.m(a8.f.f105f), new a8.m(a8.k.f115a), new a8.m(a8.h.f111a)});
        ArrayList arrayList = new ArrayList();
        int size = arrayListO.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListO.get(i6);
            i6++;
            if (((a8.n) obj).c()) {
                arrayList.add(obj);
            }
        }
        this.f6419c = arrayList;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", null);
            method = cls2.getMethod("open", String.class);
            method2 = cls2.getMethod("warnIfOpen", null);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        this.f6420d = new a8.i(method3, method, method2);
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
    public final d8.d c(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // z7.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        d7.g.f("protocols", list);
        ArrayList arrayList = this.f6419c;
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
    public final void e(Socket socket, InetSocketAddress inetSocketAddress, int i6) throws IOException {
        d7.g.f("address", inetSocketAddress);
        try {
            socket.connect(inetSocketAddress, i6);
        } catch (ClassCastException e9) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e9;
            }
            throw new IOException("Exception in connect", e9);
        }
    }

    @Override // z7.n
    public final String f(SSLSocket sSLSocket) {
        Object obj;
        ArrayList arrayList = this.f6419c;
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
    public final Object g() {
        a8.i iVar = this.f6420d;
        iVar.getClass();
        Method method = iVar.f112a;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(null, null);
                Method method2 = iVar.f113b;
                d7.g.c(method2);
                method2.invoke(objInvoke, "response.body().close()");
                return objInvoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // z7.n
    public final boolean h(String str) {
        d7.g.f("hostname", str);
        return Build.VERSION.SDK_INT >= 24 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str) : NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    @Override // z7.n
    public final void j(String str, Object obj) {
        d7.g.f(MTPushConstants.Message.KEY_MESSAGE, str);
        a8.i iVar = this.f6420d;
        iVar.getClass();
        if (obj != null) {
            try {
                Method method = iVar.f114c;
                d7.g.c(method);
                method.invoke(obj, null);
                return;
            } catch (Exception unused) {
            }
        }
        n.i(str, 5, null);
    }
}
