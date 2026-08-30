package m3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f3.i f4260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f3.h f4261c;

    public b(long j3, f3.i iVar, f3.h hVar) {
        this.f4259a = j3;
        this.f4260b = iVar;
        this.f4261c = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f4259a == bVar.f4259a && this.f4260b.equals(bVar.f4260b) && this.f4261c.equals(bVar.f4261c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f4259a;
        return ((((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ this.f4260b.hashCode()) * 1000003) ^ this.f4261c.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f4259a + ", transportContext=" + this.f4260b + ", event=" + this.f4261c + "}";
    }
}
