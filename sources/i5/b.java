package i5;

import androidx.fragment.app.m1;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f3216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f3217g;

    public b(long j3, int i6, long j8, String str, String str2, String str3, String str4) {
        this.f3211a = str;
        this.f3212b = i6;
        this.f3213c = str2;
        this.f3214d = str3;
        this.f3215e = j3;
        this.f3216f = j8;
        this.f3217g = str4;
    }

    public final a a() {
        a aVar = new a();
        aVar.f3205b = this.f3211a;
        aVar.f3204a = this.f3212b;
        aVar.f3206c = this.f3213c;
        aVar.f3207d = this.f3214d;
        aVar.f3209f = Long.valueOf(this.f3215e);
        aVar.f3210g = Long.valueOf(this.f3216f);
        aVar.f3208e = this.f3217g;
        return aVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        String str = bVar.f3217g;
        String str2 = bVar.f3214d;
        String str3 = bVar.f3213c;
        String str4 = bVar.f3211a;
        String str5 = this.f3211a;
        if (str5 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str5.equals(str4)) {
            return false;
        }
        if (!m1.b(this.f3212b, bVar.f3212b)) {
            return false;
        }
        String str6 = this.f3213c;
        if (str6 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str6.equals(str3)) {
            return false;
        }
        String str7 = this.f3214d;
        if (str7 == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str7.equals(str2)) {
            return false;
        }
        if (this.f3215e != bVar.f3215e || this.f3216f != bVar.f3216f) {
            return false;
        }
        String str8 = this.f3217g;
        return str8 == null ? str == null : str8.equals(str);
    }

    public final int hashCode() {
        String str = this.f3211a;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ m1.e(this.f3212b)) * 1000003;
        String str2 = this.f3213c;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f3214d;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j3 = this.f3215e;
        int i6 = (iHashCode3 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j8 = this.f3216f;
        int i9 = (i6 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003;
        String str4 = this.f3217g;
        return (str4 != null ? str4.hashCode() : 0) ^ i9;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f3211a);
        sb.append(", registrationStatus=");
        int i6 = this.f3212b;
        sb.append(i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? i6 != 5 ? "null" : "REGISTER_ERROR" : "REGISTERED" : "UNREGISTERED" : "NOT_GENERATED" : "ATTEMPT_MIGRATION");
        sb.append(", authToken=");
        sb.append(this.f3213c);
        sb.append(", refreshToken=");
        sb.append(this.f3214d);
        sb.append(", expiresInSecs=");
        sb.append(this.f3215e);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f3216f);
        sb.append(", fisError=");
        return x.h(sb, this.f3217g, "}");
    }
}
