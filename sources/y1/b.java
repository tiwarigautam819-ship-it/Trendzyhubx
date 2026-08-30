package y1;

import java.io.Serializable;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6109b;

    public b(String str, String str2) {
        this.f6108a = str2;
        this.f6109b = g0.B(str) ? null : str;
    }

    private final Object writeReplace() {
        return new a(this.f6109b, this.f6108a);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            String str = bVar.f6109b;
            String str2 = this.f6109b;
            if ((str == null ? str2 == null : str.equals(str2)) && bVar.f6108a.equals(this.f6108a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f6109b;
        return (str != null ? str.hashCode() : 0) ^ this.f6108a.hashCode();
    }
}
