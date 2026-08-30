package l7;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w extends q7.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3900c;

    public w(int i6) {
        super(0L, q7.j.f4923g);
        this.f3900c = i6;
    }

    public abstract void b(Object obj, CancellationException cancellationException);

    public abstract u6.f c();

    public Throwable d(Object obj) {
        i iVar = obj instanceof i ? (i) obj : null;
        if (iVar != null) {
            return iVar.f3859a;
        }
        return null;
    }

    public final void g(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            i2.t.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        d7.g.c(th);
        r.e(c().getContext(), new q("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r12 = this;
            r6.j r0 = r6.j.f5000a
            f4.j r1 = r12.f4915b
            u6.f r2 = r12.c()     // Catch: java.lang.Throwable -> L24
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"
            d7.g.d(r3, r2)     // Catch: java.lang.Throwable -> L24
            p7.g r2 = (p7.g) r2     // Catch: java.lang.Throwable -> L24
            w6.e r3 = r2.f4675e     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.f4677g     // Catch: java.lang.Throwable -> L24
            u6.k r4 = r3.f5763b     // Catch: java.lang.Throwable -> L24
            d7.g.c(r4)     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = p7.a.f(r4, r2)     // Catch: java.lang.Throwable -> L24
            n6.d r5 = p7.a.f4668e     // Catch: java.lang.Throwable -> L24
            if (r2 == r5) goto L27
            l7.r.i(r3, r4)     // Catch: java.lang.Throwable -> L24
            goto L27
        L24:
            r2 = move-exception
            goto L91
        L27:
            u6.k r5 = r3.f5763b     // Catch: java.lang.Throwable -> L4c
            d7.g.c(r5)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r6 = r12.h()     // Catch: java.lang.Throwable -> L4c
            java.lang.Throwable r7 = r12.d(r6)     // Catch: java.lang.Throwable -> L4c
            r8 = 0
            if (r7 != 0) goto L4e
            int r9 = r12.f3900c     // Catch: java.lang.Throwable -> L4c
            r10 = 1
            if (r9 == r10) goto L41
            r11 = 2
            if (r9 != r11) goto L40
            goto L41
        L40:
            r10 = 0
        L41:
            if (r10 == 0) goto L4e
            l7.o r9 = l7.o.f3873b     // Catch: java.lang.Throwable -> L4c
            u6.i r5 = r5.g(r9)     // Catch: java.lang.Throwable -> L4c
            l7.k0 r5 = (l7.k0) r5     // Catch: java.lang.Throwable -> L4c
            goto L4f
        L4c:
            r3 = move-exception
            goto L8d
        L4e:
            r5 = r8
        L4f:
            if (r5 == 0) goto L68
            boolean r9 = r5.a()     // Catch: java.lang.Throwable -> L4c
            if (r9 != 0) goto L68
            l7.s0 r5 = (l7.s0) r5     // Catch: java.lang.Throwable -> L4c
            java.util.concurrent.CancellationException r5 = r5.k()     // Catch: java.lang.Throwable -> L4c
            r12.b(r6, r5)     // Catch: java.lang.Throwable -> L4c
            r6.e r5 = k2.e.c(r5)     // Catch: java.lang.Throwable -> L4c
            r3.e(r5)     // Catch: java.lang.Throwable -> L4c
            goto L79
        L68:
            if (r7 == 0) goto L72
            r6.e r5 = k2.e.c(r7)     // Catch: java.lang.Throwable -> L4c
            r3.e(r5)     // Catch: java.lang.Throwable -> L4c
            goto L79
        L72:
            java.lang.Object r5 = r12.f(r6)     // Catch: java.lang.Throwable -> L4c
            r3.e(r5)     // Catch: java.lang.Throwable -> L4c
        L79:
            p7.a.b(r4, r2)     // Catch: java.lang.Throwable -> L24
            r1.getClass()     // Catch: java.lang.Throwable -> L80
            goto L85
        L80:
            r0 = move-exception
            r6.e r0 = k2.e.c(r0)
        L85:
            java.lang.Throwable r0 = r6.f.a(r0)
            r12.g(r8, r0)
            goto La1
        L8d:
            p7.a.b(r4, r2)     // Catch: java.lang.Throwable -> L24
            throw r3     // Catch: java.lang.Throwable -> L24
        L91:
            r1.getClass()     // Catch: java.lang.Throwable -> L95
            goto L9a
        L95:
            r0 = move-exception
            r6.e r0 = k2.e.c(r0)
        L9a:
            java.lang.Throwable r0 = r6.f.a(r0)
            r12.g(r2, r0)
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.w.run():void");
    }

    public Object f(Object obj) {
        return obj;
    }
}
