package h5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f2997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p4.j f2998b;

    public g(k kVar, p4.j jVar) {
        this.f2997a = kVar;
        this.f2998b = jVar;
    }

    @Override // h5.j
    public final boolean a(i5.b bVar) {
        if (bVar.f3212b != 4 || this.f2997a.a(bVar)) {
            return false;
        }
        String str = bVar.f3213c;
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f2998b.a(new a(str, bVar.f3215e, bVar.f3216f));
        return true;
    }

    @Override // h5.j
    public final boolean b(Exception exc) {
        this.f2998b.b(exc);
        return true;
    }
}
