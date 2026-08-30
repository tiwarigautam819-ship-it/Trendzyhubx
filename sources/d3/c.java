package d3;

import android.content.Context;
import android.net.ConnectivityManager;
import b5.d;
import e3.f;
import e3.g;
import e3.h;
import e3.i;
import e3.j;
import e3.k;
import e3.l;
import e3.n;
import e3.o;
import e3.q;
import e3.r;
import e3.s;
import e3.v;
import g3.e;
import java.net.MalformedURLException;
import java.net.URL;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o5.c f2267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f2268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final URL f2270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final o3.a f2271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o3.a f2272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2273g;

    public c(Context context, o3.a aVar, o3.a aVar2) {
        d dVar = new d();
        e3.c cVar = e3.c.f2330a;
        dVar.a(o.class, cVar);
        dVar.a(i.class, cVar);
        f fVar = f.f2342a;
        dVar.a(s.class, fVar);
        dVar.a(l.class, fVar);
        e3.d dVar2 = e3.d.f2332a;
        dVar.a(q.class, dVar2);
        dVar.a(j.class, dVar2);
        e3.b bVar = e3.b.f2318a;
        dVar.a(e3.a.class, bVar);
        dVar.a(h.class, bVar);
        e3.e eVar = e3.e.f2335a;
        dVar.a(r.class, eVar);
        dVar.a(k.class, eVar);
        g gVar = g.f2349a;
        dVar.a(v.class, gVar);
        dVar.a(n.class, gVar);
        dVar.f966d = true;
        this.f2267a = new o5.c(4, dVar);
        this.f2269c = context;
        this.f2268b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f2270d = b(a.f2258c);
        this.f2271e = aVar2;
        this.f2272f = aVar;
        this.f2273g = 130000;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e9) {
            throw new IllegalArgumentException(x.k("Invalid url: ", str), e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final f3.h a(f3.h r7) {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: d3.c.a(f3.h):f3.h");
    }
}
