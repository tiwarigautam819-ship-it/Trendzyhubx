package e3;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f2366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f2368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2370f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final v f2371g;

    public k(long j3, Integer num, long j8, byte[] bArr, String str, long j9, v vVar) {
        this.f2365a = j3;
        this.f2366b = num;
        this.f2367c = j8;
        this.f2368d = bArr;
        this.f2369e = str;
        this.f2370f = j9;
        this.f2371g = vVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        String str;
        v vVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            k kVar = (k) rVar;
            v vVar2 = kVar.f2371g;
            String str2 = kVar.f2369e;
            Integer num2 = kVar.f2366b;
            if (this.f2365a == kVar.f2365a && ((num = this.f2366b) != null ? num.equals(num2) : num2 == null) && this.f2367c == kVar.f2367c) {
                if (Arrays.equals(this.f2368d, rVar instanceof k ? ((k) rVar).f2368d : kVar.f2368d) && ((str = this.f2369e) != null ? str.equals(str2) : str2 == null) && this.f2370f == kVar.f2370f && ((vVar = this.f2371g) != null ? vVar.equals(vVar2) : vVar2 == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f2365a;
        int i6 = (((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f2366b;
        int iHashCode = (i6 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j8 = this.f2367c;
        int iHashCode2 = (((iHashCode ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f2368d)) * 1000003;
        String str = this.f2369e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j9 = this.f2370f;
        int i9 = (iHashCode3 ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003;
        v vVar = this.f2371g;
        return i9 ^ (vVar != null ? vVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f2365a + ", eventCode=" + this.f2366b + ", eventUptimeMs=" + this.f2367c + ", sourceExtension=" + Arrays.toString(this.f2368d) + ", sourceExtensionJsonProto3=" + this.f2369e + ", timezoneOffsetSeconds=" + this.f2370f + ", networkConnectionInfo=" + this.f2371g + "}";
    }
}
