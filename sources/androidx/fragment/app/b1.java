package androidx.fragment.app;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b1 implements androidx.lifecycle.r0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static b1 f456b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f457a;

    public /* synthetic */ b1(int i6) {
        this.f457a = i6;
    }

    @Override // androidx.lifecycle.r0
    public androidx.lifecycle.p0 a(Class cls) throws InvocationTargetException {
        switch (this.f457a) {
            case 0:
                return new c1(true);
            case 1:
                throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
            case 2:
                try {
                    Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                    d7.g.e("{\n            modelClass…).newInstance()\n        }", objNewInstance);
                    return (androidx.lifecycle.p0) objNewInstance;
                } catch (IllegalAccessException e9) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e9);
                } catch (InstantiationException e10) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e10);
                } catch (NoSuchMethodException e11) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e11);
                }
            default:
                return new x0.b();
        }
    }

    @Override // androidx.lifecycle.r0
    public androidx.lifecycle.p0 b(Class cls, v0.c cVar) {
        switch (this.f457a) {
        }
        return a(cls);
    }

    @Override // androidx.lifecycle.r0
    public final androidx.lifecycle.p0 c(d7.d dVar, v0.c cVar) {
        switch (this.f457a) {
            case 0:
                return a1.a.a(this, dVar, cVar);
            case 1:
                return a1.a.a(this, dVar, cVar);
            case 2:
                return b(m1.j.i(dVar), cVar);
            default:
                return a1.a.a(this, dVar, cVar);
        }
    }
}
