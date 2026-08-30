package r6;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4994b;

    public d(Object obj, Object obj2) {
        this.f4993a = obj;
        this.f4994b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return d7.g.a(this.f4993a, dVar.f4993a) && d7.g.a(this.f4994b, dVar.f4994b);
    }

    public final int hashCode() {
        Object obj = this.f4993a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f4994b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f4993a + ", " + this.f4994b + ')';
    }
}
