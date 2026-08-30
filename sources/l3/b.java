package l3;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f3785c;

    public b(long j3, long j8, Set set) {
        this.f3783a = j3;
        this.f3784b = j8;
        this.f3785c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f3783a == bVar.f3783a && this.f3784b == bVar.f3784b && this.f3785c.equals(bVar.f3785c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f3783a;
        int i6 = (((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003;
        long j8 = this.f3784b;
        return ((i6 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f3785c.hashCode();
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f3783a + ", maxAllowedDelay=" + this.f3784b + ", flags=" + this.f3785c + "}";
    }
}
