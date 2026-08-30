package e8;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2434a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f2435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2436c;

    public c(OutputStream outputStream, v vVar) {
        this.f2436c = outputStream;
        this.f2435b = vVar;
    }

    @Override // e8.u
    public final y b() {
        switch (this.f2434a) {
        }
        return this.f2435b;
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f2434a) {
            case 0:
                c cVar = (c) this.f2436c;
                v vVar = this.f2435b;
                vVar.h();
                try {
                    cVar.close();
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
                ((OutputStream) this.f2436c).close();
                return;
        }
    }

    @Override // e8.u, java.io.Flushable
    public final void flush() throws IOException {
        switch (this.f2434a) {
            case 0:
                c cVar = (c) this.f2436c;
                v vVar = this.f2435b;
                vVar.h();
                try {
                    cVar.flush();
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
                ((OutputStream) this.f2436c).flush();
                return;
        }
    }

    @Override // e8.u
    public final void n(long j3, g gVar) throws IOException {
        switch (this.f2434a) {
            case 0:
                i2.t.c(gVar.f2450b, 0L, j3);
                long j8 = j3;
                while (true) {
                    long j9 = 0;
                    if (j8 <= 0) {
                        return;
                    }
                    r rVar = gVar.f2449a;
                    d7.g.c(rVar);
                    while (true) {
                        if (j9 < 65536) {
                            j9 += (long) (rVar.f2476c - rVar.f2475b);
                            if (j9 >= j8) {
                                j9 = j8;
                            } else {
                                rVar = rVar.f2479f;
                                d7.g.c(rVar);
                            }
                        }
                    }
                    c cVar = (c) this.f2436c;
                    v vVar = this.f2435b;
                    vVar.h();
                    try {
                        try {
                            cVar.n(j9, gVar);
                            if (vVar.i()) {
                                throw vVar.k(null);
                            }
                            j8 -= j9;
                        } catch (IOException e9) {
                            if (!vVar.i()) {
                                throw e9;
                            }
                            throw vVar.k(e9);
                        }
                    } catch (Throwable th) {
                        vVar.i();
                        throw th;
                    }
                }
                break;
            default:
                i2.t.c(gVar.f2450b, 0L, j3);
                while (j3 > 0) {
                    this.f2435b.f();
                    r rVar2 = gVar.f2449a;
                    d7.g.c(rVar2);
                    int iMin = (int) Math.min(j3, rVar2.f2476c - rVar2.f2475b);
                    ((OutputStream) this.f2436c).write(rVar2.f2474a, rVar2.f2475b, iMin);
                    int i6 = rVar2.f2475b + iMin;
                    rVar2.f2475b = i6;
                    long j10 = iMin;
                    j3 -= j10;
                    gVar.f2450b -= j10;
                    if (i6 == rVar2.f2476c) {
                        gVar.f2449a = rVar2.a();
                        s.a(rVar2);
                    }
                }
                return;
        }
    }

    public final String toString() {
        switch (this.f2434a) {
            case 0:
                return "AsyncTimeout.sink(" + ((c) this.f2436c) + ')';
            default:
                return "sink(" + ((OutputStream) this.f2436c) + ')';
        }
    }

    public c(v vVar, c cVar) {
        this.f2435b = vVar;
        this.f2436c = cVar;
    }
}
