package v7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends d7.h implements c7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r7.d f5683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r7.i f5684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r7.a f5685d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(r7.d dVar, r7.i iVar, r7.a aVar) {
        super(0);
        this.f5683b = dVar;
        this.f5684c = iVar;
        this.f5685d = aVar;
    }

    @Override // c7.a
    public final Object b() {
        d4.a aVar = this.f5683b.f5028b;
        d7.g.c(aVar);
        return aVar.a(this.f5685d.h.f5083d, this.f5684c.a());
    }
}
