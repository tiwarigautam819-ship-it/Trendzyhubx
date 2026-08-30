package r6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f4991b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4992a;

    public b() {
        if (!new h7.c(0, 255, 1).a(1) || !new h7.c(0, 255, 1).a(9) || !new h7.c(0, 255, 1).a(25)) {
            throw new IllegalArgumentException("Version components are out of range: 1.9.25".toString());
        }
        this.f4992a = 67865;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        b bVar = (b) obj;
        d7.g.f("other", bVar);
        return this.f4992a - bVar.f4992a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        b bVar = obj instanceof b ? (b) obj : null;
        return bVar != null && this.f4992a == bVar.f4992a;
    }

    public final int hashCode() {
        return this.f4992a;
    }

    public final String toString() {
        return "1.9.25";
    }
}
