package y7;

import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f6363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f6367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f6368g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u f6369i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final t f6370j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v f6371k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final v f6372l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6373m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public IOException f6374n;

    public w(int i6, o oVar, boolean z5, boolean z8, r7.k kVar) {
        d7.g.f("connection", oVar);
        this.f6362a = i6;
        this.f6363b = oVar;
        this.f6367f = oVar.f6332y.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f6368g = arrayDeque;
        this.f6369i = new u(this, oVar.f6331x.a(), z8);
        this.f6370j = new t(this, z5);
        this.f6371k = new v(this);
        this.f6372l = new v(this);
        if (kVar == null) {
            if (!h()) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            if (h()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(kVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r2 = this;
            byte[] r0 = s7.b.f5287a
            monitor-enter(r2)
            y7.u r0 = r2.f6369i     // Catch: java.lang.Throwable -> L18
            boolean r1 = r0.f6356b     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L1c
            boolean r0 = r0.f6359e     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L1c
            y7.t r0 = r2.f6370j     // Catch: java.lang.Throwable -> L18
            boolean r1 = r0.f6351a     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L1a
            boolean r0 = r0.f6353c     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L1c
            goto L1a
        L18:
            r0 = move-exception
            goto L35
        L1a:
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            boolean r1 = r2.i()     // Catch: java.lang.Throwable -> L18
            monitor-exit(r2)
            if (r0 == 0) goto L2b
            r0 = 9
            r1 = 0
            r2.c(r0, r1)
            return
        L2b:
            if (r1 != 0) goto L34
            y7.o r0 = r2.f6363b
            int r1 = r2.f6362a
            r0.o(r1)
        L34:
            return
        L35:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y7.w.a():void");
    }

    public final void b() throws IOException {
        t tVar = this.f6370j;
        if (tVar.f6353c) {
            throw new IOException("stream closed");
        }
        if (tVar.f6351a) {
            throw new IOException("stream finished");
        }
        if (this.f6373m != 0) {
            IOException iOException = this.f6374n;
            if (iOException != null) {
                throw iOException;
            }
            int i6 = this.f6373m;
            a1.a.m(i6);
            throw new b0(i6);
        }
    }

    public final void c(int i6, IOException iOException) {
        a1.a.n(i6, "rstStatusCode");
        if (d(i6, iOException)) {
            o oVar = this.f6363b;
            oVar.getClass();
            a1.a.n(i6, "statusCode");
            oVar.E.u(this.f6362a, i6);
        }
    }

    public final boolean d(int i6, IOException iOException) {
        byte[] bArr = s7.b.f5287a;
        synchronized (this) {
            if (this.f6373m != 0) {
                return false;
            }
            this.f6373m = i6;
            this.f6374n = iOException;
            notifyAll();
            if (this.f6369i.f6356b) {
                if (this.f6370j.f6351a) {
                    return false;
                }
            }
            this.f6363b.o(this.f6362a);
            return true;
        }
    }

    public final void e(int i6) {
        a1.a.n(i6, "errorCode");
        if (d(i6, null)) {
            this.f6363b.v(this.f6362a, i6);
        }
    }

    public final synchronized int f() {
        return this.f6373m;
    }

    public final t g() {
        synchronized (this) {
            if (!this.h && !h()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f6370j;
    }

    public final boolean h() {
        boolean z5 = (this.f6362a & 1) == 1;
        this.f6363b.getClass();
        return true == z5;
    }

    public final synchronized boolean i() {
        try {
            if (this.f6373m != 0) {
                return false;
            }
            u uVar = this.f6369i;
            if (uVar.f6356b || uVar.f6359e) {
                t tVar = this.f6370j;
                if (tVar.f6351a || tVar.f6353c) {
                    if (this.h) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void j(r7.k kVar, boolean z5) {
        boolean zI;
        d7.g.f("headers", kVar);
        byte[] bArr = s7.b.f5287a;
        synchronized (this) {
            try {
                if (this.h && z5) {
                    this.f6369i.getClass();
                } else {
                    this.h = true;
                    this.f6368g.add(kVar);
                }
                if (z5) {
                    this.f6369i.f6356b = true;
                }
                zI = i();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zI) {
            return;
        }
        this.f6363b.o(this.f6362a);
    }

    public final synchronized void k(int i6) {
        a1.a.n(i6, "errorCode");
        if (this.f6373m == 0) {
            this.f6373m = i6;
            notifyAll();
        }
    }
}
