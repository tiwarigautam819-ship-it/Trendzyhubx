package i2;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f3103a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f3104b = new AtomicBoolean(false);

    /* JADX WARN: Removed duplicated region for block: B:37:0x0074 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #2 {all -> 0x002d, blocks: (B:8:0x000d, B:12:0x001c, B:14:0x0024, B:20:0x003a, B:22:0x003e, B:25:0x0044, B:27:0x004d, B:36:0x0065, B:33:0x005d, B:37:0x0074, B:19:0x0032, B:30:0x0059), top: B:49:0x000d, outer: #0, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final synchronized void b(android.content.Context r6, int r7) {
        /*
            java.lang.Class<i2.g> r0 = i2.g.class
            monitor-enter(r0)
            java.lang.Class<i2.g> r1 = i2.g.class
            boolean r1 = v2.a.b(r1)     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto Ld
            monitor-exit(r0)
            return
        Ld:
            java.lang.String r1 = "billingClientVersion"
            a1.a.n(r7, r1)     // Catch: java.lang.Throwable -> L2d
            java.util.concurrent.atomic.AtomicBoolean r1 = i2.g.f3104b     // Catch: java.lang.Throwable -> L2d
            boolean r2 = r1.get()     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L1c
            monitor-exit(r0)
            return
        L1c:
            d7.k r2 = new d7.k     // Catch: java.lang.Throwable -> L2d
            r2.<init>()     // Catch: java.lang.Throwable -> L2d
            r3 = 3
            if (r7 != r3) goto L2f
            i2.p r4 = i2.l.f3112l     // Catch: java.lang.Throwable -> L2d
            i2.l r4 = r4.h(r6)     // Catch: java.lang.Throwable -> L2d
            r2.f2298b = r4     // Catch: java.lang.Throwable -> L2d
            goto L3a
        L2d:
            r6 = move-exception
            goto L84
        L2f:
            r4 = 4
            if (r7 != r4) goto L3a
            i2.j r4 = i2.m.G     // Catch: java.lang.Throwable -> L2d
            i2.m r4 = r4.b(r6)     // Catch: java.lang.Throwable -> L2d
            r2.f2298b = r4     // Catch: java.lang.Throwable -> L2d
        L3a:
            java.lang.Object r4 = r2.f2298b     // Catch: java.lang.Throwable -> L2d
            if (r4 != 0) goto L44
            r6 = 1
            r1.set(r6)     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r0)
            return
        L44:
            q2.o r1 = q2.o.AndroidIAPSubscriptionAutoLogging     // Catch: java.lang.Throwable -> L2d
            boolean r1 = q2.q.b(r1)     // Catch: java.lang.Throwable -> L2d
            r4 = 0
            if (r1 == 0) goto L74
            j2.f r1 = j2.f.f3356a     // Catch: java.lang.Throwable -> L2d
            java.lang.Class<j2.f> r1 = j2.f.class
            boolean r5 = v2.a.b(r1)     // Catch: java.lang.Throwable -> L2d
            if (r5 == 0) goto L59
        L57:
            r1 = r4
            goto L61
        L59:
            boolean r1 = j2.f.f3357b     // Catch: java.lang.Throwable -> L5c
            goto L61
        L5c:
            r5 = move-exception
            v2.a.a(r5, r1)     // Catch: java.lang.Throwable -> L2d
            goto L57
        L61:
            if (r1 == 0) goto L65
            if (r7 != r3) goto L74
        L65:
            java.lang.Object r1 = r2.f2298b     // Catch: java.lang.Throwable -> L2d
            i2.h r1 = (i2.h) r1     // Catch: java.lang.Throwable -> L2d
            i2.s r4 = i2.s.INAPP     // Catch: java.lang.Throwable -> L2d
            b.m r5 = new b.m     // Catch: java.lang.Throwable -> L2d
            r5.<init>(r7, r3, r2, r6)     // Catch: java.lang.Throwable -> L2d
            r1.a(r4, r5)     // Catch: java.lang.Throwable -> L2d
            goto L82
        L74:
            java.lang.Object r1 = r2.f2298b     // Catch: java.lang.Throwable -> L2d
            i2.h r1 = (i2.h) r1     // Catch: java.lang.Throwable -> L2d
            i2.s r2 = i2.s.INAPP     // Catch: java.lang.Throwable -> L2d
            i2.f r3 = new i2.f     // Catch: java.lang.Throwable -> L2d
            r3.<init>(r7, r6, r4)     // Catch: java.lang.Throwable -> L2d
            r1.a(r2, r3)     // Catch: java.lang.Throwable -> L2d
        L82:
            monitor-exit(r0)
            return
        L84:
            java.lang.Class<i2.g> r7 = i2.g.class
            v2.a.a(r6, r7)     // Catch: java.lang.Throwable -> L8b
            monitor-exit(r0)
            return
        L8b:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.g.b(android.content.Context, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(int r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.g.a(int, java.lang.String):void");
    }
}
