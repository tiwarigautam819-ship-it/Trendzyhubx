package l7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class s0 implements k0, v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3895a = AtomicReferenceFieldUpdater.newUpdater(s0.class, Object.class, "_state");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3896b = AtomicReferenceFieldUpdater.newUpdater(s0.class, Object.class, "_parentHandle");
    private volatile Object _parentHandle;
    private volatile Object _state;

    public s0(boolean z5) {
        this._state = z5 ? r.h : r.f3888g;
    }

    public static g t(p7.j jVar) {
        while (jVar.m()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.j.f4685b;
            p7.j jVarI = jVar.i();
            if (jVarI == null) {
                Object obj = atomicReferenceFieldUpdater.get(jVar);
                while (true) {
                    jVar = (p7.j) obj;
                    if (!jVar.m()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(jVar);
                }
            } else {
                jVar = jVarI;
            }
        }
        while (true) {
            jVar = jVar.l();
            if (!jVar.m()) {
                if (jVar instanceof g) {
                    return (g) jVar;
                }
                if (jVar instanceof t0) {
                    return null;
                }
            }
        }
    }

    public static String y(Object obj) {
        if (!(obj instanceof q0)) {
            return obj instanceof g0 ? ((g0) obj).a() ? "Active" : "New" : obj instanceof i ? "Cancelled" : "Completed";
        }
        q0 q0Var = (q0) obj;
        return q0Var.d() ? "Cancelling" : q0Var.e() ? "Completing" : "Active";
    }

    @Override // l7.k0
    public boolean a() {
        Object objN = n();
        return (objN instanceof g0) && ((g0) objN).a();
    }

    public final boolean b(g0 g0Var, t0 t0Var, o0 o0Var) {
        p7.j jVarI;
        r0 r0Var = new r0(o0Var, this, g0Var);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.j.f4685b;
            jVarI = t0Var.i();
            if (jVarI == null) {
                Object obj = atomicReferenceFieldUpdater.get(t0Var);
                while (true) {
                    jVarI = (p7.j) obj;
                    if (!jVarI.m()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(jVarI);
                }
            }
            p7.j.f4685b.lazySet(o0Var, jVarI);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = p7.j.f4684a;
            atomicReferenceFieldUpdater2.lazySet(o0Var, t0Var);
            r0Var.f3890c = t0Var;
            while (!atomicReferenceFieldUpdater2.compareAndSet(jVarI, t0Var, r0Var)) {
                if (atomicReferenceFieldUpdater2.get(jVarI) != t0Var) {
                    break;
                }
            }
        }
        return r0Var.a(jVarI) == null;
    }

    @Override // u6.k
    public final Object c(Object obj, c7.p pVar) {
        return pVar.f(obj, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005c, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037 A[PHI: r0
      0x0037: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v12 java.lang.Object) binds: [B:3:0x0005, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.s0.d(java.lang.Object):boolean");
    }

    public String f() {
        return "Job was cancelled";
    }

    @Override // u6.k
    public final u6.i g(u6.j jVar) {
        d7.g.f("key", jVar);
        if (d7.g.a(o.f3873b, jVar)) {
            return this;
        }
        return null;
    }

    @Override // u6.i
    public final u6.j getKey() {
        return o.f3873b;
    }

    public final void h(g0 g0Var, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3896b;
        f fVar = (f) atomicReferenceFieldUpdater.get(this);
        if (fVar != null) {
            fVar.c();
            atomicReferenceFieldUpdater.set(this, u0.f3899a);
        }
        androidx.fragment.app.a0 a0Var = null;
        i iVar = obj instanceof i ? (i) obj : null;
        Throwable th = iVar != null ? iVar.f3859a : null;
        if (g0Var instanceof o0) {
            try {
                ((o0) g0Var).o(th);
                return;
            } catch (Throwable th2) {
                p(new androidx.fragment.app.a0("Exception in completion handler " + g0Var + " for " + this, th2));
                return;
            }
        }
        t0 t0VarH = g0Var.h();
        if (t0VarH != null) {
            Object objK = t0VarH.k();
            d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }", objK);
            for (p7.j jVarL = (p7.j) objK; !jVarL.equals(t0VarH); jVarL = jVarL.l()) {
                if (jVarL instanceof o0) {
                    o0 o0Var = (o0) jVarL;
                    try {
                        o0Var.o(th);
                    } catch (Throwable th3) {
                        if (a0Var != null) {
                            i2.t.a(a0Var, th3);
                        } else {
                            a0Var = new androidx.fragment.app.a0("Exception in completion handler " + o0Var + " for " + this, th3);
                        }
                    }
                }
            }
            if (a0Var != null) {
                p(a0Var);
            }
        }
    }

    public final Throwable i(Object obj) {
        Throwable thC;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        s0 s0Var = (s0) ((v0) obj);
        Object objN = s0Var.n();
        if (objN instanceof q0) {
            thC = ((q0) objN).c();
        } else if (objN instanceof i) {
            thC = ((i) objN).f3859a;
        } else {
            if (objN instanceof g0) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objN).toString());
            }
            thC = null;
        }
        CancellationException cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
        return cancellationException == null ? new l0("Parent job is ".concat(y(objN)), thC, s0Var) : cancellationException;
    }

    public final Object j(q0 q0Var, Object obj) {
        Object obj2 = null;
        Throwable l0Var = null;
        i iVar = obj instanceof i ? (i) obj : null;
        Throwable th = iVar != null ? iVar.f3859a : null;
        synchronized (q0Var) {
            q0Var.d();
            ArrayList arrayListF = q0Var.f(th);
            if (!arrayListF.isEmpty()) {
                int size = arrayListF.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        break;
                    }
                    Object obj3 = arrayListF.get(i6);
                    i6++;
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                l0Var = (Throwable) obj2;
                if (l0Var == null) {
                    l0Var = (Throwable) arrayListF.get(0);
                }
            } else if (q0Var.d()) {
                l0Var = new l0(f(), null, this);
            }
            if (l0Var != null && arrayListF.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListF.size()));
                int size2 = arrayListF.size();
                int i9 = 0;
                while (i9 < size2) {
                    Object obj4 = arrayListF.get(i9);
                    i9++;
                    Throwable th2 = (Throwable) obj4;
                    if (th2 != l0Var && th2 != l0Var && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        i2.t.a(l0Var, th2);
                    }
                }
            }
        }
        if (l0Var != null && l0Var != th) {
            obj = new i(l0Var);
        }
        if (l0Var != null) {
            boolean z5 = l0Var instanceof CancellationException;
            f fVar = (f) f3896b.get(this);
            if (fVar != null && fVar != u0.f3899a) {
                z5 = fVar.e(l0Var) || z5;
            }
            if (z5) {
                d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally", obj);
                i.f3858b.compareAndSet((i) obj, 0, 1);
            }
        }
        v(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3895a;
        Object h0Var = obj instanceof g0 ? new h0((g0) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, q0Var, h0Var) && atomicReferenceFieldUpdater.get(this) == q0Var) {
        }
        h(q0Var, obj);
        return obj;
    }

    public final CancellationException k() {
        CancellationException cancellationException;
        Object objN = n();
        if (!(objN instanceof q0)) {
            if (objN instanceof g0) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(objN instanceof i)) {
                return new l0(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((i) objN).f3859a;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new l0(f(), th, this) : cancellationException;
        }
        Throwable thC = ((q0) objN).c();
        if (thC == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String strConcat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (strConcat == null) {
            strConcat = f();
        }
        return new l0(strConcat, thC, this);
    }

    public boolean l() {
        return true;
    }

    public final t0 m(g0 g0Var) {
        t0 t0VarH = g0Var.h();
        if (t0VarH != null) {
            return t0VarH;
        }
        if (g0Var instanceof z) {
            return new t0();
        }
        if (g0Var instanceof o0) {
            x((o0) g0Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + g0Var).toString());
    }

    public final Object n() {
        while (true) {
            Object obj = f3895a.get(this);
            if (!(obj instanceof p7.o)) {
                return obj;
            }
            ((p7.o) obj).a(this);
        }
    }

    @Override // u6.k
    public final u6.k o(u6.j jVar) {
        return x2.a.j(this, jVar);
    }

    public final void q(k0 k0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3896b;
        u0 u0Var = u0.f3899a;
        if (k0Var == null) {
            atomicReferenceFieldUpdater.set(this, u0Var);
            return;
        }
        s0 s0Var = (s0) k0Var;
        loop0: while (true) {
            Object objN = s0Var.n();
            boolean z5 = objN instanceof z;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f3895a;
            if (!z5) {
                if (!(objN instanceof f0)) {
                    break;
                }
                t0 t0Var = ((f0) objN).f3851a;
                while (!atomicReferenceFieldUpdater2.compareAndSet(s0Var, objN, t0Var)) {
                    if (atomicReferenceFieldUpdater2.get(s0Var) != objN) {
                        break;
                    }
                }
                s0Var.getClass();
                break loop0;
            }
            if (!((z) objN).f3905a) {
                z zVar = r.h;
                while (!atomicReferenceFieldUpdater2.compareAndSet(s0Var, objN, zVar)) {
                    if (atomicReferenceFieldUpdater2.get(s0Var) != objN) {
                        break;
                    }
                }
                s0Var.getClass();
                break loop0;
            }
            break;
        }
        f fVar = (f) s0Var.r((2 & 1) == 0, (2 & 2) != 0, new g(this));
        atomicReferenceFieldUpdater.set(this, fVar);
        if (n() instanceof g0) {
            return;
        }
        fVar.c();
        atomicReferenceFieldUpdater.set(this, u0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00b3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final l7.y r(boolean r9, boolean r10, c7.l r11) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.s0.r(boolean, boolean, c7.l):l7.y");
    }

    @Override // u6.k
    public final u6.k s(u6.k kVar) {
        return x2.a.m(this, kVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + y(n()) + '}');
        sb.append('@');
        sb.append(r.d(this));
        return sb.toString();
    }

    public final void u(t0 t0Var, Throwable th) {
        Object objK = t0Var.k();
        d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }", objK);
        androidx.fragment.app.a0 a0Var = null;
        for (p7.j jVarL = (p7.j) objK; !jVarL.equals(t0Var); jVarL = jVarL.l()) {
            if (jVarL instanceof m0) {
                o0 o0Var = (o0) jVarL;
                try {
                    o0Var.o(th);
                } catch (Throwable th2) {
                    if (a0Var != null) {
                        i2.t.a(a0Var, th2);
                    } else {
                        a0Var = new androidx.fragment.app.a0("Exception in completion handler " + o0Var + " for " + this, th2);
                    }
                }
            }
        }
        if (a0Var != null) {
            p(a0Var);
        }
        f fVar = (f) f3896b.get(this);
        if (fVar == null || fVar == u0.f3899a) {
            return;
        }
        fVar.e(th);
    }

    public final void x(o0 o0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        t0 t0Var = new t0();
        o0Var.getClass();
        p7.j.f4685b.lazySet(t0Var, o0Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = p7.j.f4684a;
        atomicReferenceFieldUpdater2.lazySet(t0Var, o0Var);
        loop0: while (true) {
            if (o0Var.k() == o0Var) {
                while (!atomicReferenceFieldUpdater2.compareAndSet(o0Var, o0Var, t0Var)) {
                    if (atomicReferenceFieldUpdater2.get(o0Var) != o0Var) {
                        break;
                    }
                }
                t0Var.j(o0Var);
                break loop0;
            }
            break;
        }
        p7.j jVarL = o0Var.l();
        do {
            atomicReferenceFieldUpdater = f3895a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, o0Var, jVarL)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == o0Var);
    }

    public final Object z(Object obj, Object obj2) {
        if (!(obj instanceof g0)) {
            return r.f3883b;
        }
        if (((obj instanceof z) || (obj instanceof o0)) && !(obj instanceof g) && !(obj2 instanceof i)) {
            g0 g0Var = (g0) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3895a;
            Object h0Var = obj2 instanceof g0 ? new h0((g0) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, g0Var, h0Var)) {
                if (atomicReferenceFieldUpdater.get(this) != g0Var) {
                    return r.f3885d;
                }
            }
            v(obj2);
            h(g0Var, obj2);
            return obj2;
        }
        g0 g0Var2 = (g0) obj;
        t0 t0VarM = m(g0Var2);
        if (t0VarM == null) {
            return r.f3885d;
        }
        g gVarT = null;
        q0 q0Var = g0Var2 instanceof q0 ? (q0) g0Var2 : null;
        if (q0Var == null) {
            q0Var = new q0(t0VarM, null);
        }
        synchronized (q0Var) {
            if (q0Var.e()) {
                return r.f3883b;
            }
            q0.f3878b.set(q0Var, 1);
            if (q0Var != g0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f3895a;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, g0Var2, q0Var)) {
                    if (atomicReferenceFieldUpdater2.get(this) != g0Var2) {
                        return r.f3885d;
                    }
                }
            }
            boolean zD = q0Var.d();
            i iVar = obj2 instanceof i ? (i) obj2 : null;
            if (iVar != null) {
                q0Var.b(iVar.f3859a);
            }
            Throwable thC = q0Var.c();
            if (zD) {
                thC = null;
            }
            if (thC != null) {
                u(t0VarM, thC);
            }
            g gVar = g0Var2 instanceof g ? (g) g0Var2 : null;
            if (gVar == null) {
                t0 t0VarH = g0Var2.h();
                if (t0VarH != null) {
                    gVarT = t(t0VarH);
                }
            } else {
                gVarT = gVar;
            }
            if (gVarT != null) {
                while (gVarT.f3852e.r((2 & 1) == 0, (2 & 2) != 0, new p0(this, q0Var, gVarT, obj2)) == u0.f3899a) {
                    gVarT = t(gVarT);
                    if (gVarT == null) {
                    }
                }
                return r.f3884c;
            }
            return j(q0Var, obj2);
        }
    }

    public void w() {
    }

    public void p(androidx.fragment.app.a0 a0Var) {
        throw a0Var;
    }

    public void v(Object obj) {
    }
}
