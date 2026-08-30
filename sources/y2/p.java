package y2;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6235a;

    public p() {
        this.f6235a = new HashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:3:0x0001, B:11:0x001a, B:12:0x001e, B:14:0x0024, B:16:0x0036, B:17:0x0040, B:19:0x0046, B:10:0x0017, B:7:0x0009), top: B:27:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(y1.r r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L50
            r1 = 0
            if (r0 == 0) goto L9
            goto L1a
        L9:
            java.util.HashMap r0 = r4.f6145a     // Catch: java.lang.Throwable -> L16
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "events.entries"
            d7.g.e(r2, r0)     // Catch: java.lang.Throwable -> L16
            r1 = r0
            goto L1a
        L16:
            r0 = move-exception
            v2.a.a(r0, r4)     // Catch: java.lang.Throwable -> L50
        L1a:
            java.util.Iterator r4 = r1.iterator()     // Catch: java.lang.Throwable -> L50
        L1e:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L52
            java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L50
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L50
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L50
            y1.b r1 = (y1.b) r1     // Catch: java.lang.Throwable -> L50
            y1.s r1 = r3.d(r1)     // Catch: java.lang.Throwable -> L50
            if (r1 == 0) goto L1e
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L50
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L50
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L50
        L40:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> L50
            if (r2 == 0) goto L1e
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> L50
            y1.e r2 = (y1.e) r2     // Catch: java.lang.Throwable -> L50
            r1.a(r2)     // Catch: java.lang.Throwable -> L50
            goto L40
        L50:
            r4 = move-exception
            goto L54
        L52:
            monitor-exit(r3)
            return
        L54:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L50
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.p.a(y1.r):void");
    }

    public synchronized y1.s b(y1.b bVar) {
        d7.g.f("accessTokenAppIdPair", bVar);
        return (y1.s) ((HashMap) this.f6235a).get(bVar);
    }

    public synchronized int c() {
        int iC;
        Iterator it = ((HashMap) this.f6235a).values().iterator();
        iC = 0;
        while (it.hasNext()) {
            iC += ((y1.s) it.next()).c();
        }
        return iC;
    }

    public synchronized y1.s d(y1.b bVar) {
        Context contextA;
        q2.c cVarB;
        y1.s sVar = (y1.s) ((HashMap) this.f6235a).get(bVar);
        if (sVar == null && (cVarB = q2.g.b((contextA = x1.r.a()))) != null) {
            sVar = new y1.s(cVarB, t4.b.g(contextA));
        }
        if (sVar == null) {
            return null;
        }
        ((HashMap) this.f6235a).put(bVar, sVar);
        return sVar;
    }

    public synchronized Set e() {
        Set setKeySet;
        setKeySet = ((HashMap) this.f6235a).keySet();
        d7.g.e("stateMap.keys", setKeySet);
        return setKeySet;
    }

    public p(q qVar) {
        this.f6235a = qVar;
    }
}
