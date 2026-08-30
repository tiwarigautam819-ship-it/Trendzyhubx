package h7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f3024d = new c(1, 0, 1);

    public final boolean a(int i6) {
        return this.f3017a <= i6 && i6 <= this.f3018b;
    }

    @Override // h7.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        if (isEmpty() && ((c) obj).isEmpty()) {
            return true;
        }
        c cVar = (c) obj;
        return this.f3017a == cVar.f3017a && this.f3018b == cVar.f3018b;
    }

    @Override // h7.a
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f3017a * 31) + this.f3018b;
    }

    @Override // h7.a
    public final boolean isEmpty() {
        return this.f3017a > this.f3018b;
    }

    @Override // h7.a
    public final String toString() {
        return this.f3017a + ".." + this.f3018b;
    }
}
