package y7;

import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t implements e8.u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e8.g f6352b = new e8.g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w f6354d;

    public t(w wVar, boolean z5) {
        this.f6354d = wVar;
        this.f6351a = z5;
    }

    /* JADX WARN: Finally extract failed */
    public final void a(boolean z5) {
        long jMin;
        boolean z8;
        w wVar = this.f6354d;
        synchronized (wVar) {
            wVar.f6372l.h();
            while (wVar.f6366e >= wVar.f6367f && !this.f6351a && !this.f6353c && wVar.f() == 0) {
                try {
                    try {
                        wVar.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    wVar.f6372l.k();
                    throw th;
                }
            }
            wVar.f6372l.k();
            wVar.b();
            jMin = Math.min(wVar.f6367f - wVar.f6366e, this.f6352b.f2450b);
            wVar.f6366e += jMin;
            z8 = z5 && jMin == this.f6352b.f2450b;
        }
        this.f6354d.f6372l.h();
        try {
            w wVar2 = this.f6354d;
            wVar2.f6363b.u(wVar2.f6362a, z8, this.f6352b, jMin);
        } finally {
            this.f6354d.f6372l.k();
        }
    }

    @Override // e8.u
    public final e8.y b() {
        return this.f6354d.f6372l;
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        w wVar = this.f6354d;
        byte[] bArr = s7.b.f5287a;
        synchronized (wVar) {
            if (this.f6353c) {
                return;
            }
            boolean z5 = wVar.f() == 0;
            w wVar2 = this.f6354d;
            if (!wVar2.f6370j.f6351a) {
                if (this.f6352b.f2450b > 0) {
                    while (this.f6352b.f2450b > 0) {
                        a(true);
                    }
                } else if (z5) {
                    wVar2.f6363b.u(wVar2.f6362a, true, null, 0L);
                }
            }
            synchronized (this.f6354d) {
                this.f6353c = true;
            }
            this.f6354d.f6363b.flush();
            this.f6354d.a();
        }
    }

    @Override // e8.u, java.io.Flushable
    public final void flush() {
        w wVar = this.f6354d;
        byte[] bArr = s7.b.f5287a;
        synchronized (wVar) {
            wVar.b();
        }
        while (this.f6352b.f2450b > 0) {
            a(false);
            this.f6354d.f6363b.flush();
        }
    }

    @Override // e8.u
    public final void n(long j3, e8.g gVar) {
        byte[] bArr = s7.b.f5287a;
        e8.g gVar2 = this.f6352b;
        gVar2.n(j3, gVar);
        while (gVar2.f2450b >= 16384) {
            a(false);
        }
    }
}
