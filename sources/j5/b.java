package j5;

import androidx.fragment.app.m1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3380c;

    public b(String str, long j3, int i6) {
        this.f3378a = str;
        this.f3379b = j3;
        this.f3380c = i6;
    }

    public static b0.d a() {
        b0.d dVar = new b0.d();
        dVar.f856d = 0L;
        return dVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        int i6 = bVar.f3380c;
        String str = bVar.f3378a;
        String str2 = this.f3378a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (this.f3379b != bVar.f3379b) {
            return false;
        }
        int i9 = this.f3380c;
        return i9 == 0 ? i6 == 0 : m1.b(i9, i6);
    }

    public final int hashCode() {
        String str = this.f3378a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j3 = this.f3379b;
        int i6 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        int i9 = this.f3380c;
        return (i9 != 0 ? m1.e(i9) : 0) ^ i6;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TokenResult{token=");
        sb.append(this.f3378a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f3379b);
        sb.append(", responseCode=");
        int i6 = this.f3380c;
        sb.append(i6 != 1 ? i6 != 2 ? i6 != 3 ? "null" : "AUTH_ERROR" : "BAD_CONFIG" : "OK");
        sb.append("}");
        return sb.toString();
    }
}
