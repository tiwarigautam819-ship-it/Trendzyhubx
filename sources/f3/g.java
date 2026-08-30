package f3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f2559a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z4.c f2560b = new z4.c("startMs", a1.a.l(a1.a.k(c5.e.class, new c5.a(1))));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4.c f2561c = new z4.c("endMs", a1.a.l(a1.a.k(c5.e.class, new c5.a(2))));

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        i3.g gVar = (i3.g) obj;
        z4.e eVar = (z4.e) obj2;
        eVar.b(f2560b, gVar.f3201a);
        eVar.b(f2561c, gVar.f3202b);
    }
}
