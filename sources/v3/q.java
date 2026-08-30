package v3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final j f5576e;

    public /* synthetic */ q(j jVar) {
        super(false, null, null);
        this.f5576e = jVar;
    }

    @Override // v3.r
    public final String a() {
        try {
            return (String) this.f5576e.call();
        } catch (Exception e9) {
            throw new RuntimeException(e9);
        }
    }
}
