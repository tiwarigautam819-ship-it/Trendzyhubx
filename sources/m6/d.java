package m6;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f4290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f4291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f4292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Class f4293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class f4294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class f4295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Class f4296g;
    public static final Class h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Class f4297i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Class f4298j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Class f4299k;

    static {
        try {
            f4290a = Class.forName("com.adjust.sdk.Adjust");
            f4291b = Class.forName("com.adjust.sdk.AdjustConfig");
            f4292c = Class.forName("com.adjust.sdk.AdjustEvent");
            f4293d = Class.forName("com.adjust.sdk.LogLevel");
            try {
                f4294e = Class.forName("com.adjust.sdk.OnEventTrackingSucceededListener");
            } catch (Throwable unused) {
            }
            try {
                f4295f = Class.forName("com.adjust.sdk.OnEventTrackingFailedListener");
            } catch (Throwable unused2) {
            }
            try {
                f4296g = Class.forName("com.adjust.sdk.OnSessionTrackingSucceededListener");
            } catch (Throwable unused3) {
            }
            try {
                h = Class.forName("com.adjust.sdk.OnSessionTrackingFailedListener");
            } catch (Throwable unused4) {
            }
            try {
                f4297i = Class.forName("com.adjust.sdk.OnAttributionChangedListener");
            } catch (Throwable unused5) {
            }
            try {
                f4298j = Class.forName("com.adjust.sdk.OnAdidRead");
            } catch (Throwable unused6) {
            }
            try {
                f4299k = Class.forName("com.adjust.sdk.OnDeferredDeeplinkResponseListener");
            } catch (Throwable unused7) {
            }
            Log.i("AdjustManager", "AdjustRef: SDK classes found.");
        } catch (Throwable unused8) {
            Log.i("AdjustManager", "AdjustRef: SDK NOT present, all calls are no-op.");
        }
    }

    public static String a(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return "null";
        }
        try {
            return String.valueOf(objArr[0]);
        } catch (Throwable unused) {
            return "<?>";
        }
    }

    public static boolean b() {
        return (f4290a == null || f4291b == null || f4292c == null) ? false : true;
    }

    public static Object c(Context context, String str, String str2) {
        if (!b()) {
            return null;
        }
        try {
            return f4291b.getConstructor(Context.class, String.class, String.class).newInstance(context, str, str2);
        } catch (Throwable th) {
            Log.w("AdjustManager", "newConfig 失败: " + th.getMessage());
            return null;
        }
    }

    public static void d(f fVar) throws IllegalAccessException, InvocationTargetException {
        String strValueOf = null;
        if (!b()) {
            fVar.a(null);
            return;
        }
        Class cls = f4290a;
        Class<?> cls2 = f4298j;
        if (cls2 != null) {
            try {
                cls.getMethod("getAdid", cls2).invoke(null, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new c(fVar, 1)));
                return;
            } catch (Throwable unused) {
            }
        }
        if (b()) {
            try {
                Object objInvoke = cls.getMethod("getAdid", null).invoke(null, null);
                if (objInvoke != null) {
                    strValueOf = String.valueOf(objInvoke);
                }
            } catch (Throwable unused2) {
            }
        }
        fVar.a(strValueOf);
    }
}
