package b1;

import android.net.Uri;
import android.view.InputEvent;
import c1.f;
import d7.g;
import l7.r;
import l7.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c1.d f895a;

    public d(c1.d dVar) {
        this.f895a = dVar;
    }

    @Override // b1.e
    public s4.c a() {
        return a2.c.a(r.b(r.a(x.f3901a), new a(this, null)));
    }

    @Override // b1.e
    public s4.c b(Uri uri) {
        g.f("trigger", uri);
        return a2.c.a(r.b(r.a(x.f3901a), new c(this, uri, null)));
    }

    public s4.c c(c1.a aVar) {
        g.f("deletionRequest", aVar);
        throw null;
    }

    public s4.c d(Uri uri, InputEvent inputEvent) {
        g.f("attributionSource", uri);
        return a2.c.a(r.b(r.a(x.f3901a), new b(this, uri, inputEvent, null)));
    }

    public s4.c e(c1.e eVar) {
        g.f("request", eVar);
        throw null;
    }

    public s4.c f(f fVar) {
        g.f("request", fVar);
        throw null;
    }
}
