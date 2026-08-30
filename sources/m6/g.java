package m6;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import utils.ReplacePropertiesUtil;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f4300a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile String f4301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f4302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile CountDownLatch f4303d = new CountDownLatch(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile boolean f4304e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile Context f4305f = null;

    public static void a(Context context, String str, e eVar) {
        Object obj;
        if (f4300a) {
            if (eVar != null) {
                eVar.f(f4301b);
                return;
            }
            return;
        }
        synchronized (g.class) {
            try {
                if (f4300a) {
                    if (eVar != null) {
                        eVar.f(f4301b);
                    }
                    return;
                }
                try {
                    Context applicationContext = context.getApplicationContext();
                    f4305f = applicationContext;
                    final int i6 = 1;
                    f4303d = new CountDownLatch(1);
                    final int i9 = 0;
                    f4304e = false;
                    String strC = !b(str) ? c(str) : null;
                    if (b(strC)) {
                        try {
                            strC = c(h8.b.q(applicationContext));
                        } catch (Throwable th) {
                            Log.w("AdjustManager", "readEventTokenFromAssets 异常: " + th.getMessage());
                            strC = null;
                        }
                    }
                    if (b(strC)) {
                        Log.e("AdjustManager", "无法获取 eventToken，初始化失败");
                        if (eVar != null) {
                            eVar.f(null);
                        }
                        return;
                    }
                    f4302c = strC;
                    String str2 = "sandbox";
                    try {
                        if (!new ReplacePropertiesUtil(applicationContext).isDebugger()) {
                            str2 = "production";
                        }
                    } catch (Throwable th2) {
                        Log.w("AdjustManager", "readAdjustEnvironment 异常: " + th2.getMessage());
                    }
                    Object objC = d.c(applicationContext, strC, str2);
                    if (objC == null) {
                        f4300a = true;
                        Log.i("AdjustManager", "Adjust SDK 未集成：进入 no-op 模式");
                        if (eVar != null) {
                            eVar.f(null);
                        }
                        return;
                    }
                    final int i10 = 2;
                    boolean z5 = (applicationContext.getApplicationInfo().flags & 2) != 0;
                    Class<?> cls = d.f4293d;
                    if (cls != null) {
                        try {
                            try {
                                obj = cls.getField(z5 ? "VERBOSE" : "SUPPRESS").get(null);
                            } catch (NoSuchFieldException unused) {
                                obj = cls.getField(z5 ? "VERBOSE" : "INFO").get(null);
                            }
                            objC.getClass().getMethod("setLogLevel", cls).invoke(objC, obj);
                        } catch (Throwable unused2) {
                        }
                    }
                    Class<?> cls2 = d.f4294e;
                    if (cls2 != null) {
                        try {
                            final int i11 = 3;
                            objC.getClass().getMethod("setOnEventTrackingSucceededListener", cls2).invoke(objC, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: m6.b
                                @Override // java.lang.reflect.InvocationHandler
                                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                                    switch (i11) {
                                        case 0:
                                            Log.w("AdjustManager", "Session tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 1:
                                            Log.i("AdjustManager", "Attribution changed: ".concat(d.a(objArr)));
                                            return null;
                                        case 2:
                                            Log.w("AdjustManager", "Event tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 3:
                                            Log.d("AdjustManager", "Event tracking success: ".concat(d.a(objArr)));
                                            return null;
                                        default:
                                            if (objArr != null && objArr.length > 0) {
                                                Log.d("AdjustManager", "Deferred deeplink: " + objArr[0]);
                                            }
                                            return Boolean.TRUE;
                                    }
                                }
                            }));
                        } catch (Throwable unused3) {
                        }
                    }
                    Class<?> cls3 = d.f4295f;
                    if (cls3 != null) {
                        try {
                            objC.getClass().getMethod("setOnEventTrackingFailedListener", cls3).invoke(objC, Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new InvocationHandler() { // from class: m6.b
                                @Override // java.lang.reflect.InvocationHandler
                                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                                    switch (i10) {
                                        case 0:
                                            Log.w("AdjustManager", "Session tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 1:
                                            Log.i("AdjustManager", "Attribution changed: ".concat(d.a(objArr)));
                                            return null;
                                        case 2:
                                            Log.w("AdjustManager", "Event tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 3:
                                            Log.d("AdjustManager", "Event tracking success: ".concat(d.a(objArr)));
                                            return null;
                                        default:
                                            if (objArr != null && objArr.length > 0) {
                                                Log.d("AdjustManager", "Deferred deeplink: " + objArr[0]);
                                            }
                                            return Boolean.TRUE;
                                    }
                                }
                            }));
                        } catch (Throwable unused4) {
                        }
                    }
                    a aVar = new a(eVar, 0);
                    Class<?> cls4 = d.f4296g;
                    if (cls4 != null) {
                        try {
                            objC.getClass().getMethod("setOnSessionTrackingSucceededListener", cls4).invoke(objC, Proxy.newProxyInstance(cls4.getClassLoader(), new Class[]{cls4}, new c(aVar, 0)));
                        } catch (Throwable unused5) {
                        }
                    }
                    Class<?> cls5 = d.h;
                    if (cls5 != null) {
                        try {
                            objC.getClass().getMethod("setOnSessionTrackingFailedListener", cls5).invoke(objC, Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, new InvocationHandler() { // from class: m6.b
                                @Override // java.lang.reflect.InvocationHandler
                                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                                    switch (i9) {
                                        case 0:
                                            Log.w("AdjustManager", "Session tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 1:
                                            Log.i("AdjustManager", "Attribution changed: ".concat(d.a(objArr)));
                                            return null;
                                        case 2:
                                            Log.w("AdjustManager", "Event tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 3:
                                            Log.d("AdjustManager", "Event tracking success: ".concat(d.a(objArr)));
                                            return null;
                                        default:
                                            if (objArr != null && objArr.length > 0) {
                                                Log.d("AdjustManager", "Deferred deeplink: " + objArr[0]);
                                            }
                                            return Boolean.TRUE;
                                    }
                                }
                            }));
                        } catch (Throwable unused6) {
                        }
                    }
                    Class<?> cls6 = d.f4297i;
                    if (cls6 != null) {
                        try {
                            objC.getClass().getMethod("setOnAttributionChangedListener", cls6).invoke(objC, Proxy.newProxyInstance(cls6.getClassLoader(), new Class[]{cls6}, new InvocationHandler() { // from class: m6.b
                                @Override // java.lang.reflect.InvocationHandler
                                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                                    switch (i6) {
                                        case 0:
                                            Log.w("AdjustManager", "Session tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 1:
                                            Log.i("AdjustManager", "Attribution changed: ".concat(d.a(objArr)));
                                            return null;
                                        case 2:
                                            Log.w("AdjustManager", "Event tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 3:
                                            Log.d("AdjustManager", "Event tracking success: ".concat(d.a(objArr)));
                                            return null;
                                        default:
                                            if (objArr != null && objArr.length > 0) {
                                                Log.d("AdjustManager", "Deferred deeplink: " + objArr[0]);
                                            }
                                            return Boolean.TRUE;
                                    }
                                }
                            }));
                        } catch (Throwable unused7) {
                        }
                    }
                    Class<?> cls7 = d.f4299k;
                    if (cls7 != null) {
                        try {
                            final int i12 = 4;
                            objC.getClass().getMethod("setOnDeferredDeeplinkResponseListener", cls7).invoke(objC, Proxy.newProxyInstance(cls7.getClassLoader(), new Class[]{cls7}, new InvocationHandler() { // from class: m6.b
                                @Override // java.lang.reflect.InvocationHandler
                                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                                    switch (i12) {
                                        case 0:
                                            Log.w("AdjustManager", "Session tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 1:
                                            Log.i("AdjustManager", "Attribution changed: ".concat(d.a(objArr)));
                                            return null;
                                        case 2:
                                            Log.w("AdjustManager", "Event tracking failed: ".concat(d.a(objArr)));
                                            return null;
                                        case 3:
                                            Log.d("AdjustManager", "Event tracking success: ".concat(d.a(objArr)));
                                            return null;
                                        default:
                                            if (objArr != null && objArr.length > 0) {
                                                Log.d("AdjustManager", "Deferred deeplink: " + objArr[0]);
                                            }
                                            return Boolean.TRUE;
                                    }
                                }
                            }));
                        } catch (Throwable unused8) {
                        }
                    }
                    if (d.b()) {
                        try {
                            d.f4290a.getMethod("onCreate", d.f4291b).invoke(null, objC);
                        } catch (Throwable unused9) {
                        }
                    }
                    f4300a = true;
                    d.d(new a(eVar, 1));
                    Log.i("AdjustManager", "Adjust 初始化成功，appToken=" + f4302c + ", env=" + str2);
                } catch (Throwable th3) {
                    Log.e("AdjustManager", "初始化异常: " + th3.getMessage(), th3);
                    if (eVar != null) {
                        eVar.f(null);
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public static boolean b(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static String c(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                return jSONArray.getJSONObject(0).optString("eventToken", null);
            }
        } catch (Throwable th) {
            Log.w("AdjustManager", "parseEventToken 异常: " + th.getMessage());
        }
        return null;
    }

    public static void d(String str, Map map) {
        Object objNewInstance;
        if (b(str)) {
            Log.w("AdjustManager", "EventToken 为空，无法上报事件");
            return;
        }
        if (d.b()) {
            try {
                objNewInstance = d.f4292c.getConstructor(String.class).newInstance(str);
            } catch (Throwable unused) {
                objNewInstance = null;
            }
        } else {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            Log.d("AdjustManager", "trackEvent(no-op) token=" + str);
            return;
        }
        if (map != null) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getKey() != null && entry.getValue() != null) {
                        String str2 = (String) entry.getKey();
                        String str3 = (String) entry.getValue();
                        if (!b(str2) && str3 != null) {
                            try {
                                objNewInstance.getClass().getMethod("addCallbackParameter", String.class, String.class).invoke(objNewInstance, str2, str3);
                            } catch (Throwable unused2) {
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                Log.e("AdjustManager", "上报事件异常: " + th.getMessage(), th);
                return;
            }
        }
        if (d.b()) {
            try {
                d.f4290a.getMethod("trackEvent", d.f4292c).invoke(null, objNewInstance);
            } catch (Throwable unused3) {
            }
        }
        Log.d("AdjustManager", "事件已上报: " + str);
    }

    public static void e(Context context, String str, Map map) {
        if (!f4300a) {
            a(context, null, new b2.d(str, map, 7));
            return;
        }
        if (b(str)) {
            str = f4302c;
        }
        d(str, map);
    }
}
