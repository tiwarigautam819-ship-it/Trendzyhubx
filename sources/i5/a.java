package i5;

import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import e8.h;
import e8.p;
import e8.q;
import e8.w;
import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import q2.x;
import r7.k;
import r7.m;
import r7.r;
import r7.s;
import r7.t;
import r7.u;
import v7.l;
import w7.d;
import w7.e;
import x7.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f3208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f3210g;

    public a(r rVar, l lVar, q qVar, p pVar) {
        g.f(FirebaseAnalytics.Param.SOURCE, qVar);
        g.f("sink", pVar);
        this.f3205b = rVar;
        this.f3206c = lVar;
        this.f3207d = qVar;
        this.f3208e = pVar;
        this.f3209f = new x7.a(qVar);
    }

    @Override // w7.d
    public void a(com.google.android.gms.common.internal.g gVar) {
        Proxy.Type type = ((l) this.f3206c).f5686b.f5164b.type();
        g.e("connection.route().proxy.type()", type);
        StringBuilder sb = new StringBuilder();
        sb.append((String) gVar.f1411d);
        sb.append(' ');
        m mVar = (m) gVar.f1409b;
        if (mVar.f5087i || type != Proxy.Type.HTTP) {
            String strB = mVar.b();
            String strD = mVar.d();
            if (strD != null) {
                strB = strB + '?' + strD;
            }
            sb.append(strB);
        } else {
            sb.append(mVar);
        }
        sb.append(" HTTP/1.1");
        String string = sb.toString();
        g.e("StringBuilder().apply(builderAction).toString()", string);
        k((k) gVar.f1410c, string);
    }

    @Override // w7.d
    public w b(u uVar) {
        if (!e.a(uVar)) {
            return j(0L);
        }
        if ("chunked".equalsIgnoreCase(u.a("Transfer-Encoding", uVar))) {
            m mVar = (m) uVar.f5149a.f1409b;
            if (this.f3204a == 4) {
                this.f3204a = 5;
                return new x7.d(this, mVar);
            }
            throw new IllegalStateException(("state: " + this.f3204a).toString());
        }
        long j3 = s7.b.j(uVar);
        if (j3 != -1) {
            return j(j3);
        }
        if (this.f3204a == 4) {
            this.f3204a = 5;
            ((l) this.f3206c).l();
            return new x7.g(this);
        }
        throw new IllegalStateException(("state: " + this.f3204a).toString());
    }

    @Override // w7.d
    public void c() {
        ((h) this.f3208e).flush();
    }

    @Override // w7.d
    public void cancel() {
        Socket socket = ((l) this.f3206c).f5687c;
        if (socket != null) {
            s7.b.e(socket);
        }
    }

    @Override // w7.d
    public e8.u d(com.google.android.gms.common.internal.g gVar, long j3) {
        if ("chunked".equalsIgnoreCase(((k) gVar.f1410c).a("Transfer-Encoding"))) {
            if (this.f3204a == 1) {
                this.f3204a = 2;
                return new x7.c(this);
            }
            throw new IllegalStateException(("state: " + this.f3204a).toString());
        }
        if (j3 == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f3204a == 1) {
            this.f3204a = 2;
            return new f(this);
        }
        throw new IllegalStateException(("state: " + this.f3204a).toString());
    }

    @Override // w7.d
    public void e() {
        ((h) this.f3208e).flush();
    }

    @Override // w7.d
    public long f(u uVar) {
        if (!e.a(uVar)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(u.a("Transfer-Encoding", uVar))) {
            return -1L;
        }
        return s7.b.j(uVar);
    }

    @Override // w7.d
    public t g(boolean z5) throws IOException {
        x7.a aVar = (x7.a) this.f3209f;
        int i6 = this.f3204a;
        if (i6 != 1 && i6 != 2 && i6 != 3) {
            throw new IllegalStateException(("state: " + this.f3204a).toString());
        }
        try {
            String strI = aVar.f6027a.i(aVar.f6028b);
            aVar.f6028b -= (long) strI.length();
            b0.d dVarC = f4.f.c(strI);
            int i9 = dVarC.f854b;
            t tVar = new t();
            tVar.f5138b = (s) dVarC.f855c;
            tVar.f5139c = i9;
            tVar.f5140d = (String) dVarC.f856d;
            tVar.f5142f = aVar.a().c();
            if (z5 && i9 == 100) {
                return null;
            }
            if (i9 == 100) {
                this.f3204a = 3;
                return tVar;
            }
            if (102 > i9 || i9 >= 200) {
                this.f3204a = 4;
                return tVar;
            }
            this.f3204a = 3;
            return tVar;
        } catch (EOFException e9) {
            throw new IOException("unexpected end of stream on ".concat(((l) this.f3206c).f5686b.f5163a.h.f()), e9);
        }
    }

    @Override // w7.d
    public l h() {
        return (l) this.f3206c;
    }

    public b i() {
        String strF = this.f3204a == 0 ? " registrationStatus" : "";
        if (((Long) this.f3209f) == null) {
            strF = strF.concat(" expiresInSecs");
        }
        if (((Long) this.f3210g) == null) {
            strF = x.f(strF, " tokenCreationEpochInSecs");
        }
        if (!strF.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
        return new b(((Long) this.f3209f).longValue(), this.f3204a, ((Long) this.f3210g).longValue(), (String) this.f3205b, (String) this.f3206c, (String) this.f3207d, (String) this.f3208e);
    }

    public x7.e j(long j3) {
        if (this.f3204a == 4) {
            this.f3204a = 5;
            return new x7.e(this, j3);
        }
        throw new IllegalStateException(("state: " + this.f3204a).toString());
    }

    public void k(k kVar, String str) {
        h hVar = (h) this.f3208e;
        g.f("requestLine", str);
        if (this.f3204a != 0) {
            throw new IllegalStateException(("state: " + this.f3204a).toString());
        }
        hVar.m(str).m("\r\n");
        int size = kVar.size();
        for (int i6 = 0; i6 < size; i6++) {
            hVar.m(kVar.b(i6)).m(": ").m(kVar.d(i6)).m("\r\n");
        }
        hVar.m("\r\n");
        this.f3204a = 1;
    }
}
