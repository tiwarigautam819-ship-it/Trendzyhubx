package e3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f2379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f2380b;

    public n(u uVar, t tVar) {
        this.f2379a = uVar;
        this.f2380b = tVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            u uVar = this.f2379a;
            if (uVar != null ? uVar.equals(((n) vVar).f2379a) : ((n) vVar).f2379a == null) {
                t tVar = this.f2380b;
                if (tVar != null ? tVar.equals(((n) vVar).f2380b) : ((n) vVar).f2380b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        u uVar = this.f2379a;
        int iHashCode = ((uVar == null ? 0 : uVar.hashCode()) ^ 1000003) * 1000003;
        t tVar = this.f2380b;
        return (tVar != null ? tVar.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f2379a + ", mobileSubtype=" + this.f2380b + "}";
    }
}
