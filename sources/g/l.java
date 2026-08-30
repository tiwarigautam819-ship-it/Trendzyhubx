package g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f2748a;

    public l(m mVar) {
        this.f2748a = mVar;
    }

    @Override // c.b
    public final void a(b.p pVar) {
        m mVar = this.f2748a;
        s delegate = mVar.getDelegate();
        delegate.a();
        mVar.getSavedStateRegistry().a("androidx:appcompat");
        delegate.e();
    }
}
