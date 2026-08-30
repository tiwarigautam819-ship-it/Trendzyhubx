package w7;

import com.google.firebase.messaging.z;
import e8.l;
import e8.q;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
import r7.j;
import r7.k;
import r7.m;
import r7.o;
import r7.p;
import r7.r;
import r7.t;
import r7.u;
import r7.w;
import v7.i;
import v7.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5766a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5767b;

    public a(r7.b bVar) {
        d7.g.f("cookieJar", bVar);
        this.f5767b = bVar;
    }

    public static int d(u uVar, int i6) {
        String strA = u.a("Retry-After", uVar);
        if (strA == null) {
            return i6;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        d7.g.e("compile(...)", patternCompile);
        if (!patternCompile.matcher(strA).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strA);
        d7.g.e("valueOf(header)", numValueOf);
        return numValueOf.intValue();
    }

    @Override // r7.o
    public final u a(f fVar) {
        w wVar;
        SSLSocketFactory sSLSocketFactory;
        d8.c cVar;
        r7.d dVar;
        switch (this.f5766a) {
            case 0:
                r7.b bVar = (r7.b) this.f5767b;
                com.google.android.gms.common.internal.g gVar = fVar.f5773e;
                k kVar = (k) gVar.f1410c;
                z zVarH = gVar.h();
                m mVar = (m) gVar.f1409b;
                b0.d dVar2 = (b0.d) gVar.f1412e;
                if (dVar2 != null) {
                    p pVar = (p) dVar2.f855c;
                    if (pVar != null) {
                        zVarH.c("Content-Type", pVar.f5090a);
                    }
                    long j3 = dVar2.f854b;
                    if (j3 != -1) {
                        zVarH.c("Content-Length", String.valueOf(j3));
                        ((j) zVarH.f2168c).d("Transfer-Encoding");
                    } else {
                        zVarH.c("Transfer-Encoding", "chunked");
                        ((j) zVarH.f2168c).d("Content-Length");
                    }
                }
                boolean z5 = false;
                if (kVar.a("Host") == null) {
                    zVarH.c("Host", s7.b.v(mVar, false));
                }
                if (kVar.a("Connection") == null) {
                    zVarH.c("Connection", "Keep-Alive");
                }
                if (kVar.a("Accept-Encoding") == null && kVar.a("Range") == null) {
                    zVarH.c("Accept-Encoding", "gzip");
                    z5 = true;
                }
                bVar.getClass();
                d7.g.f("url", mVar);
                if (kVar.a("User-Agent") == null) {
                    zVarH.c("User-Agent", "okhttp/4.12.0");
                }
                u uVarB = fVar.b(zVarH.a());
                k kVar2 = uVarB.f5154f;
                e.b(bVar, mVar, kVar2);
                t tVarC = uVarB.c();
                tVarC.f5137a = gVar;
                if (z5 && "gzip".equalsIgnoreCase(u.a("Content-Encoding", uVarB)) && e.a(uVarB) && (wVar = uVarB.f5155g) != null) {
                    l lVar = new l(wVar.g());
                    j jVarC = kVar2.c();
                    jVarC.d("Content-Encoding");
                    jVarC.d("Content-Length");
                    tVarC.f5142f = jVarC.c().c();
                    tVarC.f5143g = new g(u.a("Content-Type", uVarB), -1L, new q(lVar));
                }
                return tVarC.a();
            default:
                com.google.android.gms.common.internal.g gVar2 = fVar.f5773e;
                i iVar = fVar.f5769a;
                List list = s6.o.f5282a;
                u uVar = null;
                int i6 = 0;
                com.google.android.gms.common.internal.g gVarB = gVar2;
                while (true) {
                    boolean z8 = true;
                    while (iVar.f5675i == null) {
                        synchronized (iVar) {
                            try {
                                if (iVar.f5677k) {
                                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                                }
                                if (iVar.f5676j) {
                                    throw new IllegalStateException("Check failed.");
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z8) {
                            v7.m mVar2 = iVar.f5670c;
                            m mVar3 = (m) gVarB.f1409b;
                            r rVar = iVar.f5668a;
                            if (mVar3.f5087i) {
                                SSLSocketFactory sSLSocketFactory2 = rVar.f5126w;
                                if (sSLSocketFactory2 == null) {
                                    throw new IllegalStateException("CLEARTEXT-only client");
                                }
                                d8.c cVar2 = rVar.A;
                                dVar = rVar.B;
                                sSLSocketFactory = sSLSocketFactory2;
                                cVar = cVar2;
                            } else {
                                sSLSocketFactory = null;
                                cVar = null;
                                dVar = null;
                            }
                            iVar.f5674g = new v7.e(mVar2, new r7.a(mVar3.f5083d, mVar3.f5084e, rVar.f5122k, rVar.f5125v, sSLSocketFactory, cVar, dVar, rVar.f5124m, rVar.f5129z, rVar.f5128y, rVar.f5123l), iVar);
                        }
                        try {
                            if (iVar.f5679m) {
                                throw new IOException("Canceled");
                            }
                            try {
                                u uVarB2 = fVar.b(gVarB);
                                if (uVar != null) {
                                    t tVarC2 = uVarB2.c();
                                    t tVarC3 = uVar.c();
                                    tVarC3.f5143g = null;
                                    u uVarA = tVarC3.a();
                                    if (uVarA.f5155g != null) {
                                        throw new IllegalArgumentException("priorResponse.body != null");
                                    }
                                    tVarC2.f5145j = uVarA;
                                    uVarB2 = tVarC2.a();
                                }
                                uVar = uVarB2;
                                gVarB = b(uVar, iVar.f5675i);
                                if (gVarB == null) {
                                    iVar.g(false);
                                    return uVar;
                                }
                                w wVar2 = uVar.f5155g;
                                if (wVar2 != null) {
                                    s7.b.d(wVar2);
                                }
                                i6++;
                                if (i6 > 20) {
                                    throw new ProtocolException("Too many follow-up requests: " + i6);
                                }
                                iVar.g(true);
                            } catch (IOException e9) {
                                if (!c(e9, iVar, gVarB, !(e9 instanceof y7.a))) {
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        i2.t.a(e9, (Exception) it.next());
                                    }
                                    throw e9;
                                }
                                List list2 = list;
                                d7.g.f("<this>", list2);
                                ArrayList arrayList = new ArrayList(list2.size() + 1);
                                arrayList.addAll(list2);
                                arrayList.add(e9);
                                iVar.g(true);
                                list = arrayList;
                                z8 = false;
                            } catch (n e10) {
                                if (!c(e10.f5707b, iVar, gVarB, false)) {
                                    IOException iOException = e10.f5706a;
                                    d7.g.f("<this>", iOException);
                                    Iterator it2 = list.iterator();
                                    while (it2.hasNext()) {
                                        i2.t.a(iOException, (Exception) it2.next());
                                    }
                                    throw iOException;
                                }
                                List list3 = list;
                                IOException iOException2 = e10.f5706a;
                                d7.g.f("<this>", list3);
                                ArrayList arrayList2 = new ArrayList(list3.size() + 1);
                                arrayList2.addAll(list3);
                                arrayList2.add(iOException2);
                                iVar.g(true);
                                list = arrayList2;
                                z8 = false;
                            }
                        } catch (Throwable th2) {
                            iVar.g(true);
                            throw th2;
                        }
                    }
                    throw new IllegalStateException("Check failed.");
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.common.internal.g b(r7.u r12, com.google.firebase.messaging.p r13) throws java.net.ProtocolException {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w7.a.b(r7.u, com.google.firebase.messaging.p):com.google.android.gms.common.internal.g");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean c(java.io.IOException r4, v7.i r5, com.google.android.gms.common.internal.g r6, boolean r7) {
        /*
            r3 = this;
            java.lang.Object r6 = r3.f5767b
            r7.r r6 = (r7.r) r6
            boolean r6 = r6.f5118f
            r0 = 0
            if (r6 != 0) goto Lb
            goto L9d
        Lb:
            if (r7 == 0) goto L12
            boolean r6 = r4 instanceof java.io.FileNotFoundException
            if (r6 == 0) goto L12
            return r0
        L12:
            boolean r6 = r4 instanceof java.net.ProtocolException
            if (r6 == 0) goto L17
            return r0
        L17:
            boolean r6 = r4 instanceof java.io.InterruptedIOException
            if (r6 == 0) goto L22
            boolean r4 = r4 instanceof java.net.SocketTimeoutException
            if (r4 == 0) goto L9d
            if (r7 != 0) goto L9d
            goto L35
        L22:
            boolean r6 = r4 instanceof javax.net.ssl.SSLHandshakeException
            if (r6 == 0) goto L30
            java.lang.Throwable r6 = r4.getCause()
            boolean r6 = r6 instanceof java.security.cert.CertificateException
            if (r6 == 0) goto L30
            goto L9d
        L30:
            boolean r4 = r4 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r4 == 0) goto L35
            return r0
        L35:
            v7.e r4 = r5.f5674g
            d7.g.c(r4)
            int r5 = r4.f5660f
            r6 = 1
            if (r5 != 0) goto L49
            int r7 = r4.f5661g
            if (r7 != 0) goto L49
            int r7 = r4.h
            if (r7 != 0) goto L49
            r4 = r0
            goto L9b
        L49:
            r7.x r7 = r4.f5662i
            if (r7 == 0) goto L4e
            goto L96
        L4e:
            r7 = 0
            if (r5 > r6) goto L81
            int r5 = r4.f5661g
            if (r5 > r6) goto L81
            int r5 = r4.h
            if (r5 <= 0) goto L5a
            goto L81
        L5a:
            v7.i r5 = r4.f5657c
            v7.l r5 = r5.h
            if (r5 != 0) goto L61
            goto L81
        L61:
            monitor-enter(r5)
            int r1 = r5.f5695l     // Catch: java.lang.Throwable -> L7e
            if (r1 == 0) goto L68
            monitor-exit(r5)
            goto L81
        L68:
            r7.x r1 = r5.f5686b     // Catch: java.lang.Throwable -> L7e
            r7.a r1 = r1.f5163a     // Catch: java.lang.Throwable -> L7e
            r7.m r1 = r1.h     // Catch: java.lang.Throwable -> L7e
            r7.a r2 = r4.f5656b     // Catch: java.lang.Throwable -> L7e
            r7.m r2 = r2.h     // Catch: java.lang.Throwable -> L7e
            boolean r1 = s7.b.a(r1, r2)     // Catch: java.lang.Throwable -> L7e
            if (r1 != 0) goto L7a
            monitor-exit(r5)
            goto L81
        L7a:
            r7.x r7 = r5.f5686b     // Catch: java.lang.Throwable -> L7e
            monitor-exit(r5)
            goto L81
        L7e:
            r4 = move-exception
            monitor-exit(r5)
            throw r4
        L81:
            if (r7 == 0) goto L87
            r4.f5662i = r7
        L85:
            r4 = r6
            goto L9b
        L87:
            g.j r5 = r4.f5658d
            if (r5 == 0) goto L92
            boolean r5 = r5.c()
            if (r5 != r6) goto L92
            goto L96
        L92:
            k2.n r4 = r4.f5659e
            if (r4 != 0) goto L97
        L96:
            goto L85
        L97:
            boolean r4 = r4.d()
        L9b:
            if (r4 != 0) goto L9e
        L9d:
            return r0
        L9e:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: w7.a.c(java.io.IOException, v7.i, com.google.android.gms.common.internal.g, boolean):boolean");
    }

    public a(r rVar) {
        this.f5767b = rVar;
    }
}
