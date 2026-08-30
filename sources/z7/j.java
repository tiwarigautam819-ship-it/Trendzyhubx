package z7;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import r7.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f6431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f6432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f6433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f6434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f6435g;

    public j(Method method, Method method2, Method method3, Class cls, Class cls2) {
        this.f6431c = method;
        this.f6432d = method2;
        this.f6433e = method3;
        this.f6434f = cls;
        this.f6435g = cls2;
    }

    @Override // z7.n
    public final void a(SSLSocket sSLSocket) {
        try {
            this.f6433e.invoke(null, sSLSocket);
        } catch (IllegalAccessException e9) {
            throw new AssertionError("failed to remove ALPN", e9);
        } catch (InvocationTargetException e10) {
            throw new AssertionError("failed to remove ALPN", e10);
        }
    }

    @Override // z7.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        d7.g.f("protocols", list);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((s) obj) != s.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(s6.i.n(arrayList));
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj2 = arrayList.get(i6);
            i6++;
            arrayList2.add(((s) obj2).f5136a);
        }
        try {
            this.f6431c.invoke(null, sSLSocket, Proxy.newProxyInstance(n.class.getClassLoader(), new Class[]{this.f6434f, this.f6435g}, new i(arrayList2)));
        } catch (IllegalAccessException e9) {
            throw new AssertionError("failed to set ALPN", e9);
        } catch (InvocationTargetException e10) {
            throw new AssertionError("failed to set ALPN", e10);
        }
    }

    @Override // z7.n
    public final String f(SSLSocket sSLSocket) {
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f6432d.invoke(null, sSLSocket));
            d7.g.d("null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider", invocationHandler);
            i iVar = (i) invocationHandler;
            boolean z5 = iVar.f6429b;
            if (!z5 && iVar.f6430c == null) {
                n.i("ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 4, null);
                return null;
            }
            if (z5) {
                return null;
            }
            return iVar.f6430c;
        } catch (IllegalAccessException e9) {
            throw new AssertionError("failed to get ALPN selected protocol", e9);
        } catch (InvocationTargetException e10) {
            throw new AssertionError("failed to get ALPN selected protocol", e10);
        }
    }
}
