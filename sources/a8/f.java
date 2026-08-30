package a8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class f implements n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e f105f = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f110e;

    public f(Class cls) throws NoSuchMethodException {
        this.f106a = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        d7.g.e("sslSocketClass.getDeclar…:class.javaPrimitiveType)", declaredMethod);
        this.f107b = declaredMethod;
        this.f108c = cls.getMethod("setHostname", String.class);
        this.f109d = cls.getMethod("getAlpnSelectedProtocol", null);
        this.f110e = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // a8.n
    public final boolean a(SSLSocket sSLSocket) {
        return this.f106a.isInstance(sSLSocket);
    }

    @Override // a8.n
    public final String b(SSLSocket sSLSocket) {
        if (this.f106a.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f109d.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, k7.a.f3570a);
                }
            } catch (IllegalAccessException e9) {
                throw new AssertionError(e9);
            } catch (InvocationTargetException e10) {
                Throwable cause = e10.getCause();
                if (!(cause instanceof NullPointerException) || !d7.g.a(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    throw new AssertionError(e10);
                }
            }
        }
        return null;
    }

    @Override // a8.n
    public final boolean c() {
        boolean z5 = z7.c.f6418e;
        return z7.c.f6418e;
    }

    @Override // a8.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        d7.g.f("protocols", list);
        if (this.f106a.isInstance(sSLSocket)) {
            try {
                this.f107b.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.f108c.invoke(sSLSocket, str);
                }
                Method method = this.f110e;
                z7.n nVar = z7.n.f6440a;
                method.invoke(sSLSocket, w.i(list));
            } catch (IllegalAccessException e9) {
                throw new AssertionError(e9);
            } catch (InvocationTargetException e10) {
                throw new AssertionError(e10);
            }
        }
    }
}
