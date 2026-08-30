package v7;

import com.google.firebase.messaging.p;
import com.google.firebase.messaging.y;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import r7.r;
import r7.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f5668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f5669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f5670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f5671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f5672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f5673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e f5674g;
    public l h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f5675i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5676j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5677k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5678l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f5679m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile p f5680v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile l f5681w;

    public i(r rVar, com.google.android.gms.common.internal.g gVar) {
        this.f5668a = rVar;
        this.f5669b = gVar;
        this.f5670c = (m) rVar.f5114b.f3502b;
        rVar.f5117e.getClass();
        h hVar = new h(this);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        hVar.g(0);
        this.f5671d = hVar;
        this.f5672e = new AtomicBoolean();
        this.f5678l = true;
    }

    public static final String a(i iVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(iVar.f5679m ? "canceled " : "");
        sb.append("call");
        sb.append(" to ");
        sb.append(((r7.m) iVar.f5669b.f1409b).f());
        return sb.toString();
    }

    public final void b(l lVar) {
        byte[] bArr = s7.b.f5287a;
        if (this.h != null) {
            throw new IllegalStateException("Check failed.");
        }
        this.h = lVar;
        lVar.f5699p.add(new g(this, this.f5673f));
    }

    public final IOException c(IOException iOException) {
        IOException interruptedIOException;
        Socket socketK;
        byte[] bArr = s7.b.f5287a;
        l lVar = this.h;
        if (lVar != null) {
            synchronized (lVar) {
                socketK = k();
            }
            if (this.h == null) {
                if (socketK != null) {
                    s7.b.e(socketK);
                }
            } else if (socketK != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (this.f5671d.i()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        } else {
            interruptedIOException = iOException;
        }
        if (iOException != null) {
            d7.g.c(interruptedIOException);
        }
        return interruptedIOException;
    }

    public final Object clone() {
        return new i(this.f5668a, this.f5669b);
    }

    public final void d() {
        Socket socket;
        if (this.f5679m) {
            return;
        }
        this.f5679m = true;
        p pVar = this.f5680v;
        if (pVar != null) {
            ((w7.d) pVar.f2140d).cancel();
        }
        l lVar = this.f5681w;
        if (lVar == null || (socket = lVar.f5687c) == null) {
            return;
        }
        s7.b.e(socket);
    }

    public final void e(n6.d dVar) {
        f fVar;
        if (!this.f5672e.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        z7.n nVar = z7.n.f6440a;
        this.f5673f = z7.n.f6440a.g();
        y yVar = this.f5668a.f5113a;
        f fVar2 = new f(this, dVar);
        yVar.getClass();
        synchronized (yVar) {
            ((ArrayDeque) yVar.f2165d).add(fVar2);
            String str = ((r7.m) this.f5669b.f1409b).f5083d;
            Iterator it = ((ArrayDeque) yVar.f2163b).iterator();
            while (true) {
                if (!it.hasNext()) {
                    Iterator it2 = ((ArrayDeque) yVar.f2165d).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            fVar = null;
                            break;
                        } else {
                            fVar = (f) it2.next();
                            if (d7.g.a(((r7.m) fVar.f5665c.f5669b.f1409b).f5083d, str)) {
                                break;
                            }
                        }
                    }
                } else {
                    fVar = (f) it.next();
                    if (d7.g.a(((r7.m) fVar.f5665c.f5669b.f1409b).f5083d, str)) {
                        break;
                    }
                }
            }
            if (fVar != null) {
                fVar2.f5664b = fVar.f5664b;
            }
        }
        yVar.z();
    }

    public final u f() {
        if (!this.f5672e.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        this.f5671d.h();
        z7.n nVar = z7.n.f6440a;
        this.f5673f = z7.n.f6440a.g();
        try {
            y yVar = this.f5668a.f5113a;
            synchronized (yVar) {
                ((ArrayDeque) yVar.f2164c).add(this);
            }
            return h();
        } finally {
            y yVar2 = this.f5668a.f5113a;
            yVar2.o((ArrayDeque) yVar2.f2164c, this);
        }
    }

    public final void g(boolean z5) {
        p pVar;
        synchronized (this) {
            if (!this.f5678l) {
                throw new IllegalStateException("released");
            }
        }
        if (z5 && (pVar = this.f5680v) != null) {
            ((w7.d) pVar.f2140d).cancel();
            ((i) pVar.f2138b).i(pVar, true, true, null);
        }
        this.f5675i = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final r7.u h() {
        /*
            r9 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r7.r r0 = r9.f5668a
            java.util.List r0 = r0.f5115c
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            s6.m.o(r2, r0)
            w7.a r0 = new w7.a
            r7.r r1 = r9.f5668a
            r0.<init>(r1)
            r2.add(r0)
            w7.a r0 = new w7.a
            r7.r r1 = r9.f5668a
            r7.b r1 = r1.f5121j
            r0.<init>(r1)
            r2.add(r0)
            t7.b r0 = new t7.b
            r0.<init>()
            r2.add(r0)
            v7.a r0 = v7.a.f5637a
            r2.add(r0)
            r7.r r0 = r9.f5668a
            java.util.List r0 = r0.f5116d
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            s6.m.o(r2, r0)
            w7.b r0 = new w7.b
            r0.<init>()
            r2.add(r0)
            w7.f r0 = new w7.f
            com.google.android.gms.common.internal.g r5 = r9.f5669b
            r7.r r1 = r9.f5668a
            int r6 = r1.D
            int r7 = r1.E
            int r8 = r1.F
            r3 = 0
            r4 = 0
            r1 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r2 = 0
            r3 = 0
            r7.u r0 = r0.b(r5)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
            boolean r4 = r1.f5679m     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
            if (r4 != 0) goto L62
            r9.j(r2)
            return r0
        L62:
            s7.b.d(r0)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
            java.lang.String r4 = "Canceled"
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
            throw r0     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L6f
        L6d:
            r0 = move-exception
            goto L7b
        L6f:
            r0 = move-exception
            r3 = 1
            java.io.IOException r0 = r9.j(r0)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r4 = "null cannot be cast to non-null type kotlin.Throwable"
            d7.g.d(r4, r0)     // Catch: java.lang.Throwable -> L6d
            throw r0     // Catch: java.lang.Throwable -> L6d
        L7b:
            if (r3 != 0) goto L80
            r9.j(r2)
        L80:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.i.h():r7.u");
    }

    public final IOException i(p pVar, boolean z5, boolean z8, IOException iOException) {
        boolean z9;
        boolean z10;
        d7.g.f("exchange", pVar);
        if (pVar.equals(this.f5680v)) {
            synchronized (this) {
                z9 = false;
                if (z5) {
                    try {
                        if (!this.f5676j) {
                            if (z8 || !this.f5677k) {
                                z10 = false;
                            }
                        }
                        if (z5) {
                            this.f5676j = false;
                        }
                        if (z8) {
                            this.f5677k = false;
                        }
                        boolean z11 = this.f5676j;
                        boolean z12 = (z11 || this.f5677k) ? false : true;
                        if (!z11 && !this.f5677k) {
                            if (!this.f5678l) {
                                z9 = true;
                            }
                        }
                        z10 = z9;
                        z9 = z12;
                    } catch (Throwable th) {
                        throw th;
                    }
                } else {
                    if (z8) {
                    }
                    z10 = false;
                }
            }
            if (z9) {
                this.f5680v = null;
                l lVar = this.h;
                if (lVar != null) {
                    lVar.h();
                }
            }
            if (z10) {
                return c(iOException);
            }
        }
        return iOException;
    }

    public final IOException j(IOException iOException) {
        boolean z5;
        synchronized (this) {
            z5 = false;
            if (this.f5678l) {
                this.f5678l = false;
                if (!this.f5676j) {
                    if (!this.f5677k) {
                        z5 = true;
                    }
                }
            }
        }
        return z5 ? c(iOException) : iOException;
    }

    public final Socket k() {
        l lVar = this.h;
        d7.g.c(lVar);
        byte[] bArr = s7.b.f5287a;
        ArrayList arrayList = lVar.f5699p;
        int size = arrayList.size();
        int i6 = 0;
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i6 = -1;
                break;
            }
            Object obj = arrayList.get(i9);
            i9++;
            if (d7.g.a(((Reference) obj).get(), this)) {
                break;
            }
            i6++;
        }
        if (i6 == -1) {
            throw new IllegalStateException("Check failed.");
        }
        arrayList.remove(i6);
        this.h = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        lVar.f5700q = System.nanoTime();
        m mVar = this.f5670c;
        ConcurrentLinkedQueue concurrentLinkedQueue = mVar.f5705e;
        u7.c cVar = mVar.f5703c;
        byte[] bArr2 = s7.b.f5287a;
        if (!lVar.f5693j && mVar.f5701a != 0) {
            cVar.c(mVar.f5704d, 0L);
            return null;
        }
        lVar.f5693j = true;
        concurrentLinkedQueue.remove(lVar);
        if (concurrentLinkedQueue.isEmpty()) {
            cVar.a();
        }
        Socket socket = lVar.f5688d;
        d7.g.c(socket);
        return socket;
    }
}
