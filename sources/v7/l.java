package v7;

import com.getcapacitor.PluginMethod;
import com.google.firebase.messaging.z;
import e8.p;
import e8.q;
import e8.y;
import i2.t;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import r7.r;
import r7.s;
import r7.u;
import r7.x;
import y7.a0;
import y7.o;
import y7.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends y7.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x f5686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Socket f5687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Socket f5688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r7.i f5689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s f5690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o f5691g;
    public q h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f5692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5694k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5695l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5696m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5697n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5698o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ArrayList f5699p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f5700q;

    public l(m mVar, x xVar) {
        d7.g.f("connectionPool", mVar);
        d7.g.f("route", xVar);
        this.f5686b = xVar;
        this.f5698o = 1;
        this.f5699p = new ArrayList();
        this.f5700q = Long.MAX_VALUE;
    }

    public static void d(r rVar, x xVar, IOException iOException) {
        d7.g.f("failedRoute", xVar);
        d7.g.f("failure", iOException);
        if (xVar.f5164b.type() != Proxy.Type.DIRECT) {
            r7.a aVar = xVar.f5163a;
            aVar.f5007g.connectFailed(aVar.h.g(), xVar.f5164b.address(), iOException);
        }
        o5.c cVar = rVar.G;
        synchronized (cVar) {
            ((LinkedHashSet) cVar.f4446b).add(xVar);
        }
    }

    @Override // y7.h
    public final synchronized void a(o oVar, a0 a0Var) {
        d7.g.f("settings", a0Var);
        this.f5698o = (a0Var.f6268a & 16) != 0 ? a0Var.f6269b[4] : Integer.MAX_VALUE;
    }

    @Override // y7.h
    public final void b(w wVar) {
        wVar.c(8, null);
    }

    public final void c(int i6, int i9, int i10, boolean z5, i iVar) throws Throwable {
        x xVar;
        if (this.f5690f != null) {
            throw new IllegalStateException("already connected");
        }
        List list = this.f5686b.f5163a.f5009j;
        b bVar = new b(list);
        r7.a aVar = this.f5686b.f5163a;
        if (aVar.f5003c == null) {
            if (!list.contains(r7.g.f5049f)) {
                throw new n(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String str = this.f5686b.f5163a.h.f5083d;
            z7.n nVar = z7.n.f6440a;
            if (!z7.n.f6440a.h(str)) {
                throw new n(new UnknownServiceException(q2.x.g("CLEARTEXT communication to ", str, " not permitted by network security policy")));
            }
        } else if (aVar.f5008i.contains(s.H2_PRIOR_KNOWLEDGE)) {
            throw new n(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        n nVar2 = null;
        do {
            try {
                x xVar2 = this.f5686b;
                if (xVar2.f5163a.f5003c != null && xVar2.f5164b.type() == Proxy.Type.HTTP) {
                    f(i6, i9, i10, iVar);
                    if (this.f5687c == null) {
                    }
                    xVar = this.f5686b;
                    if (xVar.f5163a.f5003c == null && xVar.f5164b.type() == Proxy.Type.HTTP && this.f5687c == null) {
                        throw new n(new ProtocolException("Too many tunnel connections attempted: 21"));
                    }
                    this.f5700q = System.nanoTime();
                    return;
                }
                e(i6, i9, iVar);
                g(bVar, iVar);
                d7.g.f("inetSocketAddress", this.f5686b.f5165c);
                xVar = this.f5686b;
                if (xVar.f5163a.f5003c == null) {
                }
                this.f5700q = System.nanoTime();
                return;
            } catch (IOException e9) {
                Socket socket = this.f5688d;
                if (socket != null) {
                    s7.b.e(socket);
                }
                Socket socket2 = this.f5687c;
                if (socket2 != null) {
                    s7.b.e(socket2);
                }
                this.f5688d = null;
                this.f5687c = null;
                this.h = null;
                this.f5692i = null;
                this.f5689e = null;
                this.f5690f = null;
                this.f5691g = null;
                this.f5698o = 1;
                d7.g.f("inetSocketAddress", this.f5686b.f5165c);
                if (nVar2 == null) {
                    nVar2 = new n(e9);
                } else {
                    t.a(nVar2.f5706a, e9);
                    nVar2.f5707b = e9;
                }
                if (!z5) {
                    throw nVar2;
                }
                bVar.f5641d = true;
                if (!bVar.f5640c) {
                    throw nVar2;
                }
                if (e9 instanceof ProtocolException) {
                    throw nVar2;
                }
                if (e9 instanceof InterruptedIOException) {
                    throw nVar2;
                }
                if ((e9 instanceof SSLHandshakeException) && (e9.getCause() instanceof CertificateException)) {
                    throw nVar2;
                }
                if (e9 instanceof SSLPeerUnverifiedException) {
                    throw nVar2;
                }
            }
        } while (e9 instanceof SSLException);
        throw nVar2;
    }

    public final void e(int i6, int i9, i iVar) throws IOException {
        Socket socketCreateSocket;
        x xVar = this.f5686b;
        Proxy proxy = xVar.f5164b;
        r7.a aVar = xVar.f5163a;
        Proxy.Type type = proxy.type();
        int i10 = type == null ? -1 : j.f5682a[type.ordinal()];
        if (i10 == 1 || i10 == 2) {
            socketCreateSocket = aVar.f5002b.createSocket();
            d7.g.c(socketCreateSocket);
        } else {
            socketCreateSocket = new Socket(proxy);
        }
        this.f5687c = socketCreateSocket;
        d7.g.f("inetSocketAddress", this.f5686b.f5165c);
        socketCreateSocket.setSoTimeout(i9);
        try {
            z7.n nVar = z7.n.f6440a;
            z7.n.f6440a.e(socketCreateSocket, this.f5686b.f5165c, i6);
            try {
                this.h = new q(l2.e.v(socketCreateSocket));
                this.f5692i = new p(l2.e.t(socketCreateSocket));
            } catch (NullPointerException e9) {
                if (d7.g.a(e9.getMessage(), "throw with null exception")) {
                    throw new IOException(e9);
                }
            }
        } catch (ConnectException e10) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f5686b.f5165c);
            connectException.initCause(e10);
            throw connectException;
        }
    }

    public final void f(int i6, int i9, int i10, i iVar) throws IOException {
        z zVar = new z();
        x xVar = this.f5686b;
        r7.m mVar = xVar.f5163a.h;
        d7.g.f("url", mVar);
        zVar.f2166a = mVar;
        zVar.d("CONNECT", null);
        r7.a aVar = xVar.f5163a;
        zVar.c("Host", s7.b.v(aVar.h, true));
        zVar.c("Proxy-Connection", "Keep-Alive");
        zVar.c("User-Agent", "okhttp/4.12.0");
        com.google.android.gms.common.internal.g gVarA = zVar.a();
        r7.j jVar = new r7.j();
        y1.g.e("Proxy-Authenticate");
        y1.g.f("OkHttp-Preemptive", "Proxy-Authenticate");
        jVar.d("Proxy-Authenticate");
        jVar.b("Proxy-Authenticate", "OkHttp-Preemptive");
        jVar.c();
        aVar.f5006f.getClass();
        r7.m mVar2 = (r7.m) gVarA.f1409b;
        e(i6, i9, iVar);
        String str = "CONNECT " + s7.b.v(mVar2, true) + " HTTP/1.1";
        q qVar = this.h;
        d7.g.c(qVar);
        p pVar = this.f5692i;
        d7.g.c(pVar);
        i5.a aVar2 = new i5.a(null, this, qVar, pVar);
        y yVarB = qVar.f2471a.b();
        long j3 = i9;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        yVarB.g(j3);
        pVar.f2468a.b().g(i10);
        aVar2.k((r7.k) gVarA.f1410c, str);
        aVar2.c();
        r7.t tVarG = aVar2.g(false);
        d7.g.c(tVarG);
        tVarG.f5137a = gVarA;
        u uVarA = tVarG.a();
        int i11 = uVarA.f5152d;
        long j8 = s7.b.j(uVarA);
        if (j8 != -1) {
            x7.e eVarJ = aVar2.j(j8);
            s7.b.t(eVarJ, Integer.MAX_VALUE);
            eVarJ.close();
        }
        if (i11 != 200) {
            if (i11 != 407) {
                throw new IOException(a1.a.i(i11, "Unexpected response code for CONNECT: "));
            }
            aVar.f5006f.getClass();
            throw new IOException("Failed to authenticate with proxy");
        }
        if (!qVar.f2472b.c() || !pVar.f2469b.c()) {
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void g(b bVar, i iVar) throws Throwable {
        s sVarM = s.HTTP_1_1;
        r7.a aVar = this.f5686b.f5163a;
        SSLSocketFactory sSLSocketFactory = aVar.f5003c;
        if (sSLSocketFactory == null) {
            List list = aVar.f5008i;
            s sVar = s.H2_PRIOR_KNOWLEDGE;
            if (!list.contains(sVar)) {
                this.f5688d = this.f5687c;
                this.f5690f = sVarM;
                return;
            } else {
                this.f5688d = this.f5687c;
                this.f5690f = sVar;
                m();
                return;
            }
        }
        SSLSocket sSLSocket = null;
        String strF = null;
        try {
            d7.g.c(sSLSocketFactory);
            Socket socket = this.f5687c;
            r7.m mVar = aVar.h;
            Socket socketCreateSocket = sSLSocketFactory.createSocket(socket, mVar.f5083d, mVar.f5084e, true);
            d7.g.d("null cannot be cast to non-null type javax.net.ssl.SSLSocket", socketCreateSocket);
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                r7.g gVarA = bVar.a(sSLSocket2);
                if (gVarA.f5051b) {
                    z7.n nVar = z7.n.f6440a;
                    z7.n.f6440a.d(sSLSocket2, aVar.h.f5083d, aVar.f5008i);
                }
                sSLSocket2.startHandshake();
                SSLSession session = sSLSocket2.getSession();
                d7.g.e("sslSocketSession", session);
                r7.i iVarG = x2.a.g(session);
                HostnameVerifier hostnameVerifier = aVar.f5004d;
                d7.g.c(hostnameVerifier);
                if (!hostnameVerifier.verify(aVar.h.f5083d, session)) {
                    List listA = iVarG.a();
                    if (listA.isEmpty()) {
                        throw new SSLPeerUnverifiedException("Hostname " + aVar.h.f5083d + " not verified (no certificates)");
                    }
                    Object obj = listA.get(0);
                    d7.g.d("null cannot be cast to non-null type java.security.cert.X509Certificate", obj);
                    X509Certificate x509Certificate = (X509Certificate) obj;
                    StringBuilder sb = new StringBuilder("\n              |Hostname ");
                    sb.append(aVar.h.f5083d);
                    sb.append(" not verified:\n              |    certificate: ");
                    r7.d dVar = r7.d.f5026c;
                    sb.append(m1.j.m(x509Certificate));
                    sb.append("\n              |    DN: ");
                    sb.append(x509Certificate.getSubjectDN().getName());
                    sb.append("\n              |    subjectAltNames: ");
                    sb.append(s6.g.t(d8.c.a(x509Certificate, 7), d8.c.a(x509Certificate, 2)));
                    sb.append("\n              ");
                    throw new SSLPeerUnverifiedException(k7.h.o(sb.toString()));
                }
                r7.d dVar2 = aVar.f5005e;
                d7.g.c(dVar2);
                this.f5689e = new r7.i(iVarG.f5066a, iVarG.f5067b, iVarG.f5068c, new k(dVar2, iVarG, aVar));
                d7.g.f("hostname", aVar.h.f5083d);
                Iterator it = dVar2.f5027a.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    throw new ClassCastException();
                }
                if (gVarA.f5051b) {
                    z7.n nVar2 = z7.n.f6440a;
                    strF = z7.n.f6440a.f(sSLSocket2);
                }
                this.f5688d = sSLSocket2;
                this.h = new q(l2.e.v(sSLSocket2));
                this.f5692i = new p(l2.e.t(sSLSocket2));
                if (strF != null) {
                    sVarM = j7.g.m(strF);
                }
                this.f5690f = sVarM;
                z7.n nVar3 = z7.n.f6440a;
                z7.n.f6440a.a(sSLSocket2);
                if (this.f5690f == s.HTTP_2) {
                    m();
                }
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    z7.n nVar4 = z7.n.f6440a;
                    z7.n.f6440a.a(sSLSocket);
                }
                if (sSLSocket != null) {
                    s7.b.e(sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized void h() {
        this.f5696m++;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean i(r7.a r11, java.util.List r12) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.l.i(r7.a, java.util.List):boolean");
    }

    public final boolean j(boolean z5) {
        long j3;
        byte[] bArr = s7.b.f5287a;
        long jNanoTime = System.nanoTime();
        Socket socket = this.f5687c;
        d7.g.c(socket);
        Socket socket2 = this.f5688d;
        d7.g.c(socket2);
        d7.g.c(this.h);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        o oVar = this.f5691g;
        if (oVar != null) {
            return oVar.g(jNanoTime);
        }
        synchronized (this) {
            j3 = jNanoTime - this.f5700q;
        }
        if (j3 < 10000000000L || !z5) {
            return true;
        }
        try {
            int soTimeout = socket2.getSoTimeout();
            try {
                socket2.setSoTimeout(1);
                return !r4.a();
            } finally {
                socket2.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final w7.d k(r rVar, w7.f fVar) {
        int i6 = fVar.f5775g;
        Socket socket = this.f5688d;
        d7.g.c(socket);
        q qVar = this.h;
        d7.g.c(qVar);
        p pVar = this.f5692i;
        d7.g.c(pVar);
        o oVar = this.f5691g;
        if (oVar != null) {
            return new y7.p(rVar, this, fVar, oVar);
        }
        socket.setSoTimeout(i6);
        y yVarB = qVar.f2471a.b();
        long j3 = i6;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        yVarB.g(j3);
        pVar.f2468a.b().g(fVar.h);
        return new i5.a(rVar, this, qVar, pVar);
    }

    public final synchronized void l() {
        this.f5693j = true;
    }

    public final void m() throws SocketException {
        Socket socket = this.f5688d;
        d7.g.c(socket);
        q qVar = this.h;
        d7.g.c(qVar);
        p pVar = this.f5692i;
        d7.g.c(pVar);
        socket.setSoTimeout(0);
        u7.d dVar = u7.d.f5518i;
        com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g(dVar);
        String str = this.f5686b.f5163a.h.f5083d;
        d7.g.f("peerName", str);
        gVar.f1410c = socket;
        String str2 = s7.b.f5293g + ' ' + str;
        d7.g.f("<set-?>", str2);
        gVar.f1411d = str2;
        gVar.f1412e = qVar;
        gVar.f1413f = pVar;
        gVar.f1414g = this;
        o oVar = new o(gVar);
        this.f5691g = oVar;
        a0 a0Var = o.H;
        this.f5698o = (a0Var.f6268a & 16) != 0 ? a0Var.f6269b[4] : Integer.MAX_VALUE;
        y7.x xVar = oVar.E;
        synchronized (xVar) {
            try {
                if (xVar.f6379d) {
                    throw new IOException("closed");
                }
                Logger logger = y7.x.f6375f;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(s7.b.h(">> CONNECTION " + y7.f.f6295a.b(), new Object[0]));
                }
                xVar.f6376a.j(y7.f.f6295a);
                xVar.f6376a.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
        oVar.E.v(oVar.f6331x);
        if (oVar.f6331x.a() != 65535) {
            oVar.E.w(0, r1 - 65535);
        }
        dVar.e().c(new u7.b(oVar.f6319c, oVar.F, 0), 0L);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        x xVar = this.f5686b;
        sb.append(xVar.f5163a.h.f5083d);
        sb.append(':');
        sb.append(xVar.f5163a.h.f5084e);
        sb.append(", proxy=");
        sb.append(xVar.f5164b);
        sb.append(" hostAddress=");
        sb.append(xVar.f5165c);
        sb.append(" cipherSuite=");
        r7.i iVar = this.f5689e;
        if (iVar == null || (obj = iVar.f5067b) == null) {
            obj = PluginMethod.RETURN_NONE;
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f5690f);
        sb.append('}');
        return sb.toString();
    }
}
