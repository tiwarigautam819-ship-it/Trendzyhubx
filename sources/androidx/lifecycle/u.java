package androidx.lifecycle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n f737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r f738b;

    public final void a(t tVar, m mVar) {
        n nVarA = mVar.a();
        n nVar = this.f737a;
        d7.g.f("state1", nVar);
        if (nVarA.compareTo(nVar) < 0) {
            nVar = nVarA;
        }
        this.f737a = nVar;
        this.f738b.a(tVar, mVar);
        this.f737a = nVarA;
    }
}
