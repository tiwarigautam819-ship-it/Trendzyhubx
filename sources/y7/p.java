package y7;

import com.engagelab.privates.core.constants.MTCoreConstants;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements w7.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final List f6334g = s7.b.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    public static final List h = s7.b.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v7.l f6335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w7.f f6336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f6337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile w f6338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r7.s f6339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f6340f;

    public p(r7.r rVar, v7.l lVar, w7.f fVar, o oVar) {
        d7.g.f("http2Connection", oVar);
        this.f6335a = lVar;
        this.f6336b = fVar;
        this.f6337c = oVar;
        List list = rVar.f5129z;
        r7.s sVar = r7.s.H2_PRIOR_KNOWLEDGE;
        this.f6339e = list.contains(sVar) ? sVar : r7.s.HTTP_2;
    }

    @Override // w7.d
    public final void a(com.google.android.gms.common.internal.g gVar) throws IOException {
        int i6;
        w wVar;
        boolean z5;
        if (this.f6338d != null) {
            return;
        }
        boolean z8 = ((b0.d) gVar.f1412e) != null;
        r7.k kVar = (r7.k) gVar.f1410c;
        ArrayList arrayList = new ArrayList(kVar.size() + 4);
        arrayList.add(new b(b.f6272f, (String) gVar.f1411d));
        e8.j jVar = b.f6273g;
        r7.m mVar = (r7.m) gVar.f1409b;
        d7.g.f("url", mVar);
        String strB = mVar.b();
        String strD = mVar.d();
        if (strD != null) {
            strB = strB + '?' + strD;
        }
        arrayList.add(new b(jVar, strB));
        String strA = ((r7.k) gVar.f1410c).a("Host");
        if (strA != null) {
            arrayList.add(new b(b.f6274i, strA));
        }
        arrayList.add(new b(b.h, mVar.f5080a));
        int size = kVar.size();
        for (int i9 = 0; i9 < size; i9++) {
            String strB2 = kVar.b(i9);
            Locale locale = Locale.US;
            d7.g.e("US", locale);
            String lowerCase = strB2.toLowerCase(locale);
            d7.g.e("this as java.lang.String).toLowerCase(locale)", lowerCase);
            if (!f6334g.contains(lowerCase) || (lowerCase.equals("te") && d7.g.a(kVar.d(i9), "trailers"))) {
                arrayList.add(new b(lowerCase, kVar.d(i9)));
            }
        }
        o oVar = this.f6337c;
        oVar.getClass();
        boolean z9 = !z8;
        synchronized (oVar.E) {
            synchronized (oVar) {
                try {
                    if (oVar.f6321e > 1073741823) {
                        oVar.s(8);
                    }
                    if (oVar.f6322f) {
                        throw new a();
                    }
                    i6 = oVar.f6321e;
                    oVar.f6321e = i6 + 2;
                    wVar = new w(i6, oVar, z9, false, null);
                    z5 = !z8 || oVar.B >= oVar.C || wVar.f6366e >= wVar.f6367f;
                    if (wVar.i()) {
                        oVar.f6318b.put(Integer.valueOf(i6), wVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            oVar.E.s(z9, i6, arrayList);
        }
        if (z5) {
            oVar.E.flush();
        }
        this.f6338d = wVar;
        if (this.f6340f) {
            w wVar2 = this.f6338d;
            d7.g.c(wVar2);
            wVar2.e(9);
            throw new IOException("Canceled");
        }
        w wVar3 = this.f6338d;
        d7.g.c(wVar3);
        v vVar = wVar3.f6371k;
        long j3 = this.f6336b.f5775g;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        vVar.g(j3);
        w wVar4 = this.f6338d;
        d7.g.c(wVar4);
        wVar4.f6372l.g(this.f6336b.h);
    }

    @Override // w7.d
    public final e8.w b(r7.u uVar) {
        w wVar = this.f6338d;
        d7.g.c(wVar);
        return wVar.f6369i;
    }

    @Override // w7.d
    public final void c() {
        w wVar = this.f6338d;
        d7.g.c(wVar);
        wVar.g().close();
    }

    @Override // w7.d
    public final void cancel() {
        this.f6340f = true;
        w wVar = this.f6338d;
        if (wVar != null) {
            wVar.e(9);
        }
    }

    @Override // w7.d
    public final e8.u d(com.google.android.gms.common.internal.g gVar, long j3) {
        w wVar = this.f6338d;
        d7.g.c(wVar);
        return wVar.g();
    }

    @Override // w7.d
    public final void e() {
        this.f6337c.flush();
    }

    @Override // w7.d
    public final long f(r7.u uVar) {
        if (w7.e.a(uVar)) {
            return s7.b.j(uVar);
        }
        return 0L;
    }

    @Override // w7.d
    public final r7.t g(boolean z5) throws IOException {
        r7.k kVar;
        w wVar = this.f6338d;
        if (wVar == null) {
            throw new IOException("stream wasn't created");
        }
        synchronized (wVar) {
            wVar.f6371k.h();
            while (wVar.f6368g.isEmpty() && wVar.f6373m == 0) {
                try {
                    try {
                        wVar.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    wVar.f6371k.k();
                    throw th;
                }
            }
            wVar.f6371k.k();
            if (wVar.f6368g.isEmpty()) {
                IOException iOException = wVar.f6374n;
                if (iOException != null) {
                    throw iOException;
                }
                int i6 = wVar.f6373m;
                a1.a.m(i6);
                throw new b0(i6);
            }
            Object objRemoveFirst = wVar.f6368g.removeFirst();
            d7.g.e("headersQueue.removeFirst()", objRemoveFirst);
            kVar = (r7.k) objRemoveFirst;
        }
        r7.s sVar = this.f6339e;
        d7.g.f(MTCoreConstants.Protocol.KEY_PROTOCOL, sVar);
        ArrayList arrayList = new ArrayList(20);
        int size = kVar.size();
        b0.d dVarC = null;
        for (int i9 = 0; i9 < size; i9++) {
            String strB = kVar.b(i9);
            String strD = kVar.d(i9);
            if (d7.g.a(strB, ":status")) {
                dVarC = f4.f.c("HTTP/1.1 " + strD);
            } else if (!h.contains(strB)) {
                d7.g.f("name", strB);
                d7.g.f("value", strD);
                arrayList.add(strB);
                arrayList.add(k7.g.P(strD).toString());
            }
        }
        if (dVarC == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        r7.t tVar = new r7.t();
        tVar.f5138b = sVar;
        tVar.f5139c = dVarC.f854b;
        tVar.f5140d = (String) dVarC.f856d;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        r7.j jVar = new r7.j();
        ArrayList arrayList2 = jVar.f5070a;
        d7.g.f("<this>", arrayList2);
        d7.g.f("elements", strArr);
        arrayList2.addAll(s6.f.h(strArr));
        tVar.f5142f = jVar;
        if (z5 && tVar.f5139c == 100) {
            return null;
        }
        return tVar;
    }

    @Override // w7.d
    public final v7.l h() {
        return this.f6335a;
    }
}
