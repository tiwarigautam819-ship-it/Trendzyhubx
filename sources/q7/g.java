package q7;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import l7.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f4913c;

    @Override // l7.n
    public final void t(u6.k kVar, Runnable runnable) {
        b bVar = this.f4913c;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b.h;
        bVar.c(runnable, j.f4923g);
    }
}
