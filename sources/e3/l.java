package e3;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f2374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f2375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f2377f;

    public l(long j3, long j8, j jVar, Integer num, String str, ArrayList arrayList) {
        w wVar = w.f2387a;
        this.f2372a = j3;
        this.f2373b = j8;
        this.f2374c = jVar;
        this.f2375d = num;
        this.f2376e = str;
        this.f2377f = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        l lVar = (l) ((s) obj);
        Object obj2 = w.f2387a;
        ArrayList arrayList = lVar.f2377f;
        String str = lVar.f2376e;
        Integer num = lVar.f2375d;
        j jVar = lVar.f2374c;
        if (this.f2372a != lVar.f2372a || this.f2373b != lVar.f2373b || !this.f2374c.equals(jVar)) {
            return false;
        }
        Integer num2 = this.f2375d;
        if (num2 == null) {
            if (num != null) {
                return false;
            }
        } else if (!num2.equals(num)) {
            return false;
        }
        String str2 = this.f2376e;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return this.f2377f.equals(arrayList) && obj2.equals(obj2);
    }

    public final int hashCode() {
        long j3 = this.f2372a;
        long j8 = this.f2373b;
        int iHashCode = (((((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f2374c.hashCode()) * 1000003;
        Integer num = this.f2375d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f2376e;
        return ((((iHashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f2377f.hashCode()) * 1000003) ^ w.f2387a.hashCode();
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f2372a + ", requestUptimeMs=" + this.f2373b + ", clientInfo=" + this.f2374c + ", logSource=" + this.f2375d + ", logSourceName=" + this.f2376e + ", logEvents=" + this.f2377f + ", qosTier=" + w.f2387a + "}";
    }
}
