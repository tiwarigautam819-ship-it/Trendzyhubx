package l7;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o0 extends p7.j implements y, g0, c7.l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s0 f3874d;

    @Override // l7.g0
    public final boolean a() {
        return true;
    }

    @Override // l7.y
    public final void c() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        s0 s0VarN = n();
        while (true) {
            Object objN = s0VarN.n();
            if (objN instanceof o0) {
                if (objN != this) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = s0.f3895a;
                z zVar = r.h;
                while (!atomicReferenceFieldUpdater2.compareAndSet(s0VarN, objN, zVar)) {
                    if (atomicReferenceFieldUpdater2.get(s0VarN) != objN) {
                        break;
                    }
                }
                return;
            }
            if (!(objN instanceof g0) || ((g0) objN).h() == null) {
                return;
            }
            while (true) {
                Object objK = k();
                if (objK instanceof p7.p) {
                    return;
                }
                if (objK == this) {
                    return;
                }
                d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }", objK);
                p7.j jVar = (p7.j) objK;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = p7.j.f4686c;
                p7.p pVar = (p7.p) atomicReferenceFieldUpdater3.get(jVar);
                if (pVar == null) {
                    pVar = new p7.p(jVar);
                    atomicReferenceFieldUpdater3.lazySet(jVar, pVar);
                }
                do {
                    atomicReferenceFieldUpdater = p7.j.f4684a;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, objK, pVar)) {
                        jVar.i();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == objK);
            }
        }
    }

    @Override // l7.g0
    public final t0 h() {
        return null;
    }

    public final s0 n() {
        s0 s0Var = this.f3874d;
        if (s0Var != null) {
            return s0Var;
        }
        d7.g.i("job");
        throw null;
    }

    public abstract void o(Throwable th);

    @Override // p7.j
    public final String toString() {
        return getClass().getSimpleName() + '@' + r.d(this) + "[job@" + r.d(n()) + ']';
    }
}
