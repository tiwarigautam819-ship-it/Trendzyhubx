package l7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends m0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3860f = AtomicIntegerFieldUpdater.newUpdater(i0.class, "_invoked");
    private volatile int _invoked;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c7.l f3861e;

    public i0(c7.l lVar) {
        this.f3861e = lVar;
    }

    @Override // c7.l
    public final /* bridge */ /* synthetic */ Object g(Object obj) {
        o((Throwable) obj);
        return r6.j.f5000a;
    }

    @Override // l7.o0
    public final void o(Throwable th) {
        if (f3860f.compareAndSet(this, 0, 1)) {
            this.f3861e.g(th);
        }
    }
}
