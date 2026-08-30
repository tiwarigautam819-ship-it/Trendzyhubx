package f3;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.c f2577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f2578b;

    public l(c3.c cVar, byte[] bArr) {
        if (cVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f2577a = cVar;
        this.f2578b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f2577a.equals(lVar.f2577a)) {
            return Arrays.equals(this.f2578b, lVar.f2578b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f2577a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2578b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f2577a + ", bytes=[...]}";
    }
}
