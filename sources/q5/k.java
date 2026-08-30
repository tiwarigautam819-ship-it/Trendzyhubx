package q5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public x f4866a;

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) {
        x xVar = this.f4866a;
        if (xVar == null) {
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
        xVar.a(aVar, obj);
    }
}
