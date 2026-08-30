package g3;

import androidx.fragment.app.m1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2859b;

    public a(int i6, long j3) {
        if (i6 == 0) {
            throw new NullPointerException("Null status");
        }
        this.f2858a = i6;
        this.f2859b = j3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return m1.b(this.f2858a, aVar.f2858a) && this.f2859b == aVar.f2859b;
    }

    public final int hashCode() {
        int iE = (m1.e(this.f2858a) ^ 1000003) * 1000003;
        long j3 = this.f2859b;
        return iE ^ ((int) (j3 ^ (j3 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        int i6 = this.f2858a;
        sb.append(i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "INVALID_PAYLOAD" : "FATAL_ERROR" : "TRANSIENT_ERROR" : "OK");
        sb.append(", nextRequestWaitMillis=");
        sb.append(this.f2859b);
        sb.append("}");
        return sb.toString();
    }
}
