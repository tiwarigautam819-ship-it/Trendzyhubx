package androidx.fragment.app;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y extends b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o5.c f635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e.a f637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.b f638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c0 f639e;

    public y(c0 c0Var, o5.c cVar, AtomicReference atomicReference, e.a aVar, d.b bVar) {
        this.f639e = c0Var;
        this.f635a = cVar;
        this.f636b = atomicReference;
        this.f637c = aVar;
        this.f638d = bVar;
    }

    @Override // androidx.fragment.app.b0
    public final void a() {
        StringBuilder sb = new StringBuilder("fragment_");
        c0 c0Var = this.f639e;
        sb.append(c0Var.f469e);
        sb.append("_rq#");
        sb.append(c0Var.f464b0.getAndIncrement());
        String string = sb.toString();
        c0 c0Var2 = (c0) this.f635a.f4446b;
        g0 g0Var = c0Var2.C;
        this.f636b.set((g0Var != null ? g0Var.f525e.getActivityResultRegistry() : c0Var2.E().getActivityResultRegistry()).c(string, c0Var, this.f637c, this.f638d));
    }
}
