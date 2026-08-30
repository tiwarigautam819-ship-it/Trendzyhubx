package i2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f3111c;

    public /* synthetic */ k(h hVar, Object obj, int i6) {
        this.f3109a = i6;
        this.f3111c = hVar;
        this.f3110b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078 A[Catch: all -> 0x0031, Exception -> 0x0043, TryCatch #0 {all -> 0x0031, blocks: (B:5:0x0010, B:10:0x002b, B:15:0x0037, B:18:0x003d, B:19:0x0043, B:21:0x0049, B:22:0x004d, B:29:0x005d, B:36:0x006d, B:38:0x0078, B:42:0x007f, B:45:0x008b, B:35:0x0069, B:28:0x0059, B:47:0x009e), top: B:52:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x007e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.Object r7, java.lang.reflect.Method r8, java.lang.Object[] r9) {
        /*
            r6 = this;
            java.lang.String r0 = "productId"
            java.lang.Class<i2.l> r1 = i2.l.class
            i2.h r2 = r6.f3111c
            i2.l r2 = (i2.l) r2
            boolean r3 = v2.a.b(r6)
            if (r3 == 0) goto L10
            goto La5
        L10:
            java.lang.String r3 = "proxy"
            d7.g.f(r3, r7)     // Catch: java.lang.Throwable -> L31
            java.lang.String r7 = "m"
            d7.g.f(r7, r8)     // Catch: java.lang.Throwable -> L31
            java.lang.String r7 = r8.getName()     // Catch: java.lang.Throwable -> L31
            java.lang.String r8 = "onSkuDetailsResponse"
            boolean r7 = d7.g.a(r7, r8)     // Catch: java.lang.Throwable -> L31
            if (r7 != 0) goto L28
            goto La5
        L28:
            r7 = 0
            if (r9 == 0) goto L34
            r8 = 1
            java.lang.Object r8 = s6.f.p(r8, r9)     // Catch: java.lang.Throwable -> L31
            goto L35
        L31:
            r7 = move-exception
            goto La6
        L34:
            r8 = r7
        L35:
            if (r8 == 0) goto La5
            boolean r9 = r8 instanceof java.util.List     // Catch: java.lang.Throwable -> L31
            if (r9 != 0) goto L3d
            goto La5
        L3d:
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L31
        L43:
            boolean r9 = r8.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r9 == 0) goto L9e
            java.lang.Object r9 = r8.next()     // Catch: java.lang.Throwable -> L31
            boolean r3 = v2.a.b(r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            if (r3 == 0) goto L55
        L53:
            r3 = r7
            goto L5d
        L55:
            java.lang.Class r3 = r2.f3120c     // Catch: java.lang.Throwable -> L58
            goto L5d
        L58:
            r3 = move-exception
            v2.a.a(r3, r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            goto L53
        L5d:
            boolean r4 = v2.a.b(r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            if (r4 == 0) goto L65
        L63:
            r4 = r7
            goto L6d
        L65:
            java.lang.reflect.Method r4 = r2.f3124g     // Catch: java.lang.Throwable -> L68
            goto L6d
        L68:
            r4 = move-exception
            v2.a.a(r4, r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            goto L63
        L6d:
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            java.lang.Object r9 = i2.t.j(r3, r4, r9, r5)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            boolean r3 = r9 instanceof java.lang.String     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            if (r3 == 0) goto L7b
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            goto L7c
        L7b:
            r9 = r7
        L7c:
            if (r9 != 0) goto L7f
            goto L43
        L7f:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            r3.<init>(r9)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            boolean r9 = r3.has(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            if (r9 != 0) goto L8b
            goto L43
        L8b:
            java.lang.String r9 = r3.getString(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            i2.p r4 = i2.l.f3112l     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            java.util.concurrent.ConcurrentHashMap r4 = i2.p.i()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            java.lang.String r5 = "skuID"
            d7.g.e(r5, r9)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            r4.put(r9, r3)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L43
            goto L43
        L9e:
            java.lang.Object r7 = r6.f3110b     // Catch: java.lang.Throwable -> L31
            java.lang.Runnable r7 = (java.lang.Runnable) r7     // Catch: java.lang.Throwable -> L31
            r7.run()     // Catch: java.lang.Throwable -> L31
        La5:
            return
        La6:
            v2.a.a(r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.k.a(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):void");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        switch (this.f3109a) {
            case 0:
                if (!v2.a.b(this)) {
                    try {
                        a(obj, method, objArr);
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                        return null;
                    }
                    break;
                }
                break;
            default:
                Object[] objArr2 = (Object[]) this.f3110b;
                m mVar = (m) this.f3111c;
                d7.g.f("proxy", obj);
                d7.g.f("m", method);
                String name = method.getName();
                if (name != null) {
                    switch (name.hashCode()) {
                        case -1642587947:
                            if (name.equals("onPurchaseHistoryResponse") && !v2.a.b(m.class)) {
                                try {
                                    mVar.h(objArr2, objArr);
                                } catch (Throwable th2) {
                                    v2.a.a(th2, m.class);
                                    return null;
                                }
                            }
                            break;
                        case -1599362358:
                            if (name.equals("onQueryPurchasesResponse") && !v2.a.b(m.class)) {
                                try {
                                    mVar.i(objArr2, objArr);
                                } catch (Throwable th3) {
                                    v2.a.a(th3, m.class);
                                    return null;
                                }
                            }
                            break;
                        case -79406125:
                            if (name.equals("onBillingSetupFinished") && !v2.a.b(m.class)) {
                                try {
                                    mVar.f(objArr2, objArr);
                                } catch (Throwable th4) {
                                    v2.a.a(th4, m.class);
                                    return null;
                                }
                            }
                            break;
                        case 1227540564:
                            if (name.equals("onBillingServiceDisconnected") && !v2.a.b(m.class)) {
                                try {
                                    if (!v2.a.b(mVar)) {
                                        try {
                                            m.H.set(false);
                                        } catch (Throwable th5) {
                                            v2.a.a(th5, mVar);
                                            return null;
                                        }
                                        break;
                                    }
                                } catch (Throwable th6) {
                                    v2.a.a(th6, m.class);
                                    return null;
                                }
                            }
                            break;
                        case 1940131955:
                            if (name.equals("onProductDetailsResponse") && !v2.a.b(m.class)) {
                                try {
                                    mVar.g(objArr2, objArr);
                                } catch (Throwable th7) {
                                    v2.a.a(th7, m.class);
                                    return null;
                                }
                            }
                            break;
                    }
                }
                break;
        }
        return null;
    }
}
