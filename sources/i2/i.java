package i2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f3105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f3106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f3107c;

    public i(l lVar, s sVar, Runnable runnable) {
        this.f3107c = lVar;
        this.f3105a = sVar;
        this.f3106b = runnable;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007f A[Catch: all -> 0x002b, Exception -> 0x0043, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x000a, B:10:0x0025, B:15:0x0032, B:18:0x0038, B:19:0x0043, B:22:0x004f, B:23:0x0053, B:30:0x0064, B:37:0x0074, B:39:0x007f, B:43:0x0086, B:46:0x0092, B:48:0x00a2, B:49:0x00ac, B:36:0x0070, B:29:0x0060, B:51:0x00b6, B:54:0x00be, B:68:0x00de, B:69:0x00e2, B:57:0x00c5, B:64:0x00d8), top: B:76:0x000a, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.Object r10, java.lang.reflect.Method r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.i.a(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):void");
    }

    @Override // java.lang.reflect.InvocationHandler
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            a(obj, method, objArr);
            return r6.j.f5000a;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
