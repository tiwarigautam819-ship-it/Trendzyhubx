package r6;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f4995a;

    public e(Throwable th) {
        d7.g.f("exception", th);
        this.f4995a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return d7.g.a(this.f4995a, ((e) obj).f4995a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4995a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f4995a + ')';
    }
}
