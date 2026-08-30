package f3;

import android.util.Base64;
import java.util.Arrays;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f2569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c3.d f2570c;

    public i(String str, byte[] bArr, c3.d dVar) {
        this.f2568a = str;
        this.f2569b = bArr;
        this.f2570c = dVar;
    }

    public static c5.h a() {
        c5.h hVar = new c5.h(6);
        hVar.f1062d = c3.d.f1037a;
        return hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f2568a.equals(iVar.f2568a) && Arrays.equals(this.f2569b, iVar.f2569b) && this.f2570c.equals(iVar.f2570c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f2568a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2569b)) * 1000003) ^ this.f2570c.hashCode();
    }

    public final String toString() {
        byte[] bArr = this.f2569b;
        String strEncodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(this.f2568a);
        sb.append(", ");
        sb.append(this.f2570c);
        sb.append(", ");
        return x.h(sb, strEncodeToString, ")");
    }
}
