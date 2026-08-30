package v7;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u7.c f5703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u7.b f5704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConcurrentLinkedQueue f5705e;

    public m(u7.d dVar, int i6) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        d7.g.f("taskRunner", dVar);
        d7.g.f("timeUnit", timeUnit);
        this.f5701a = i6;
        this.f5702b = timeUnit.toNanos(5L);
        this.f5703c = dVar.e();
        this.f5704d = new u7.b(this, x.h(new StringBuilder(), s7.b.f5293g, " ConnectionPool"));
        this.f5705e = new ConcurrentLinkedQueue();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0031 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(r7.a r6, v7.i r7, java.util.List r8, boolean r9) {
        /*
            r5 = this;
            java.util.concurrent.ConcurrentLinkedQueue r0 = r5.f5705e
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            r2 = 0
            if (r1 == 0) goto L35
            java.lang.Object r1 = r0.next()
            v7.l r1 = (v7.l) r1
            java.lang.String r3 = "connection"
            d7.g.e(r3, r1)
            monitor-enter(r1)
            r3 = 1
            if (r9 == 0) goto L26
            y7.o r4 = r1.f5691g     // Catch: java.lang.Throwable -> L24
            if (r4 == 0) goto L21
            r2 = r3
        L21:
            if (r2 == 0) goto L31
            goto L26
        L24:
            r6 = move-exception
            goto L33
        L26:
            boolean r2 = r1.i(r6, r8)     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L31
            r7.b(r1)     // Catch: java.lang.Throwable -> L24
            monitor-exit(r1)
            return r3
        L31:
            monitor-exit(r1)
            goto L6
        L33:
            monitor-exit(r1)
            throw r6
        L35:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.m.a(r7.a, v7.i, java.util.List, boolean):boolean");
    }

    public final int b(l lVar, long j3) {
        byte[] bArr = s7.b.f5287a;
        ArrayList arrayList = lVar.f5699p;
        int i6 = 0;
        while (i6 < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i6);
            if (reference.get() != null) {
                i6++;
            } else {
                String str = "A connection to " + lVar.f5686b.f5163a.h + " was leaked. Did you forget to close a response body?";
                z7.n nVar = z7.n.f6440a;
                z7.n.f6440a.j(str, ((g) reference).f5666a);
                arrayList.remove(i6);
                lVar.f5693j = true;
                if (arrayList.isEmpty()) {
                    lVar.f5700q = j3 - this.f5702b;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
