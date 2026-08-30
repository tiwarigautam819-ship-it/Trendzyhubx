package v4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f5605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5606b;

    public g(p pVar, boolean z5) {
        this.f5605a = pVar;
        this.f5606b = z5;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.f5605a.equals(this.f5605a) && gVar.f5606b == this.f5606b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f5605a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f5606b).hashCode();
    }
}
