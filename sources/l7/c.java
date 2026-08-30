package l7;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends w implements u6.f, w6.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3841f = AtomicIntegerFieldUpdater.newUpdater(c.class, "_decisionAndIndex");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3842g = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u6.f f3843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final u6.k f3844e;

    public c(u6.f fVar) {
        super(1);
        this.f3843d = fVar;
        this.f3844e = fVar.getContext();
        this._decisionAndIndex = 536870911;
        this._state = a.f3837a;
    }

    @Override // w6.b
    public final w6.b a() {
        u6.f fVar = this.f3843d;
        if (fVar instanceof w6.b) {
            return (w6.b) fVar;
        }
        return null;
    }

    @Override // l7.w
    public final void b(Object obj, CancellationException cancellationException) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3842g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof a) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof i) {
                return;
            }
            if (!(obj2 instanceof h)) {
                h hVar = new h(obj2, null, null, cancellationException);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, hVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                return;
            }
            h hVar2 = (h) obj2;
            c7.l lVar = hVar2.f3854b;
            if (hVar2.f3856d != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            h hVar3 = new h(hVar2.f3853a, lVar, hVar2.f3855c, cancellationException);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, hVar3)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            if (lVar != null) {
                try {
                    lVar.g(cancellationException);
                    return;
                } catch (Throwable th) {
                    r.e(this.f3844e, new androidx.fragment.app.a0("Exception in resume onCancellation handler for " + this, th));
                    return;
                }
            }
            return;
        }
    }

    @Override // l7.w
    public final u6.f c() {
        return this.f3843d;
    }

    @Override // l7.w
    public final Throwable d(Object obj) {
        Throwable thD = super.d(obj);
        if (thD != null) {
            return thD;
        }
        return null;
    }

    @Override // u6.f
    public final void e(Object obj) {
        Throwable thA = r6.f.a(obj);
        if (thA != null) {
            obj = new i(thA);
        }
        int i6 = this.f3900c;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3842g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof a)) {
                if (obj2 instanceof d) {
                    if (d.f3848c.compareAndSet((d) obj2, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, obj)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            if (!n()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
                y yVar = (y) atomicReferenceFieldUpdater2.get(this);
                if (yVar != null) {
                    yVar.c();
                    atomicReferenceFieldUpdater2.set(this, u0.f3899a);
                }
            }
            j(i6);
            return;
        }
    }

    @Override // l7.w
    public final Object f(Object obj) {
        return obj instanceof h ? ((h) obj).f3853a : obj;
    }

    @Override // u6.f
    public final u6.k getContext() {
        return this.f3844e;
    }

    @Override // l7.w
    public final Object h() {
        return f3842g.get(this);
    }

    public final void i(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3842g;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof a) {
                d dVar = new d(this, th);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, dVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (!n()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
                    y yVar = (y) atomicReferenceFieldUpdater2.get(this);
                    if (yVar != null) {
                        yVar.c();
                        atomicReferenceFieldUpdater2.set(this, u0.f3899a);
                    }
                }
                j(this.f3900c);
                return;
            }
            return;
        }
    }

    public final void j(int i6) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i9;
        do {
            atomicIntegerFieldUpdater = f3841f;
            i9 = atomicIntegerFieldUpdater.get(this);
            int i10 = i9 >> 29;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z5 = i6 == 4;
                u6.f fVar = this.f3843d;
                if (!z5 && (fVar instanceof p7.g)) {
                    boolean z8 = i6 == 1 || i6 == 2;
                    int i11 = this.f3900c;
                    if (z8 == (i11 == 1 || i11 == 2)) {
                        p7.g gVar = (p7.g) fVar;
                        n nVar = gVar.f4674d;
                        u6.k kVar = gVar.f4675e.f5763b;
                        d7.g.c(kVar);
                        if (nVar.u()) {
                            nVar.t(kVar, this);
                            return;
                        }
                        c0 c0VarA = x0.a();
                        if (c0VarA.f3845c < 4294967296L) {
                            c0VarA.x(true);
                            try {
                                r.g(this, fVar, true);
                                do {
                                } while (c0VarA.y());
                            } finally {
                                try {
                                } finally {
                                }
                            }
                            return;
                        }
                        s6.e eVar = c0VarA.f3847e;
                        if (eVar == null) {
                            eVar = new s6.e();
                            c0VarA.f3847e = eVar;
                        }
                        eVar.addLast(this);
                        return;
                    }
                }
                r.g(this, fVar, z5);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i9, 1073741824 + (536870911 & i9)));
    }

    public final Object k() throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i6;
        k0 k0Var;
        boolean zN = n();
        do {
            atomicIntegerFieldUpdater = f3841f;
            i6 = atomicIntegerFieldUpdater.get(this);
            int i9 = i6 >> 29;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (zN) {
                    o();
                }
                Object obj = f3842g.get(this);
                if (obj instanceof i) {
                    throw ((i) obj).f3859a;
                }
                int i10 = this.f3900c;
                if ((i10 != 1 && i10 != 2) || (k0Var = (k0) this.f3844e.g(o.f3873b)) == null || k0Var.a()) {
                    return f(obj);
                }
                CancellationException cancellationExceptionK = ((s0) k0Var).k();
                b(obj, cancellationExceptionK);
                throw cancellationExceptionK;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i6, 536870912 + (536870911 & i6)));
        if (((y) h.get(this)) == null) {
            m();
        }
        if (zN) {
            o();
        }
        return v6.a.f5635a;
    }

    public final void l() {
        y yVarM = m();
        if (yVarM == null || (f3842g.get(this) instanceof a)) {
            return;
        }
        yVarM.c();
        h.set(this, u0.f3899a);
    }

    public final y m() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        k0 k0Var = (k0) this.f3844e.g(o.f3873b);
        if (k0Var == null) {
            return null;
        }
        y yVarR = ((s0) k0Var).r((2 & 1) == 0, (2 & 2) != 0, new e(this));
        do {
            atomicReferenceFieldUpdater = h;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, yVarR)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return yVarR;
    }

    public final boolean n() {
        if (this.f3900c != 2) {
            return false;
        }
        u6.f fVar = this.f3843d;
        d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>", fVar);
        return p7.g.h.get((p7.g) fVar) != null;
    }

    public final void o() {
        u6.f fVar = this.f3843d;
        Throwable th = null;
        p7.g gVar = fVar instanceof p7.g ? (p7.g) fVar : null;
        if (gVar != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.g.h;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(gVar);
                n6.d dVar = p7.a.f4666c;
                if (obj == dVar) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(gVar, dVar, this)) {
                        if (atomicReferenceFieldUpdater.get(gVar) != dVar) {
                            break;
                        }
                    }
                    break loop0;
                } else {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(gVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(gVar) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                }
            }
            if (th == null) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h;
            y yVar = (y) atomicReferenceFieldUpdater2.get(this);
            if (yVar != null) {
                yVar.c();
                atomicReferenceFieldUpdater2.set(this, u0.f3899a);
            }
            i(th);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(r.h(this.f3843d));
        sb.append("){");
        Object obj = f3842g.get(this);
        sb.append(obj instanceof a ? "Active" : obj instanceof d ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(r.d(this));
        return sb.toString();
    }
}
