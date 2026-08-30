package r2;

import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4962b;

    public a(String str, boolean z5) {
        g.f("name", str);
        this.f4961a = str;
        this.f4962b = z5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return g.a(this.f4961a, aVar.f4961a) && this.f4962b == aVar.f4962b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final int hashCode() {
        int iHashCode = this.f4961a.hashCode() * 31;
        boolean z5 = this.f4962b;
        ?? r12 = z5;
        if (z5) {
            r12 = 1;
        }
        return iHashCode + r12;
    }

    public final String toString() {
        return "GateKeeper(name=" + this.f4961a + ", value=" + this.f4962b + ')';
    }
}
