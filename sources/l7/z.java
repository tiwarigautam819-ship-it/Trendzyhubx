package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3905a;

    public z(boolean z5) {
        this.f3905a = z5;
    }

    @Override // l7.g0
    public final boolean a() {
        return this.f3905a;
    }

    @Override // l7.g0
    public final t0 h() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f3905a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
