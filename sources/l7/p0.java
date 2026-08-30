package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends o0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s0 f3875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final q0 f3876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g f3877g;
    public final Object h;

    public p0(s0 s0Var, q0 q0Var, g gVar, Object obj) {
        this.f3875e = s0Var;
        this.f3876f = q0Var;
        this.f3877g = gVar;
        this.h = obj;
    }

    @Override // c7.l
    public final /* bridge */ /* synthetic */ Object g(Object obj) {
        o((Throwable) obj);
        return r6.j.f5000a;
    }

    @Override // l7.o0
    public final void o(Throwable th) {
        g gVarT = s0.t(this.f3877g);
        s0 s0Var = this.f3875e;
        q0 q0Var = this.f3876f;
        Object obj = this.h;
        if (gVarT != null) {
            while (gVarT.f3852e.r((2 & 1) == 0, (2 & 2) != 0, new p0(s0Var, q0Var, gVarT, obj)) == u0.f3899a) {
                gVarT = s0.t(gVarT);
                if (gVarT == null) {
                }
            }
            return;
        }
        s0Var.j(q0Var, obj);
    }
}
