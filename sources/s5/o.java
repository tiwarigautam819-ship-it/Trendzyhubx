package s5;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f5265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5266c;

    public o(Method method, Object obj) {
        this.f5265b = method;
        this.f5266c = obj;
    }

    @Override // s5.s
    public final Object a(Class cls) {
        String strA = p4.p.a(cls);
        if (strA == null) {
            return this.f5265b.invoke(this.f5266c, cls);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
    }
}
