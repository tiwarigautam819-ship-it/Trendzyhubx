package l7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b0 extends c0 implements v {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3839f = AtomicReferenceFieldUpdater.newUpdater(b0.class, Object.class, "_queue");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3840g = AtomicReferenceFieldUpdater.newUpdater(b0.class, Object.class, "_delayed");
    public static final AtomicIntegerFieldUpdater h = AtomicIntegerFieldUpdater.newUpdater(b0.class, "_isCompleted");
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    public final long A() {
        s6.e eVar = this.f3847e;
        if (((eVar == null || eVar.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
            Object obj = f3839f.get(this);
            if (obj == null) {
            } else if (obj instanceof p7.m) {
                long j3 = p7.m.f4690f.get((p7.m) obj);
                if (((int) (1073741823 & j3)) != ((int) ((j3 & 1152921503533105152L) >> 30))) {
                    return 0L;
                }
            } else if (obj == r.f3882a) {
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public final boolean B() {
        s6.e eVar = this.f3847e;
        if (eVar != null ? eVar.isEmpty() : true) {
            Object obj = f3839f.get(this);
            if (obj != null) {
                if (obj instanceof p7.m) {
                    long j3 = p7.m.f4690f.get((p7.m) obj);
                    return ((int) (1073741823 & j3)) == ((int) ((j3 & 1152921503533105152L) >> 30));
                }
                if (obj == r.f3882a) {
                }
            }
            return true;
        }
        return false;
    }

    public final long C() {
        Runnable runnable;
        if (y()) {
            return 0L;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3839f;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            runnable = null;
            if (obj == null) {
                break;
            }
            if (!(obj instanceof p7.m)) {
                if (obj != r.f3882a) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    runnable = (Runnable) obj;
                    break loop0;
                }
                break;
            }
            p7.m mVar = (p7.m) obj;
            Object objD = mVar.d();
            if (objD != p7.m.f4691g) {
                runnable = (Runnable) objD;
                break;
            }
            p7.m mVarC = mVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, mVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
            }
        }
        if (runnable == null) {
            return A();
        }
        runnable.run();
        return 0L;
    }

    @Override // l7.c0
    public void shutdown() {
        x0.f3903a.set(null);
        h.set(this, 1);
        n6.d dVar = r.f3882a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3839f;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != null) {
                if (!(obj instanceof p7.m)) {
                    if (obj != dVar) {
                        p7.m mVar = new p7.m(8, true);
                        mVar.a((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, mVar)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((p7.m) obj).b();
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, dVar)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        while (C() <= 0) {
        }
        System.nanoTime();
    }

    @Override // l7.n
    public final void t(u6.k kVar, Runnable runnable) {
        z(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
    
        l7.s.f3893i.z(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void z(java.lang.Runnable r6) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = l7.b0.f3839f
            java.lang.Object r1 = r0.get(r5)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = l7.b0.h
            int r2 = r2.get(r5)
            if (r2 == 0) goto Lf
            goto L4a
        Lf:
            if (r1 != 0) goto L20
        L11:
            r1 = 0
            boolean r1 = r0.compareAndSet(r5, r1, r6)
            if (r1 == 0) goto L19
            goto L66
        L19:
            java.lang.Object r1 = r0.get(r5)
            if (r1 == 0) goto L11
            goto L0
        L20:
            boolean r2 = r1 instanceof p7.m
            r3 = 1
            if (r2 == 0) goto L46
            r2 = r1
            p7.m r2 = (p7.m) r2
            int r4 = r2.a(r6)
            if (r4 == 0) goto L66
            if (r4 == r3) goto L34
            r0 = 2
            if (r4 == r0) goto L4a
            goto L0
        L34:
            p7.m r2 = r2.c()
        L38:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L3f
            goto L0
        L3f:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L38
            goto L0
        L46:
            n6.d r2 = l7.r.f3882a
            if (r1 != r2) goto L50
        L4a:
            l7.s r0 = l7.s.f3893i
            r0.z(r6)
            return
        L50:
            p7.m r2 = new p7.m
            r4 = 8
            r2.<init>(r4, r3)
            r3 = r1
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            r2.a(r3)
            r2.a(r6)
        L60:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L74
        L66:
            java.lang.Thread r6 = r5.w()
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            if (r0 == r6) goto L73
            java.util.concurrent.locks.LockSupport.unpark(r6)
        L73:
            return
        L74:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L60
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.b0.z(java.lang.Runnable):void");
    }
}
