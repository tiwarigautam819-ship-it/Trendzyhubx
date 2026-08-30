package v7;

import com.google.firebase.messaging.p;
import java.io.IOException;
import r7.o;
import r7.r;
import r7.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5637a = new a();

    @Override // r7.o
    public final u a(w7.f fVar) throws IOException {
        i iVar = fVar.f5769a;
        synchronized (iVar) {
            try {
                if (!iVar.f5678l) {
                    throw new IllegalStateException("released");
                }
                if (iVar.f5677k) {
                    throw new IllegalStateException("Check failed.");
                }
                if (iVar.f5676j) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e eVar = iVar.f5674g;
        d7.g.c(eVar);
        r rVar = iVar.f5668a;
        try {
            w7.d dVarK = eVar.a(fVar.f5774f, fVar.f5775g, fVar.h, rVar.f5118f, !d7.g.a((String) fVar.f5773e.f1411d, "GET")).k(rVar, fVar);
            d7.g.f("finder", eVar);
            p pVar = new p();
            pVar.f2138b = iVar;
            pVar.f2139c = eVar;
            pVar.f2140d = dVarK;
            pVar.f2141e = dVarK.h();
            iVar.f5675i = pVar;
            iVar.f5680v = pVar;
            synchronized (iVar) {
                iVar.f5676j = true;
                iVar.f5677k = true;
            }
            if (iVar.f5679m) {
                throw new IOException("Canceled");
            }
            return w7.f.a(fVar, 0, pVar, null, 61).b(fVar.f5773e);
        } catch (IOException e9) {
            eVar.c(e9);
            throw new n(e9);
        } catch (n e10) {
            eVar.c(e10.f5707b);
            throw e10;
        }
    }
}
