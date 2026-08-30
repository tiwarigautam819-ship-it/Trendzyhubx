package androidx.fragment.app;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s.j f605b = new s.j(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y0 f606a;

    public r0(y0 y0Var) {
        this.f606a = y0Var;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        s.j jVar = f605b;
        s.j jVar2 = (s.j) jVar.get(classLoader);
        if (jVar2 == null) {
            jVar2 = new s.j(0);
            jVar.put(classLoader, jVar2);
        }
        Class cls = (Class) jVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        jVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e9) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e9);
        } catch (ClassNotFoundException e10) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": make sure class name exists"), e10);
        }
    }

    public final c0 a(String str) {
        try {
            return (c0) c(this.f606a.f661w.f522b.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e9) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e9);
        } catch (InstantiationException e10) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e10);
        } catch (NoSuchMethodException e11) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e11);
        } catch (InvocationTargetException e12) {
            throw new a0(q2.x.g("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e12);
        }
    }
}
