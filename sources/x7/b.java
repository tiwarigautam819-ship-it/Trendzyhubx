package x7;

import e8.i;
import e8.k;
import e8.w;
import e8.y;
import java.io.IOException;
import v7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f6029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i5.a f6031c;

    public b(i5.a aVar) {
        this.f6031c = aVar;
        this.f6029a = new k(((i) aVar.f3207d).b());
    }

    public final void a() {
        i5.a aVar = this.f6031c;
        int i6 = aVar.f3204a;
        if (i6 == 6) {
            return;
        }
        if (i6 != 5) {
            throw new IllegalStateException("state: " + aVar.f3204a);
        }
        k kVar = this.f6029a;
        y yVar = kVar.f2455e;
        kVar.f2455e = y.f2487d;
        yVar.a();
        yVar.b();
        aVar.f3204a = 6;
    }

    @Override // e8.w
    public final y b() {
        return this.f6029a;
    }

    @Override // e8.w
    public long h(long j3, e8.g gVar) throws IOException {
        i5.a aVar = this.f6031c;
        d7.g.f("sink", gVar);
        try {
            return ((i) aVar.f3207d).h(j3, gVar);
        } catch (IOException e9) {
            ((l) aVar.f3206c).l();
            a();
            throw e9;
        }
    }
}
