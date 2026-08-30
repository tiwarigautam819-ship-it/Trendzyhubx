package r7;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.firebase.messaging.y f5094a = new com.google.firebase.messaging.y(9);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k1.h f5095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f5096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f5097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.getcapacitor.n f5098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f5100g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f5102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b f5103k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b f5104l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final SocketFactory f5105m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f5106n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f5107o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final d8.c f5108p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final d f5109q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5110r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5111s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5112t;

    public q() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.f5095b = new k1.h(5);
        this.f5096c = new ArrayList();
        this.f5097d = new ArrayList();
        this.f5098e = new com.getcapacitor.n(18);
        this.f5099f = true;
        b bVar = b.f5010a;
        this.f5100g = bVar;
        this.h = true;
        this.f5101i = true;
        this.f5102j = b.f5011b;
        this.f5103k = b.f5012c;
        this.f5104l = bVar;
        SocketFactory socketFactory = SocketFactory.getDefault();
        d7.g.e("getDefault()", socketFactory);
        this.f5105m = socketFactory;
        this.f5106n = r.I;
        this.f5107o = r.H;
        this.f5108p = d8.c.f2302a;
        this.f5109q = d.f5026c;
        this.f5110r = 10000;
        this.f5111s = 10000;
        this.f5112t = 10000;
    }
}
