package d7;

import android.net.Uri;
import java.util.Arrays;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void b(Uri uri) {
        if (uri != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Uri.parse(this) must not be null");
        h(illegalStateException, g.class.getName());
        throw illegalStateException;
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        h(nullPointerException, g.class.getName());
        throw nullPointerException;
    }

    public static void d(String str, Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        h(nullPointerException, g.class.getName());
        throw nullPointerException;
    }

    public static void e(String str, Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        h(nullPointerException, g.class.getName());
        throw nullPointerException;
    }

    public static void f(String str, Object obj) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = g.class.getName();
            int i6 = 0;
            while (!stackTrace[i6].getClassName().equals(name)) {
                i6++;
            }
            while (stackTrace[i6].getClassName().equals(name)) {
                i6++;
            }
            StackTraceElement stackTraceElement = stackTrace[i6];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
            h(nullPointerException, g.class.getName());
            throw nullPointerException;
        }
    }

    public static int g(int i6, int i9) {
        if (i6 < i9) {
            return -1;
        }
        return i6 == i9 ? 0 : 1;
    }

    public static void h(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i6 = -1;
        for (int i9 = 0; i9 < length; i9++) {
            if (str.equals(stackTrace[i9].getClassName())) {
                i6 = i9;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i6 + 1, length));
    }

    public static void i(String str) {
        r6.i iVar = new r6.i(x.g("lateinit property ", str, " has not been initialized"));
        h(iVar, g.class.getName());
        throw iVar;
    }
}
