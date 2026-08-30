package c1;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import d7.g;
import r6.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MeasurementManager f1013a;

    public d(Context context) {
        Object systemService = context.getSystemService((Class<Object>) b.r());
        g.e("context.getSystemService…:class.java\n            )", systemService);
        this.f1013a = b.q(systemService);
    }

    public Object a(a aVar, u6.f fVar) {
        new l7.c(a2.c.g(fVar)).l();
        b.s();
        throw null;
    }

    public Object b(u6.f fVar) {
        l7.c cVar = new l7.c(a2.c.g(fVar));
        cVar.l();
        this.f1013a.getMeasurementApiStatus(new c(), new f0.d(cVar));
        return cVar.k();
    }

    public Object c(Uri uri, InputEvent inputEvent, u6.f fVar) throws Throwable {
        l7.c cVar = new l7.c(a2.c.g(fVar));
        cVar.l();
        this.f1013a.registerSource(uri, inputEvent, new c(), new f0.d(cVar));
        Object objK = cVar.k();
        return objK == v6.a.f5635a ? objK : j.f5000a;
    }

    public Object d(Uri uri, u6.f fVar) throws Throwable {
        l7.c cVar = new l7.c(a2.c.g(fVar));
        cVar.l();
        this.f1013a.registerTrigger(uri, new c(), new f0.d(cVar));
        Object objK = cVar.k();
        return objK == v6.a.f5635a ? objK : j.f5000a;
    }

    public Object e(e eVar, u6.f fVar) {
        new l7.c(a2.c.g(fVar)).l();
        b.y();
        throw null;
    }

    public Object f(f fVar, u6.f fVar2) {
        new l7.c(a2.c.g(fVar2)).l();
        b.z();
        throw null;
    }
}
