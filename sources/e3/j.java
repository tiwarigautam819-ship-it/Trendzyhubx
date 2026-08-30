package e3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f2364a;

    public j(h hVar) {
        this.f2364a = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        Object obj2 = p.f2381a;
        if (obj2.equals(obj2)) {
            return this.f2364a.equals(((j) qVar).f2364a);
        }
        return false;
    }

    public final int hashCode() {
        return ((p.f2381a.hashCode() ^ 1000003) * 1000003) ^ this.f2364a.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + p.f2381a + ", androidClientInfo=" + this.f2364a + "}";
    }
}
