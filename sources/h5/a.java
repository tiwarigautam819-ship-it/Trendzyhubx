package h5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2980c;

    public a(String str, long j3, long j8) {
        this.f2978a = str;
        this.f2979b = j3;
        this.f2980c = j8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f2978a.equals(aVar.f2978a) && this.f2979b == aVar.f2979b && this.f2980c == aVar.f2980c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f2978a.hashCode() ^ 1000003) * 1000003;
        long j3 = this.f2979b;
        long j8 = this.f2980c;
        return ((iHashCode ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ ((int) (j8 ^ (j8 >>> 32)));
    }

    public final String toString() {
        return "InstallationTokenResult{token=" + this.f2978a + ", tokenExpirationTimestamp=" + this.f2979b + ", tokenCreationTimestamp=" + this.f2980c + "}";
    }
}
