package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f729a = s6.h.k(Application.class, h0.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f730b = f4.f.b(h0.class);

    public static final Constructor a(Class cls, List list) {
        d7.g.f("signature", list);
        Constructor<?>[] constructors = cls.getConstructors();
        d7.g.e("modelClass.constructors", constructors);
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            d7.g.e("constructor.parameterTypes", parameterTypes);
            List listR = s6.f.r(parameterTypes);
            if (list.equals(listR)) {
                return constructor;
            }
            if (list.size() == listR.size() && listR.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final p0 b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (p0) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e9) {
            throw new RuntimeException("Failed to access " + cls, e9);
        } catch (InstantiationException e10) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e11.getCause());
        }
    }
}
