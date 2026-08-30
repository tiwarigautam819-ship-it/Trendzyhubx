package b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h0 extends d7.b implements c7.a, d7.e, i7.a, r6.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f801g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(int i6, Object obj) {
        super(obj, i0.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", false);
        this.h = i6;
        this.f801g = 0;
    }

    @Override // c7.a
    public final Object b() {
        switch (this.h) {
            case 0:
                ((i0) this.f2284b).e();
                break;
            default:
                ((i0) this.f2284b).e();
                break;
        }
        return r6.j.f5000a;
    }

    public final i7.a c() {
        d7.l.f2299a.getClass();
        return this;
    }

    @Override // d7.e
    public final int d() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h0) {
            h0 h0Var = (h0) obj;
            return this.f2286d.equals(h0Var.f2286d) && this.f2287e.equals(h0Var.f2287e) && this.f801g == h0Var.f801g && d7.g.a(this.f2284b, h0Var.f2284b) && a().equals(h0Var.a());
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        i7.a aVar = this.f2283a;
        if (aVar == null) {
            c();
            this.f2283a = this;
            aVar = this;
        }
        return obj.equals(aVar);
    }

    public final int hashCode() {
        a();
        return this.f2287e.hashCode() + q2.x.d(a().hashCode() * 31, this.f2286d, 31);
    }

    public final String toString() {
        i7.a aVar = this.f2283a;
        if (aVar == null) {
            c();
            this.f2283a = this;
            aVar = this;
        }
        if (aVar != this) {
            return aVar.toString();
        }
        String str = this.f2286d;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : q2.x.g("function ", str, " (Kotlin reflection is not available)");
    }
}
