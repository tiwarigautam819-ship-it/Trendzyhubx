package t4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f5311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f5313c;

    public a(long j3, long j8, long j9) {
        this.f5311a = j3;
        this.f5312b = j8;
        this.f5313c = j9;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f5311a == aVar.f5311a && this.f5312b == aVar.f5312b && this.f5313c == aVar.f5313c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f5311a;
        long j8 = this.f5312b;
        int i6 = (((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003;
        long j9 = this.f5313c;
        return i6 ^ ((int) ((j9 >>> 32) ^ j9));
    }

    public final String toString() {
        return "StartupTime{epochMillis=" + this.f5311a + ", elapsedRealtime=" + this.f5312b + ", uptimeMillis=" + this.f5313c + "}";
    }
}
