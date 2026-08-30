package s5;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f5269b;

    public q(Method method) {
        this.f5269b = method;
    }

    @Override // s5.s
    public final Object a(Class cls) {
        String strA = p4.p.a(cls);
        if (strA == null) {
            return this.f5269b.invoke(null, cls, Object.class);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
    }
}
