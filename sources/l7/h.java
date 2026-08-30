package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c7.l f3854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Throwable f3856d;

    public h(Object obj, c7.l lVar, Object obj2, Throwable th) {
        this.f3853a = obj;
        this.f3854b = lVar;
        this.f3855c = obj2;
        this.f3856d = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return d7.g.a(this.f3853a, hVar.f3853a) && d7.g.a(this.f3854b, hVar.f3854b) && d7.g.a(this.f3855c, hVar.f3855c) && d7.g.a(this.f3856d, hVar.f3856d);
    }

    public final int hashCode() {
        Object obj = this.f3853a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 961;
        c7.l lVar = this.f3854b;
        int iHashCode2 = (iHashCode + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f3855c;
        int iHashCode3 = (iHashCode2 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f3856d;
        return iHashCode3 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f3853a + ", cancelHandler=null, onCancellation=" + this.f3854b + ", idempotentResume=" + this.f3855c + ", cancelCause=" + this.f3856d + ')';
    }
}
