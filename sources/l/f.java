package l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f3631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f3632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f3633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ k1.h f3634d;

    public f(k1.h hVar, g gVar, p pVar, n nVar) {
        this.f3634d = hVar;
        this.f3631a = gVar;
        this.f3632b = pVar;
        this.f3633c = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = (h) this.f3634d.f3502b;
        g gVar = this.f3631a;
        if (gVar != null) {
            hVar.H = true;
            gVar.f3637b.c(false);
            hVar.H = false;
        }
        p pVar = this.f3632b;
        if (pVar.isEnabled() && pVar.hasSubMenu()) {
            this.f3633c.q(pVar, null, 4);
        }
    }
}
