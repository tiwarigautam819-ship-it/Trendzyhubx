package b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f799b;

    public g0(i0 i0Var, y yVar) {
        d7.g.f("onBackPressedCallback", yVar);
        this.f799b = i0Var;
        this.f798a = yVar;
    }

    @Override // b.c
    public final void cancel() {
        i0 i0Var = this.f799b;
        s6.e eVar = i0Var.f803b;
        y yVar = this.f798a;
        eVar.remove(yVar);
        if (d7.g.a(i0Var.f804c, yVar)) {
            yVar.a();
            i0Var.f804c = null;
        }
        yVar.f835b.remove(this);
        h0 h0Var = yVar.f836c;
        if (h0Var != null) {
            h0Var.b();
        }
        yVar.f836c = null;
    }
}
