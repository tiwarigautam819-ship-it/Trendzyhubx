package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z0 implements u6.i, u6.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z0 f3906a = new z0();

    @Override // u6.k
    public final Object c(Object obj, c7.p pVar) {
        return pVar.f(obj, this);
    }

    @Override // u6.k
    public final u6.i g(u6.j jVar) {
        d7.g.f("key", jVar);
        if (d7.g.a(this, jVar)) {
            return this;
        }
        return null;
    }

    @Override // u6.k
    public final u6.k o(u6.j jVar) {
        return x2.a.j(this, jVar);
    }

    @Override // u6.k
    public final u6.k s(u6.k kVar) {
        return x2.a.m(this, kVar);
    }

    @Override // u6.i
    public final u6.j getKey() {
        return this;
    }
}
