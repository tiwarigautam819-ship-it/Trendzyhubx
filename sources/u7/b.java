package u7;

import d7.g;
import java.io.IOException;
import java.net.Socket;
import v7.l;
import v7.m;
import y7.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f5511f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(String str, Object obj, int i6) {
        super(str, true);
        this.f5510e = i6;
        this.f5511f = obj;
    }

    @Override // u7.a
    public final long a() {
        switch (this.f5510e) {
            case 0:
                ((c7.a) this.f5511f).b();
                return -1L;
            case 1:
                m mVar = (m) this.f5511f;
                long jNanoTime = System.nanoTime();
                int i6 = 0;
                long j3 = Long.MIN_VALUE;
                l lVar = null;
                int i9 = 0;
                for (l lVar2 : mVar.f5705e) {
                    g.e("connection", lVar2);
                    synchronized (lVar2) {
                        if (mVar.b(lVar2, jNanoTime) > 0) {
                            i9++;
                        } else {
                            i6++;
                            long j8 = jNanoTime - lVar2.f5700q;
                            if (j8 > j3) {
                                lVar = lVar2;
                                j3 = j8;
                            }
                        }
                    }
                }
                long j9 = mVar.f5702b;
                if (j3 < j9 && i6 <= mVar.f5701a) {
                    if (i6 > 0) {
                        return j9 - j3;
                    }
                    if (i9 > 0) {
                        return j9;
                    }
                    return -1L;
                }
                g.c(lVar);
                synchronized (lVar) {
                    if (!lVar.f5699p.isEmpty()) {
                        return 0L;
                    }
                    if (lVar.f5700q + j3 != jNanoTime) {
                        return 0L;
                    }
                    lVar.f5693j = true;
                    mVar.f5705e.remove(lVar);
                    Socket socket = lVar.f5688d;
                    g.c(socket);
                    s7.b.e(socket);
                    if (!mVar.f5705e.isEmpty()) {
                        return 0L;
                    }
                    mVar.f5703c.a();
                    return 0L;
                }
            default:
                o oVar = (o) this.f5511f;
                oVar.getClass();
                try {
                    oVar.E.t(2, 0, false);
                    return -1L;
                } catch (IOException e9) {
                    oVar.a(2, 2, e9);
                    return -1L;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(m mVar, String str) {
        super(str, true);
        this.f5510e = 1;
        this.f5511f = mVar;
    }
}
