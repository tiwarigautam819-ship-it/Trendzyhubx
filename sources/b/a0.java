package b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends d7.h implements c7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i0 f773c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a0(i0 i0Var, int i6) {
        super(0);
        this.f772b = i6;
        this.f773c = i0Var;
    }

    @Override // c7.a
    public final Object b() {
        switch (this.f772b) {
            case 0:
                this.f773c.c();
                break;
            case 1:
                this.f773c.b();
                break;
            default:
                this.f773c.c();
                break;
        }
        return r6.j.f5000a;
    }
}
