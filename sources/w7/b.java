package w7;

import com.google.firebase.messaging.p;
import e8.q;
import java.io.IOException;
import java.net.ProtocolException;
import r7.k;
import r7.o;
import r7.t;
import r7.u;
import r7.w;
import v7.i;
import v7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements o {
    @Override // r7.o
    public final u a(f fVar) throws Throwable {
        t tVarH;
        IOException iOException;
        p pVar = fVar.f5772d;
        d7.g.c(pVar);
        i iVar = (i) pVar.f2138b;
        d dVar = (d) pVar.f2140d;
        l lVar = (l) pVar.f2141e;
        com.google.android.gms.common.internal.g gVar = fVar.f5773e;
        b0.d dVar2 = (b0.d) gVar.f1412e;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                dVar.a(gVar);
                boolean z5 = true;
                try {
                    if (!d4.a.f((String) gVar.f1411d) || dVar2 == null) {
                        iVar.i(pVar, true, false, null);
                        tVarH = null;
                    } else {
                        if ("100-continue".equalsIgnoreCase(((k) gVar.f1410c).a("Expect"))) {
                            try {
                                dVar.e();
                                tVarH = pVar.h(true);
                            } catch (IOException e9) {
                                pVar.i(e9);
                                throw e9;
                            }
                        } else {
                            tVarH = null;
                        }
                        if (tVarH == null) {
                            d7.g.c(dVar2);
                            long j3 = dVar2.f854b;
                            e8.p pVar2 = new e8.p(new v7.c(pVar, dVar.d(gVar, j3), j3));
                            byte[] bArr = (byte[]) dVar2.f856d;
                            int i6 = dVar2.f854b;
                            if (pVar2.f2470c) {
                                throw new IllegalStateException("closed");
                            }
                            pVar2.f2469b.x(bArr, i6);
                            pVar2.a();
                            pVar2.close();
                        } else {
                            iVar.i(pVar, true, false, null);
                            if (lVar.f5691g == null) {
                                z5 = false;
                            }
                            if (!z5) {
                                dVar.h().l();
                            }
                        }
                    }
                } catch (IOException e10) {
                    e = e10;
                    if (!(e instanceof y7.a) || !pVar.f2137a) {
                        throw e;
                    }
                    iOException = e;
                }
            } catch (IOException e11) {
                pVar.i(e11);
                throw e11;
            }
        } catch (IOException e12) {
            e = e12;
            tVarH = null;
            if (!(e instanceof y7.a)) {
                throw e;
            }
            throw e;
        }
        try {
            dVar.c();
            iOException = null;
            if (tVarH == null) {
                try {
                    tVarH = pVar.h(false);
                    d7.g.c(tVarH);
                } catch (IOException e13) {
                    if (iOException == null) {
                        throw e13;
                    }
                    i2.t.a(iOException, e13);
                    throw iOException;
                }
            }
            tVarH.f5137a = gVar;
            tVarH.f5141e = lVar.f5689e;
            tVarH.f5146k = jCurrentTimeMillis;
            tVarH.f5147l = System.currentTimeMillis();
            u uVarA = tVarH.a();
            int i9 = uVarA.f5152d;
            if (i9 == 100 || (102 <= i9 && i9 < 200)) {
                t tVarH2 = pVar.h(false);
                d7.g.c(tVarH2);
                tVarH2.f5137a = gVar;
                tVarH2.f5141e = lVar.f5689e;
                tVarH2.f5146k = jCurrentTimeMillis;
                tVarH2.f5147l = System.currentTimeMillis();
                uVarA = tVarH2.a();
                i9 = uVarA.f5152d;
            }
            t tVarC = uVarA.c();
            try {
                String strA = u.a("Content-Type", uVarA);
                long jF = dVar.f(uVarA);
                tVarC.f5143g = new g(strA, jF, new q(new v7.d(pVar, dVar.b(uVarA), jF)));
                u uVarA2 = tVarC.a();
                if ("close".equalsIgnoreCase(((k) uVarA2.f5149a.f1410c).a("Connection")) || "close".equalsIgnoreCase(u.a("Connection", uVarA2))) {
                    dVar.h().l();
                }
                if (i9 == 204 || i9 == 205) {
                    w wVar = uVarA2.f5155g;
                    if ((wVar != null ? wVar.a() : -1L) > 0) {
                        StringBuilder sb = new StringBuilder("HTTP ");
                        sb.append(i9);
                        sb.append(" had non-zero Content-Length: ");
                        w wVar2 = uVarA2.f5155g;
                        sb.append(wVar2 != null ? Long.valueOf(wVar2.a()) : null);
                        throw new ProtocolException(sb.toString());
                    }
                }
                return uVarA2;
            } catch (IOException e14) {
                pVar.i(e14);
                throw e14;
            }
        } catch (IOException e15) {
            pVar.i(e15);
            throw e15;
        }
    }
}
