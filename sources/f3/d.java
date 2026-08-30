package f3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f2552a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z4.c f2553b = new z4.c("logSource", a1.a.l(a1.a.k(c5.e.class, new c5.a(1))));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4.c f2554c = new z4.c("logEventDropped", a1.a.l(a1.a.k(c5.e.class, new c5.a(2))));

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        i3.e eVar = (i3.e) obj;
        z4.e eVar2 = (z4.e) obj2;
        eVar2.e(f2553b, eVar.f3197a);
        eVar2.e(f2554c, eVar.f3198b);
    }
}
