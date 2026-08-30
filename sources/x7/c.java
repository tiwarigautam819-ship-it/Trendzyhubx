package x7;

import e8.h;
import e8.k;
import e8.u;
import e8.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f6032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i5.a f6034c;

    public c(i5.a aVar) {
        this.f6034c = aVar;
        this.f6032a = new k(((h) aVar.f3208e).b());
    }

    @Override // e8.u
    public final y b() {
        return this.f6032a;
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f6033b) {
            return;
        }
        this.f6033b = true;
        ((h) this.f6034c.f3208e).m("0\r\n\r\n");
        k kVar = this.f6032a;
        y yVar = kVar.f2455e;
        kVar.f2455e = y.f2487d;
        yVar.a();
        yVar.b();
        this.f6034c.f3204a = 3;
    }

    @Override // e8.u, java.io.Flushable
    public final synchronized void flush() {
        if (this.f6033b) {
            return;
        }
        ((h) this.f6034c.f3208e).flush();
    }

    @Override // e8.u
    public final void n(long j3, e8.g gVar) {
        h hVar = (h) this.f6034c.f3208e;
        if (this.f6033b) {
            throw new IllegalStateException("closed");
        }
        if (j3 == 0) {
            return;
        }
        hVar.d(j3);
        hVar.m("\r\n");
        hVar.n(j3, gVar);
        hVar.m("\r\n");
    }
}
