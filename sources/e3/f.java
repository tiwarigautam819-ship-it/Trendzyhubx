package e3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f2342a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z4.c f2343b = z4.c.a("requestTimeMs");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4.c f2344c = z4.c.a("requestUptimeMs");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z4.c f2345d = z4.c.a("clientInfo");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final z4.c f2346e = z4.c.a("logSource");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final z4.c f2347f = z4.c.a("logSourceName");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final z4.c f2348g = z4.c.a("logEvent");
    public static final z4.c h = z4.c.a("qosTier");

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        z4.e eVar = (z4.e) obj2;
        l lVar = (l) ((s) obj);
        eVar.b(f2343b, lVar.f2372a);
        eVar.b(f2344c, lVar.f2373b);
        eVar.e(f2345d, lVar.f2374c);
        eVar.e(f2346e, lVar.f2375d);
        eVar.e(f2347f, lVar.f2376e);
        eVar.e(f2348g, lVar.f2377f);
        eVar.e(h, w.f2387a);
    }
}
