package com.google.firebase.messaging;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements z4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2040a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z4.c f2041b = new z4.c("projectNumber", a1.a.l(a1.a.k(c5.e.class, new c5.a(1))));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4.c f2042c = new z4.c("messageId", a1.a.l(a1.a.k(c5.e.class, new c5.a(2))));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z4.c f2043d = new z4.c("instanceId", a1.a.l(a1.a.k(c5.e.class, new c5.a(3))));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final z4.c f2044e = new z4.c("messageType", a1.a.l(a1.a.k(c5.e.class, new c5.a(4))));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final z4.c f2045f = new z4.c("sdkPlatform", a1.a.l(a1.a.k(c5.e.class, new c5.a(5))));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final z4.c f2046g = new z4.c("packageName", a1.a.l(a1.a.k(c5.e.class, new c5.a(6))));
    public static final z4.c h = new z4.c("collapseKey", a1.a.l(a1.a.k(c5.e.class, new c5.a(7))));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final z4.c f2047i = new z4.c("priority", a1.a.l(a1.a.k(c5.e.class, new c5.a(8))));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final z4.c f2048j = new z4.c("ttl", a1.a.l(a1.a.k(c5.e.class, new c5.a(9))));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final z4.c f2049k = new z4.c("topic", a1.a.l(a1.a.k(c5.e.class, new c5.a(10))));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final z4.c f2050l = new z4.c("bulkId", a1.a.l(a1.a.k(c5.e.class, new c5.a(11))));

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final z4.c f2051m = new z4.c("event", a1.a.l(a1.a.k(c5.e.class, new c5.a(12))));

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final z4.c f2052n = new z4.c("analyticsLabel", a1.a.l(a1.a.k(c5.e.class, new c5.a(13))));

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final z4.c f2053o = new z4.c("campaignId", a1.a.l(a1.a.k(c5.e.class, new c5.a(14))));

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final z4.c f2054p = new z4.c("composerLabel", a1.a.l(a1.a.k(c5.e.class, new c5.a(15))));

    @Override // z4.a
    public final void a(Object obj, Object obj2) {
        n5.d dVar = (n5.d) obj;
        z4.e eVar = (z4.e) obj2;
        eVar.b(f2041b, dVar.f4351a);
        eVar.e(f2042c, dVar.f4352b);
        eVar.e(f2043d, dVar.f4353c);
        eVar.e(f2044e, dVar.f4354d);
        eVar.e(f2045f, n5.c.ANDROID);
        eVar.e(f2046g, dVar.f4355e);
        eVar.e(h, dVar.f4356f);
        eVar.a(f2047i, dVar.f4357g);
        eVar.a(f2048j, dVar.h);
        eVar.e(f2049k, dVar.f4358i);
        eVar.b(f2050l, 0L);
        eVar.e(f2051m, n5.a.MESSAGE_DELIVERED);
        eVar.e(f2052n, dVar.f4359j);
        eVar.b(f2053o, 0L);
        eVar.e(f2054p, dVar.f4360k);
    }
}
