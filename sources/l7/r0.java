package l7;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends p7.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o0 f3889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t0 f3890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s0 f3891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g0 f3892e;

    public r0(o0 o0Var, s0 s0Var, g0 g0Var) {
        this.f3891d = s0Var;
        this.f3892e = g0Var;
        this.f3889b = o0Var;
    }

    @Override // p7.b
    public final void b(Object obj, Object obj2) {
        p7.j jVar = (p7.j) obj;
        boolean z5 = obj2 == null;
        p7.j jVar2 = this.f3889b;
        p7.j jVar3 = z5 ? jVar2 : this.f3890c;
        if (jVar3 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.j.f4684a;
            while (!atomicReferenceFieldUpdater.compareAndSet(jVar, this, jVar3)) {
                if (atomicReferenceFieldUpdater.get(jVar) != this) {
                    return;
                }
            }
            if (z5) {
                p7.j jVar4 = this.f3890c;
                d7.g.c(jVar4);
                jVar2.j(jVar4);
            }
        }
    }

    @Override // p7.b
    public final n6.d c(Object obj) {
        if (this.f3891d.n() == this.f3892e) {
            return null;
        }
        return p7.a.f4667d;
    }
}
