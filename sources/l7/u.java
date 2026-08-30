package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class u extends s0 implements u6.f, p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u6.k f3898c;

    public u(u6.k kVar, boolean z5) {
        super(z5);
        q((k0) kVar.g(o.f3873b));
        this.f3898c = kVar.s(this);
    }

    @Override // u6.f
    public final void e(Object obj) {
        Object objZ;
        Throwable thA = r6.f.a(obj);
        if (thA != null) {
            obj = new i(thA);
        }
        do {
            objZ = z(n(), obj);
            if (objZ == r.f3883b) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                i iVar = obj instanceof i ? (i) obj : null;
                throw new IllegalStateException(str, iVar != null ? iVar.f3859a : null);
            }
        } while (objZ == r.f3885d);
    }

    @Override // l7.s0
    public final String f() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // u6.f
    public final u6.k getContext() {
        return this.f3898c;
    }

    @Override // l7.s0
    public final void p(androidx.fragment.app.a0 a0Var) {
        r.e(this.f3898c, a0Var);
    }

    @Override // l7.s0
    public final void v(Object obj) {
        if (obj instanceof i) {
            i.f3858b.get((i) obj);
        }
    }
}
