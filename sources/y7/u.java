package y7;

import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements e8.w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e8.g f6357c = new e8.g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e8.g f6358d = new e8.g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ w f6360f;

    public u(w wVar, long j3, boolean z5) {
        this.f6360f = wVar;
        this.f6355a = j3;
        this.f6356b = z5;
    }

    public final void a(long j3) {
        byte[] bArr = s7.b.f5287a;
        this.f6360f.f6363b.t(j3);
    }

    @Override // e8.w
    public final e8.y b() {
        return this.f6360f.f6371k;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j3;
        w wVar = this.f6360f;
        synchronized (wVar) {
            this.f6359e = true;
            e8.g gVar = this.f6358d;
            j3 = gVar.f2450b;
            gVar.skip(j3);
            wVar.notifyAll();
        }
        if (j3 > 0) {
            a(j3);
        }
        this.f6360f.a();
    }

    @Override // e8.w
    public final long h(long j3, e8.g gVar) throws Throwable {
        Throwable b0Var;
        boolean z5;
        long jH;
        d7.g.f("sink", gVar);
        do {
            w wVar = this.f6360f;
            synchronized (wVar) {
                wVar.f6371k.h();
                try {
                    if (wVar.f() == 0 || this.f6356b) {
                        b0Var = null;
                    } else {
                        b0Var = wVar.f6374n;
                        if (b0Var == null) {
                            int iF = wVar.f();
                            a1.a.m(iF);
                            b0Var = new b0(iF);
                        }
                    }
                    if (this.f6359e) {
                        throw new IOException("stream closed");
                    }
                    e8.g gVar2 = this.f6358d;
                    long j8 = gVar2.f2450b;
                    z5 = false;
                    if (j8 > 0) {
                        jH = gVar2.h(Math.min(8192L, j8), gVar);
                        long j9 = wVar.f6364c + jH;
                        wVar.f6364c = j9;
                        long j10 = j9 - wVar.f6365d;
                        if (b0Var == null && j10 >= wVar.f6363b.f6331x.a() / 2) {
                            wVar.f6363b.w(wVar.f6362a, j10);
                            wVar.f6365d = wVar.f6364c;
                        }
                    } else {
                        if (!this.f6356b && b0Var == null) {
                            try {
                                wVar.wait();
                                z5 = true;
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                        jH = -1;
                    }
                    wVar.f6371k.k();
                } catch (Throwable th) {
                    wVar.f6371k.k();
                    throw th;
                }
            }
        } while (z5);
        if (jH != -1) {
            return jH;
        }
        if (b0Var == null) {
            return -1L;
        }
        throw b0Var;
    }
}
