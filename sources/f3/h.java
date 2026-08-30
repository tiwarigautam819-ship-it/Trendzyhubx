package f3;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f2563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f2564c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f2566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f2567f;

    public h(String str, Integer num, l lVar, long j3, long j8, HashMap map) {
        this.f2562a = str;
        this.f2563b = num;
        this.f2564c = lVar;
        this.f2565d = j3;
        this.f2566e = j8;
        this.f2567f = map;
    }

    public final String a(String str) {
        String str2 = (String) this.f2567f.get(str);
        return str2 == null ? "" : str2;
    }

    public final int b(String str) {
        String str2 = (String) this.f2567f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final com.google.android.gms.common.internal.g c() {
        com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g(2);
        String str = this.f2562a;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        gVar.f1411d = str;
        gVar.f1414g = this.f2563b;
        l lVar = this.f2564c;
        if (lVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        gVar.f1409b = lVar;
        gVar.f1410c = Long.valueOf(this.f2565d);
        gVar.f1412e = Long.valueOf(this.f2566e);
        gVar.f1413f = new HashMap(this.f2567f);
        return gVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            Integer num2 = hVar.f2563b;
            if (this.f2562a.equals(hVar.f2562a) && ((num = this.f2563b) != null ? num.equals(num2) : num2 == null) && this.f2564c.equals(hVar.f2564c) && this.f2565d == hVar.f2565d && this.f2566e == hVar.f2566e && this.f2567f.equals(hVar.f2567f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f2562a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f2563b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f2564c.hashCode()) * 1000003;
        long j3 = this.f2565d;
        int i6 = (iHashCode2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j8 = this.f2566e;
        return ((i6 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f2567f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f2562a + ", code=" + this.f2563b + ", encodedPayload=" + this.f2564c + ", eventMillis=" + this.f2565d + ", uptimeMillis=" + this.f2566e + ", autoMetadata=" + this.f2567f + "}";
    }
}
