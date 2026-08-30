package v4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f5622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f5623b;

    public p(Class cls, Class cls2) {
        this.f5622a = cls;
        this.f5623b = cls2;
    }

    public static p a(Class cls) {
        return new p(o.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f5623b.equals(pVar.f5623b)) {
            return this.f5622a.equals(pVar.f5622a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5622a.hashCode() + (this.f5623b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.f5623b;
        Class cls2 = this.f5622a;
        if (cls2 == o.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
