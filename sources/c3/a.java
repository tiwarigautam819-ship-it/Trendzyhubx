package c3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n5.e f1033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f1034b;

    public a(n5.e eVar, b bVar) {
        this.f1033a = eVar;
        this.f1034b = bVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        b bVar = aVar.f1034b;
        if (!this.f1033a.equals(aVar.f1033a)) {
            return false;
        }
        Object obj2 = d.f1037a;
        return obj2.equals(obj2) && this.f1034b.equals(bVar);
    }

    public final int hashCode() {
        return this.f1034b.hashCode() ^ (((((1000003 * 1000003) ^ this.f1033a.hashCode()) * 1000003) ^ d.f1037a.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f1033a + ", priority=" + d.f1037a + ", productData=" + this.f1034b + "}";
    }
}
