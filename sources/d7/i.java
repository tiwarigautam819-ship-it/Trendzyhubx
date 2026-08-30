package d7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2295a;

    public i(Class cls) {
        this.f2295a = cls;
    }

    @Override // d7.c
    public final Class a() {
        return this.f2295a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            return g.a(this.f2295a, ((i) obj).f2295a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2295a.hashCode();
    }

    public final String toString() {
        return this.f2295a.toString() + " (Kotlin reflection is not available)";
    }
}
