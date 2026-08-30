package y7;

import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends e8.e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ w f6361m;

    public v(w wVar) {
        this.f6361m = wVar;
    }

    @Override // e8.e
    public final void j() {
        this.f6361m.e(9);
        o oVar = this.f6361m.f6363b;
        synchronized (oVar) {
            long j3 = oVar.f6329v;
            long j8 = oVar.f6328m;
            if (j3 < j8) {
                return;
            }
            oVar.f6328m = j8 + 1;
            oVar.f6330w = System.nanoTime() + ((long) 1000000000);
            oVar.h.c(new u7.b(q2.x.h(new StringBuilder(), oVar.f6319c, " ping"), oVar, 2), 0L);
        }
    }

    public final void k() {
        if (i()) {
            throw new SocketTimeoutException("timeout");
        }
    }
}
