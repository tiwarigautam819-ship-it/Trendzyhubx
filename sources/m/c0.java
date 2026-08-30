package m;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends p1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i0 f3932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ l0 f3933k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(l0 l0Var, l0 l0Var2, i0 i0Var) {
        super(l0Var2);
        this.f3933k = l0Var;
        this.f3932j = i0Var;
    }

    @Override // m.p1
    public final l.d0 b() {
        return this.f3932j;
    }

    @Override // m.p1
    public final boolean c() {
        l0 l0Var = this.f3933k;
        if (l0Var.getInternalPopup().a()) {
            return true;
        }
        l0Var.f4021f.k(l0Var.getTextDirection(), l0Var.getTextAlignment());
        return true;
    }
}
