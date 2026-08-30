package u5;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import m1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f5490b = Class.class.getMethod("isRecord", null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f5491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f5492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f5493e;

    public b() throws NoSuchMethodException {
        Method method = Class.class.getMethod("getRecordComponents", null);
        this.f5491c = method;
        Class<?> componentType = method.getReturnType().getComponentType();
        this.f5492d = componentType.getMethod("getName", null);
        this.f5493e = componentType.getMethod("getType", null);
    }

    @Override // m1.j
    public final Method g(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), null);
        } catch (ReflectiveOperationException e9) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e9);
        }
    }

    @Override // m1.j
    public final Constructor h(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f5491c.invoke(cls, null);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i6 = 0; i6 < objArr.length; i6++) {
                clsArr[i6] = (Class) this.f5493e.invoke(objArr[i6], null);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e9) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e9);
        }
    }

    @Override // m1.j
    public final String[] k(Class cls) {
        try {
            Object[] objArr = (Object[]) this.f5491c.invoke(cls, null);
            String[] strArr = new String[objArr.length];
            for (int i6 = 0; i6 < objArr.length; i6++) {
                strArr[i6] = (String) this.f5492d.invoke(objArr[i6], null);
            }
            return strArr;
        } catch (ReflectiveOperationException e9) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e9);
        }
    }

    @Override // m1.j
    public final boolean l(Class cls) {
        try {
            return ((Boolean) this.f5490b.invoke(cls, null)).booleanValue();
        } catch (ReflectiveOperationException e9) {
            throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", e9);
        }
    }
}
