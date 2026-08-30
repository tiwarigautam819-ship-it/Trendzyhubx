package v4;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f5607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5609c;

    public h(int i6, int i9, Class cls) {
        this(p.a(cls), i6, i9);
    }

    public static h a(Class cls) {
        return new h(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f5607a.equals(hVar.f5607a) && this.f5608b == hVar.f5608b && this.f5609c == hVar.f5609c;
    }

    public final int hashCode() {
        return ((((this.f5607a.hashCode() ^ 1000003) * 1000003) ^ this.f5608b) * 1000003) ^ this.f5609c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f5607a);
        sb.append(", type=");
        int i6 = this.f5608b;
        sb.append(i6 == 1 ? "required" : i6 == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i9 = this.f5609c;
        if (i9 == 0) {
            str = "direct";
        } else if (i9 == 1) {
            str = "provider";
        } else {
            if (i9 != 2) {
                throw new AssertionError(a1.a.i(i9, "Unsupported injection: "));
            }
            str = "deferred";
        }
        return x.h(sb, str, "}");
    }

    public h(p pVar, int i6, int i9) {
        this.f5607a = pVar;
        this.f5608b = i6;
        this.f5609c = i9;
    }
}
