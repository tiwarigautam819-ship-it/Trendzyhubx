package i2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3108a;

    public /* synthetic */ j(int i6) {
        this.f3108a = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0257  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public i2.m a(android.content.Context r46) {
        /*
            Method dump skipped, instruction units count: 710
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.j.a(android.content.Context):i2.m");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0014 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:12:0x0014, B:10:0x000f, B:7:0x000b), top: B:20:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized i2.m b(android.content.Context r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.lang.Class<i2.m> r0 = i2.m.class
            boolean r1 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L19
            r2 = 0
            if (r1 == 0) goto Lb
            goto L12
        Lb:
            i2.m r2 = i2.m.I     // Catch: java.lang.Throwable -> Le
            goto L12
        Le:
            r1 = move-exception
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L19
        L12:
            if (r2 != 0) goto L1b
            i2.m r2 = r3.a(r4)     // Catch: java.lang.Throwable -> L19
            goto L1b
        L19:
            r4 = move-exception
            goto L1d
        L1b:
            monitor-exit(r3)
            return r2
        L1d:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L19
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.j.b(android.content.Context):i2.m");
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        switch (this.f3108a) {
            case 0:
                if (!v2.a.b(this)) {
                    try {
                        d7.g.f("proxy", obj);
                        d7.g.f("m", method);
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                        return null;
                    }
                    break;
                }
                break;
            default:
                d7.g.f("proxy", obj);
                d7.g.f("m", method);
                break;
        }
        return null;
    }
}
