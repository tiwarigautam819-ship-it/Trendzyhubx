package x7;

import e8.h;
import e8.k;
import e8.u;
import e8.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f6041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i5.a f6043c;

    public f(i5.a aVar) {
        this.f6043c = aVar;
        this.f6041a = new k(((h) aVar.f3208e).b());
    }

    @Override // e8.u
    public final y b() {
        return this.f6041a;
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6042b) {
            return;
        }
        this.f6042b = true;
        k kVar = this.f6041a;
        y yVar = kVar.f2455e;
        kVar.f2455e = y.f2487d;
        yVar.a();
        yVar.b();
        this.f6043c.f3204a = 3;
    }

    @Override // e8.u, java.io.Flushable
    public final void flush() {
        if (this.f6042b) {
            return;
        }
        ((h) this.f6043c.f3208e).flush();
    }

    @Override // e8.u
    public final void n(long j3, e8.g gVar) {
        if (this.f6042b) {
            throw new IllegalStateException("closed");
        }
        s7.b.c(gVar.f2450b, 0L, j3);
        ((h) this.f6043c.f3208e).n(j3, gVar);
    }
}
