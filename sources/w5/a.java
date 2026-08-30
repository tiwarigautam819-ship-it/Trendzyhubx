package w5;

import java.lang.reflect.Type;
import java.util.Objects;
import s5.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f5756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f5757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5758c;

    public a(Type type) {
        Objects.requireNonNull(type);
        Type typeA = d.a(type);
        this.f5757b = typeA;
        this.f5756a = d.g(typeA);
        this.f5758c = typeA.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            return d.d(this.f5757b, ((a) obj).f5757b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5758c;
    }

    public final String toString() {
        return d.j(this.f5757b);
    }
}
