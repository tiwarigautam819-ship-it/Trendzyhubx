package u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f5436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k f5437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f5438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5439d;

    public final void finalize() {
        l lVar;
        k kVar = this.f5437b;
        if (kVar != null) {
            j jVar = kVar.f5441b;
            if (!jVar.isDone()) {
                jVar.k(new b("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f5436a, 1));
            }
        }
        if (this.f5439d || (lVar = this.f5438c) == null) {
            return;
        }
        lVar.j(null);
    }
}
