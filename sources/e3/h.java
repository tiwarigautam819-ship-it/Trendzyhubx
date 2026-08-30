package e3;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f2352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f2358g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f2359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f2360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f2361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f2362l;

    public h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f2352a = num;
        this.f2353b = str;
        this.f2354c = str2;
        this.f2355d = str3;
        this.f2356e = str4;
        this.f2357f = str5;
        this.f2358g = str6;
        this.h = str7;
        this.f2359i = str8;
        this.f2360j = str9;
        this.f2361k = str10;
        this.f2362l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            Integer num = this.f2352a;
            if (num != null ? num.equals(((h) aVar).f2352a) : ((h) aVar).f2352a == null) {
                String str = this.f2353b;
                if (str != null ? str.equals(((h) aVar).f2353b) : ((h) aVar).f2353b == null) {
                    String str2 = this.f2354c;
                    if (str2 != null ? str2.equals(((h) aVar).f2354c) : ((h) aVar).f2354c == null) {
                        String str3 = this.f2355d;
                        if (str3 != null ? str3.equals(((h) aVar).f2355d) : ((h) aVar).f2355d == null) {
                            String str4 = this.f2356e;
                            if (str4 != null ? str4.equals(((h) aVar).f2356e) : ((h) aVar).f2356e == null) {
                                String str5 = this.f2357f;
                                if (str5 != null ? str5.equals(((h) aVar).f2357f) : ((h) aVar).f2357f == null) {
                                    String str6 = this.f2358g;
                                    if (str6 != null ? str6.equals(((h) aVar).f2358g) : ((h) aVar).f2358g == null) {
                                        String str7 = this.h;
                                        if (str7 != null ? str7.equals(((h) aVar).h) : ((h) aVar).h == null) {
                                            String str8 = this.f2359i;
                                            if (str8 != null ? str8.equals(((h) aVar).f2359i) : ((h) aVar).f2359i == null) {
                                                String str9 = this.f2360j;
                                                if (str9 != null ? str9.equals(((h) aVar).f2360j) : ((h) aVar).f2360j == null) {
                                                    String str10 = this.f2361k;
                                                    if (str10 != null ? str10.equals(((h) aVar).f2361k) : ((h) aVar).f2361k == null) {
                                                        String str11 = this.f2362l;
                                                        if (str11 != null ? str11.equals(((h) aVar).f2362l) : ((h) aVar).f2362l == null) {
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f2352a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f2353b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f2354c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f2355d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f2356e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f2357f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f2358g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f2359i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f2360j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f2361k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f2362l;
        return (str11 != null ? str11.hashCode() : 0) ^ iHashCode11;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f2352a);
        sb.append(", model=");
        sb.append(this.f2353b);
        sb.append(", hardware=");
        sb.append(this.f2354c);
        sb.append(", device=");
        sb.append(this.f2355d);
        sb.append(", product=");
        sb.append(this.f2356e);
        sb.append(", osBuild=");
        sb.append(this.f2357f);
        sb.append(", manufacturer=");
        sb.append(this.f2358g);
        sb.append(", fingerprint=");
        sb.append(this.h);
        sb.append(", locale=");
        sb.append(this.f2359i);
        sb.append(", country=");
        sb.append(this.f2360j);
        sb.append(", mccMnc=");
        sb.append(this.f2361k);
        sb.append(", applicationBuild=");
        return x.h(sb, this.f2362l, "}");
    }
}
