package f3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f2556a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z4.c f2557b = new z4.c("currentCacheSizeBytes", a1.a.l(a1.a.k(c5.e.class, new c5.a(1))));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4.c f2558c = new z4.c("maxCacheSizeBytes", a1.a.l(a1.a.k(c5.e.class, new c5.a(2))));

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        i3.f fVar = (i3.f) obj;
        z4.e eVar = (z4.e) obj2;
        eVar.b(f2557b, fVar.f3199a);
        eVar.b(f2558c, fVar.f3200b);
    }
}
