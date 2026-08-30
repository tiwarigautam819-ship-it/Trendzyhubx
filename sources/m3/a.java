package m3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4253f = new a(200, 10000, 10485760, 604800000, 81920);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f4257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4258e;

    public a(int i6, int i9, long j3, long j8, int i10) {
        this.f4254a = j3;
        this.f4255b = i6;
        this.f4256c = i9;
        this.f4257d = j8;
        this.f4258e = i10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f4254a == aVar.f4254a && this.f4255b == aVar.f4255b && this.f4256c == aVar.f4256c && this.f4257d == aVar.f4257d && this.f4258e == aVar.f4258e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f4254a;
        int i6 = (((((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ this.f4255b) * 1000003) ^ this.f4256c) * 1000003;
        long j8 = this.f4257d;
        return ((i6 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f4258e;
    }

    public final String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f4254a + ", loadBatchSize=" + this.f4255b + ", criticalSectionEnterTimeoutMs=" + this.f4256c + ", eventCleanUpAge=" + this.f4257d + ", maxBlobByteSizePerRow=" + this.f4258e + "}";
    }
}
