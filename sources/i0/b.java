package i0;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3077b;

    public b(Object obj, Object obj2) {
        this.f3076a = obj;
        this.f3077b = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(bVar.f3076a, this.f3076a) && Objects.equals(bVar.f3077b, this.f3077b);
    }

    public final int hashCode() {
        Object obj = this.f3076a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f3077b;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "Pair{" + this.f3076a + " " + this.f3077b + "}";
    }
}
