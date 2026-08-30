package p7;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i extends d7.b implements c7.a, i7.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f4683g;

    public i(j jVar) {
        super(jVar, l7.r.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", true);
        this.f4683g = false;
    }

    @Override // c7.a
    public final Object b() {
        return this.f2284b.getClass().getSimpleName();
    }

    public final i7.a c() {
        if (this.f4683g) {
            return this;
        }
        i7.a aVar = this.f2283a;
        if (aVar != null) {
            return aVar;
        }
        d7.l.f2299a.getClass();
        this.f2283a = this;
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return a().equals(iVar.a()) && this.f2286d.equals(iVar.f2286d) && this.f2287e.equals(iVar.f2287e) && d7.g.a(this.f2284b, iVar.f2284b);
        }
        if (obj instanceof i) {
            return obj.equals(c());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2287e.hashCode() + x.d(a().hashCode() * 31, this.f2286d, 31);
    }

    public final String toString() {
        i7.a aVarC = c();
        return aVarC != this ? aVarC.toString() : x.h(new StringBuilder("property "), this.f2286d, " (Kotlin reflection is not available)");
    }
}
