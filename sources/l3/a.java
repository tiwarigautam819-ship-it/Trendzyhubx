package l3;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o3.a f3781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f3782b;

    public a(o3.a aVar, HashMap map) {
        this.f3781a = aVar;
        this.f3782b = map;
    }

    public final long a(c3.d dVar, long j3, int i6) {
        long jF = j3 - this.f3781a.f();
        b bVar = (b) this.f3782b.get(dVar);
        long j8 = bVar.f3783a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i6 - 1) * j8 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j8 > 1 ? j8 : 2L) * ((long) r12)))), jF), bVar.f3784b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3781a.equals(aVar.f3781a) && this.f3782b.equals(aVar.f3782b);
    }

    public final int hashCode() {
        return ((this.f3781a.hashCode() ^ 1000003) * 1000003) ^ this.f3782b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f3781a + ", values=" + this.f3782b + "}";
    }
}
