package p7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import l7.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends l7.n implements v {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4678g = AtomicIntegerFieldUpdater.newUpdater(h.class, "runningWorkers");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l7.n f4679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k f4681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4682f;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public h(l7.n nVar, int i6) {
        this.f4679c = nVar;
        this.f4680d = i6;
        if ((nVar instanceof v ? (v) nVar : null) == null) {
            int i9 = l7.t.f3897a;
        }
        this.f4681e = new k();
        this.f4682f = new Object();
    }

    @Override // l7.n
    public final void t(u6.k kVar, Runnable runnable) {
        this.f4681e.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4678g;
        if (atomicIntegerFieldUpdater.get(this) < this.f4680d) {
            synchronized (this.f4682f) {
                if (atomicIntegerFieldUpdater.get(this) >= this.f4680d) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable runnableV = v();
                if (runnableV == null) {
                    return;
                }
                this.f4679c.t(this, new s4.b(this, runnableV, 14, false));
            }
        }
    }

    public final Runnable v() {
        while (true) {
            Runnable runnable = (Runnable) this.f4681e.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f4682f) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4678g;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f4681e.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
