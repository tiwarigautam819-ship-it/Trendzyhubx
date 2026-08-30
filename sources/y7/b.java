package y7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e8.j f6270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e8.j f6271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e8.j f6272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final e8.j f6273g;
    public static final e8.j h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final e8.j f6274i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e8.j f6275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e8.j f6276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6277c;

    static {
        e8.j jVar = e8.j.f2451d;
        f6270d = e5.e.o(":");
        f6271e = e5.e.o(":status");
        f6272f = e5.e.o(":method");
        f6273g = e5.e.o(":path");
        h = e5.e.o(":scheme");
        f6274i = e5.e.o(":authority");
    }

    public b(e8.j jVar, e8.j jVar2) {
        d7.g.f("name", jVar);
        d7.g.f("value", jVar2);
        this.f6275a = jVar;
        this.f6276b = jVar2;
        this.f6277c = jVar2.a() + jVar.a() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return d7.g.a(this.f6275a, bVar.f6275a) && d7.g.a(this.f6276b, bVar.f6276b);
    }

    public final int hashCode() {
        return this.f6276b.hashCode() + (this.f6275a.hashCode() * 31);
    }

    public final String toString() {
        return this.f6275a.h() + ": " + this.f6276b.h();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(String str, String str2) {
        this(e5.e.o(str), e5.e.o(str2));
        d7.g.f("name", str);
        d7.g.f("value", str2);
        e8.j jVar = e8.j.f2451d;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(e8.j jVar, String str) {
        this(jVar, e5.e.o(str));
        d7.g.f("name", jVar);
        d7.g.f("value", str);
        e8.j jVar2 = e8.j.f2451d;
    }
}
