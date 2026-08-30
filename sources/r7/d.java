package r7;

import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f5026c = new d(s6.g.y(new ArrayList()), null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f5027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d4.a f5028b;

    public d(Set set, d4.a aVar) {
        this.f5027a = set;
        this.f5028b = aVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return d7.g.a(dVar.f5027a, this.f5027a) && d7.g.a(dVar.f5028b, this.f5028b);
    }

    public final int hashCode() {
        int iHashCode = (this.f5027a.hashCode() + 1517) * 41;
        d4.a aVar = this.f5028b;
        return iHashCode + (aVar != null ? aVar.hashCode() : 0);
    }
}
