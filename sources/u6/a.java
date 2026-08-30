package u6;

import c7.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f5495a;

    public a(j jVar) {
        this.f5495a = jVar;
    }

    @Override // u6.k
    public final Object c(Object obj, p pVar) {
        return pVar.f(obj, this);
    }

    @Override // u6.k
    public i g(j jVar) {
        d7.g.f("key", jVar);
        if (d7.g.a(getKey(), jVar)) {
            return this;
        }
        return null;
    }

    @Override // u6.i
    public final j getKey() {
        return this.f5495a;
    }

    @Override // u6.k
    public k o(j jVar) {
        return x2.a.j(this, jVar);
    }

    @Override // u6.k
    public final k s(k kVar) {
        return x2.a.m(this, kVar);
    }
}
