package j5;

import androidx.fragment.app.m1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f3376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3377e;

    public a(String str, String str2, String str3, b bVar, int i6) {
        this.f3373a = str;
        this.f3374b = str2;
        this.f3375c = str3;
        this.f3376d = bVar;
        this.f3377e = i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i6 = aVar.f3377e;
        b bVar = aVar.f3376d;
        String str = aVar.f3375c;
        String str2 = aVar.f3374b;
        String str3 = aVar.f3373a;
        String str4 = this.f3373a;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = this.f3374b;
        if (str5 == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str5.equals(str2)) {
            return false;
        }
        String str6 = this.f3375c;
        if (str6 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str6.equals(str)) {
            return false;
        }
        b bVar2 = this.f3376d;
        if (bVar2 == null) {
            if (bVar != null) {
                return false;
            }
        } else if (!bVar2.equals(bVar)) {
            return false;
        }
        int i9 = this.f3377e;
        return i9 == 0 ? i6 == 0 : m1.b(i9, i6);
    }

    public final int hashCode() {
        String str = this.f3373a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f3374b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f3375c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        b bVar = this.f3376d;
        int iHashCode4 = (iHashCode3 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        int i6 = this.f3377e;
        return (i6 != 0 ? m1.e(i6) : 0) ^ iHashCode4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationResponse{uri=");
        sb.append(this.f3373a);
        sb.append(", fid=");
        sb.append(this.f3374b);
        sb.append(", refreshToken=");
        sb.append(this.f3375c);
        sb.append(", authToken=");
        sb.append(this.f3376d);
        sb.append(", responseCode=");
        int i6 = this.f3377e;
        sb.append(i6 != 1 ? i6 != 2 ? "null" : "BAD_CONFIG" : "OK");
        sb.append("}");
        return sb.toString();
    }
}
