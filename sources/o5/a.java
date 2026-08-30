package o5;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4441b;

    public a(String str, String str2) {
        this.f4440a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f4441b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f4440a.equals(aVar.f4440a) && this.f4441b.equals(aVar.f4441b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f4440a.hashCode() ^ 1000003) * 1000003) ^ this.f4441b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f4440a);
        sb.append(", version=");
        return x.h(sb, this.f4441b, "}");
    }
}
