package h5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p4.j f2999a;

    public h(p4.j jVar) {
        this.f2999a = jVar;
    }

    @Override // h5.j
    public final boolean a(i5.b bVar) {
        int i6 = bVar.f3212b;
        if (i6 != 3 && i6 != 4 && i6 != 5) {
            return false;
        }
        this.f2999a.c(bVar.f3211a);
        return true;
    }

    @Override // h5.j
    public final boolean b(Exception exc) {
        return false;
    }
}
