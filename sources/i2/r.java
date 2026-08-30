package i2;

import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p f3169g = new p();
    public static r h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f3170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f3171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f3172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f3173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f3174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Method f3175f;

    public r(Class cls, Class cls2, Method method, Method method2, Method method3, Method method4) {
        this.f3170a = cls;
        this.f3171b = cls2;
        this.f3172c = method;
        this.f3173d = method2;
        this.f3174e = method3;
        this.f3175f = method4;
    }

    public final Object a(s sVar, ArrayList arrayList) {
        Object objJ;
        Object objJ2;
        Class cls = this.f3171b;
        if (!v2.a.b(this)) {
            try {
                Object objJ3 = t.j(this.f3170a, this.f3172c, null, new Object[0]);
                if (objJ3 != null && (objJ = t.j(cls, this.f3173d, objJ3, sVar.f3179a)) != null && (objJ2 = t.j(cls, this.f3174e, objJ, arrayList)) != null) {
                    return t.j(cls, this.f3175f, objJ2, new Object[0]);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }
}
