package b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements androidx.lifecycle.r, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.o f791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y f792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public g0 f793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i0 f794d;

    public f0(i0 i0Var, androidx.lifecycle.o oVar, y yVar) {
        d7.g.f("onBackPressedCallback", yVar);
        this.f794d = i0Var;
        this.f791a = oVar;
        this.f792b = yVar;
        oVar.a(this);
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        if (mVar != androidx.lifecycle.m.ON_START) {
            if (mVar != androidx.lifecycle.m.ON_STOP) {
                if (mVar == androidx.lifecycle.m.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                g0 g0Var = this.f793c;
                if (g0Var != null) {
                    g0Var.cancel();
                    return;
                }
                return;
            }
        }
        i0 i0Var = this.f794d;
        i0Var.getClass();
        y yVar = this.f792b;
        d7.g.f("onBackPressedCallback", yVar);
        i0Var.f803b.addLast(yVar);
        g0 g0Var2 = new g0(i0Var, yVar);
        yVar.f835b.add(g0Var2);
        i0Var.e();
        yVar.f836c = new h0(1, i0Var);
        this.f793c = g0Var2;
    }

    @Override // b.c
    public final void cancel() {
        this.f791a.b(this);
        this.f792b.f835b.remove(this);
        g0 g0Var = this.f793c;
        if (g0Var != null) {
            g0Var.cancel();
        }
        this.f793c = null;
    }
}
