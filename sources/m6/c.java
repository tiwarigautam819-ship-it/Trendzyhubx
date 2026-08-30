package m6;

import java.lang.reflect.InvocationHandler;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f4289b;

    public /* synthetic */ c(f fVar, int i6) {
        this.f4288a = i6;
        this.f4289b = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    @Override // java.lang.reflect.InvocationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(java.lang.Object r4, java.lang.reflect.Method r5, java.lang.Object[] r6) {
        /*
            r3 = this;
            int r4 = r3.f4288a
            switch(r4) {
                case 0: goto L1c;
                default: goto L5;
            }
        L5:
            m6.f r4 = r3.f4289b
            r5 = 0
            if (r4 == 0) goto L1b
            if (r6 == 0) goto L17
            int r0 = r6.length
            if (r0 <= 0) goto L17
            r0 = 0
            r6 = r6[r0]
            java.lang.String r6 = java.lang.String.valueOf(r6)
            goto L18
        L17:
            r6 = r5
        L18:
            r4.a(r6)
        L1b:
            return r5
        L1c:
            m6.f r4 = r3.f4289b
            m6.a r4 = (m6.a) r4
            java.lang.String r5 = "getAdid"
            r0 = 0
            if (r6 == 0) goto L42
            int r1 = r6.length     // Catch: java.lang.Throwable -> L42
            if (r1 <= 0) goto L42
            r1 = 0
            r2 = r6[r1]     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L42
            java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> L42
            java.lang.reflect.Method r2 = r2.getMethod(r5, r0)     // Catch: java.lang.Throwable -> L42
            r6 = r6[r1]     // Catch: java.lang.Throwable -> L42
            java.lang.Object r6 = r2.invoke(r6, r0)     // Catch: java.lang.Throwable -> L42
            if (r6 == 0) goto L42
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L42
            goto L43
        L42:
            r6 = r0
        L43:
            if (r6 == 0) goto L4f
            java.lang.String r1 = r6.trim()
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L5f
        L4f:
            java.lang.Class r1 = m6.d.f4290a     // Catch: java.lang.Throwable -> L5f
            java.lang.reflect.Method r5 = r1.getMethod(r5, r0)     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r5 = r5.invoke(r0, r0)     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L5f
            java.lang.String r6 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L5f
        L5f:
            r4.a(r6)     // Catch: java.lang.Throwable -> L62
        L62:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: m6.c.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }
}
