package u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends l2.e {
    @Override // l2.e
    public final boolean c(h hVar, d dVar, d dVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f5434b != dVar) {
                    return false;
                }
                hVar.f5434b = dVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // l2.e
    public final boolean d(h hVar, Object obj, Object obj2) {
        synchronized (hVar) {
            try {
                if (hVar.f5433a != obj) {
                    return false;
                }
                hVar.f5433a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // l2.e
    public final boolean e(h hVar, g gVar, g gVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f5435c != gVar) {
                    return false;
                }
                hVar.f5435c = gVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // l2.e
    public final void q(g gVar, g gVar2) {
        gVar.f5428b = gVar2;
    }

    @Override // l2.e
    public final void r(g gVar, Thread thread) {
        gVar.f5427a = thread;
    }
}
