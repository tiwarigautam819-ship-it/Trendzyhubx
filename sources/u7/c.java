package u7;

import d7.g;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f5512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f5515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f5516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5517f;

    public c(d dVar, String str) {
        g.f("name", str);
        this.f5512a = dVar;
        this.f5513b = str;
        this.f5516e = new ArrayList();
    }

    public final void a() {
        byte[] bArr = s7.b.f5287a;
        synchronized (this.f5512a) {
            if (b()) {
                this.f5512a.d(this);
            }
        }
    }

    public final boolean b() {
        a aVar = this.f5515d;
        if (aVar != null && aVar.f5507b) {
            this.f5517f = true;
        }
        ArrayList arrayList = this.f5516e;
        boolean z5 = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((a) arrayList.get(size)).f5507b) {
                a aVar2 = (a) arrayList.get(size);
                o3.a aVar3 = d.h;
                if (d.f5519j.isLoggable(Level.FINE)) {
                    y1.g.a(aVar2, this, "canceled");
                }
                arrayList.remove(size);
                z5 = true;
            }
        }
        return z5;
    }

    public final void c(a aVar, long j3) {
        g.f("task", aVar);
        synchronized (this.f5512a) {
            if (!this.f5514c) {
                if (d(aVar, j3, false)) {
                    this.f5512a.d(this);
                }
            } else if (aVar.f5507b) {
                o3.a aVar2 = d.h;
                if (d.f5519j.isLoggable(Level.FINE)) {
                    y1.g.a(aVar, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                o3.a aVar3 = d.h;
                if (d.f5519j.isLoggable(Level.FINE)) {
                    y1.g.a(aVar, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(u7.a r11, long r12, boolean r14) {
        /*
            r10 = this;
            java.lang.String r0 = "task"
            d7.g.f(r0, r11)
            u7.c r0 = r11.f5508c
            if (r0 != r10) goto La
            goto Le
        La:
            if (r0 != 0) goto L8d
            r11.f5508c = r10
        Le:
            long r0 = java.lang.System.nanoTime()
            long r2 = r0 + r12
            java.util.ArrayList r4 = r10.f5516e
            int r5 = r4.indexOf(r11)
            r6 = -1
            r7 = 0
            if (r5 == r6) goto L39
            long r8 = r11.f5509d
            int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r8 > 0) goto L36
            o3.a r12 = u7.d.h
            java.util.logging.Logger r12 = u7.d.f5519j
            java.util.logging.Level r13 = java.util.logging.Level.FINE
            boolean r12 = r12.isLoggable(r13)
            if (r12 == 0) goto L8c
            java.lang.String r12 = "already scheduled"
            y1.g.a(r11, r10, r12)
            return r7
        L36:
            r4.remove(r5)
        L39:
            r11.f5509d = r2
            o3.a r5 = u7.d.h
            java.util.logging.Logger r5 = u7.d.f5519j
            java.util.logging.Level r8 = java.util.logging.Level.FINE
            boolean r5 = r5.isLoggable(r8)
            if (r5 == 0) goto L63
            if (r14 == 0) goto L55
            long r2 = r2 - r0
            java.lang.String r14 = y1.g.l(r2)
            java.lang.String r2 = "run again after "
            java.lang.String r14 = r2.concat(r14)
            goto L60
        L55:
            long r2 = r2 - r0
            java.lang.String r14 = y1.g.l(r2)
            java.lang.String r2 = "scheduled after "
            java.lang.String r14 = r2.concat(r14)
        L60:
            y1.g.a(r11, r10, r14)
        L63:
            int r14 = r4.size()
            r2 = r7
            r3 = r2
        L69:
            if (r3 >= r14) goto L7e
            java.lang.Object r5 = r4.get(r3)
            int r3 = r3 + 1
            u7.a r5 = (u7.a) r5
            long r8 = r5.f5509d
            long r8 = r8 - r0
            int r5 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r5 <= 0) goto L7b
            goto L7f
        L7b:
            int r2 = r2 + 1
            goto L69
        L7e:
            r2 = r6
        L7f:
            if (r2 != r6) goto L85
            int r2 = r4.size()
        L85:
            r4.add(r2, r11)
            if (r2 != 0) goto L8c
            r11 = 1
            return r11
        L8c:
            return r7
        L8d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "task is in multiple queues"
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: u7.c.d(u7.a, long, boolean):boolean");
    }

    public final void e() {
        byte[] bArr = s7.b.f5287a;
        synchronized (this.f5512a) {
            this.f5514c = true;
            if (b()) {
                this.f5512a.d(this);
            }
        }
    }

    public final String toString() {
        return this.f5513b;
    }
}
