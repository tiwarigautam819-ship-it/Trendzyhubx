package x6;

import d7.g;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f6026a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        g.c(methods);
        int length = methods.length;
        int i6 = 0;
        while (true) {
            method = null;
            if (i6 >= length) {
                break;
            }
            Method method2 = methods[i6];
            if (g.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                g.e("getParameterTypes(...)", parameterTypes);
                if (g.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i6++;
        }
        f6026a = method;
        int length2 = methods.length;
        for (int i9 = 0; i9 < length2 && !g.a(methods[i9].getName(), "getSuppressed"); i9++) {
        }
    }
}
