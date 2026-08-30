package c0;

import android.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f988e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f992d;

    public c(int i6, int i9, int i10, int i11) {
        this.f989a = i6;
        this.f990b = i9;
        this.f991c = i10;
        this.f992d = i11;
    }

    public static c a(int i6, int i9, int i10, int i11) {
        return (i6 == 0 && i9 == 0 && i10 == 0 && i11 == 0) ? f988e : new c(i6, i9, i10, i11);
    }

    public static c b(Insets insets) {
        return a(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets c() {
        return b.a(this.f989a, this.f990b, this.f991c, this.f992d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f992d == cVar.f992d && this.f989a == cVar.f989a && this.f991c == cVar.f991c && this.f990b == cVar.f990b;
    }

    public final int hashCode() {
        return (((((this.f989a * 31) + this.f990b) * 31) + this.f991c) * 31) + this.f992d;
    }

    public final String toString() {
        return "Insets{left=" + this.f989a + ", top=" + this.f990b + ", right=" + this.f991c + ", bottom=" + this.f992d + '}';
    }
}
