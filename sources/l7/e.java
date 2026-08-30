package l7;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f3849e;

    public e(c cVar) {
        this.f3849e = cVar;
    }

    @Override // c7.l
    public final /* bridge */ /* synthetic */ Object g(Object obj) {
        o((Throwable) obj);
        return r6.j.f5000a;
    }

    @Override // l7.o0
    public final void o(Throwable th) {
        CancellationException cancellationExceptionK = n().k();
        c cVar = this.f3849e;
        if (cVar.n()) {
            u6.f fVar = cVar.f3843d;
            d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>", fVar);
            p7.g gVar = (p7.g) fVar;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.g.h;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(gVar);
                n6.d dVar = p7.a.f4666c;
                if (!d7.g.a(obj, dVar)) {
                    if (!(obj instanceof Throwable)) {
                        while (!atomicReferenceFieldUpdater.compareAndSet(gVar, obj, null)) {
                            if (atomicReferenceFieldUpdater.get(gVar) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    return;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(gVar, dVar, cancellationExceptionK)) {
                    if (atomicReferenceFieldUpdater.get(gVar) != dVar) {
                        break;
                    }
                }
                return;
            }
        }
        cVar.i(cancellationExceptionK);
        if (cVar.n()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = c.h;
        y yVar = (y) atomicReferenceFieldUpdater2.get(cVar);
        if (yVar == null) {
            return;
        }
        yVar.c();
        atomicReferenceFieldUpdater2.set(cVar, u0.f3899a);
    }
}
