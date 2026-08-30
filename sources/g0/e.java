package g0;

import android.util.Base64;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f2826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2827e;

    public e(String str, String str2, String str3, List list) {
        str.getClass();
        this.f2823a = str;
        str2.getClass();
        this.f2824b = str2;
        this.f2825c = str3;
        list.getClass();
        this.f2826d = list;
        this.f2827e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2823a + ", mProviderPackage: " + this.f2824b + ", mQuery: " + this.f2825c + ", mCertificates:");
        int i6 = 0;
        while (true) {
            List list = this.f2826d;
            if (i6 >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i6);
            for (int i9 = 0; i9 < list2.size(); i9++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i9), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i6++;
        }
    }
}
