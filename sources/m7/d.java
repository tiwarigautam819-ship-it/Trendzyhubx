package m7;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import d7.g;
import java.lang.reflect.InvocationTargetException;
import k2.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    private static volatile Choreographer choreographer;

    static {
        Object objC;
        try {
            objC = new c(a(Looper.getMainLooper()), false);
        } catch (Throwable th) {
            objC = e.c(th);
        }
        if (objC instanceof r6.e) {
            objC = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        g.d("null cannot be cast to non-null type android.os.Handler", objInvoke);
        return (Handler) objInvoke;
    }
}
