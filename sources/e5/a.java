package e5;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2391b;

    public a(String str, ArrayList arrayList) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f2390a = str;
        this.f2391b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2390a.equals(aVar.f2390a) && this.f2391b.equals(aVar.f2391b);
    }

    public final int hashCode() {
        return ((this.f2390a.hashCode() ^ 1000003) * 1000003) ^ this.f2391b.hashCode();
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f2390a + ", usedDates=" + this.f2391b + "}";
    }
}
