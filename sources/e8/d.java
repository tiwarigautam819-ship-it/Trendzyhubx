package e8;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2439c;

    public /* synthetic */ d(Object obj, int i6, Object obj2) {
        this.f2437a = i6;
        this.f2438b = obj;
        this.f2439c = obj2;
    }

    @Override // e8.w
    public final y b() {
        switch (this.f2437a) {
            case 0:
                return (v) this.f2438b;
            default:
                return (y) this.f2439c;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f2437a) {
            case 0:
                v vVar = (v) this.f2438b;
                d dVar = (d) this.f2439c;
                vVar.h();
                try {
                    dVar.close();
                    if (vVar.i()) {
                        throw vVar.k(null);
                    }
                    return;
                } catch (IOException e9) {
                    if (!vVar.i()) {
                        throw e9;
                    }
                    throw vVar.k(e9);
                } finally {
                    vVar.i();
                }
            default:
                ((InputStream) this.f2438b).close();
                return;
        }
    }

    @Override // e8.w
    public final long h(long j3, g gVar) throws IOException {
        switch (this.f2437a) {
            case 0:
                d7.g.f("sink", gVar);
                v vVar = (v) this.f2438b;
                d dVar = (d) this.f2439c;
                vVar.h();
                try {
                    long jH = dVar.h(8192L, gVar);
                    if (vVar.i()) {
                        throw vVar.k(null);
                    }
                    return jH;
                } catch (IOException e9) {
                    if (vVar.i()) {
                        throw vVar.k(e9);
                    }
                    throw e9;
                } finally {
                    vVar.i();
                }
            default:
                d7.g.f("sink", gVar);
                try {
                    ((y) this.f2439c).f();
                    r rVarV = gVar.v(1);
                    int i6 = ((InputStream) this.f2438b).read(rVarV.f2474a, rVarV.f2476c, (int) Math.min(8192L, 8192 - rVarV.f2476c));
                    if (i6 == -1) {
                        if (rVarV.f2475b == rVarV.f2476c) {
                            gVar.f2449a = rVarV.a();
                            s.a(rVarV);
                        }
                        return -1L;
                    }
                    rVarV.f2476c += i6;
                    long j8 = i6;
                    gVar.f2450b += j8;
                    return j8;
                } catch (AssertionError e10) {
                    if (l2.e.n(e10)) {
                        throw new IOException(e10);
                    }
                    throw e10;
                }
        }
    }

    public final String toString() {
        switch (this.f2437a) {
            case 0:
                return "AsyncTimeout.source(" + ((d) this.f2439c) + ')';
            default:
                return "source(" + ((InputStream) this.f2438b) + ')';
        }
    }
}
