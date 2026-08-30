package i2;

import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements h {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static l f3113m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f3119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f3120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class f3121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f3122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f3123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Method f3124g;
    public final Method h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Method f3125i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Method f3126j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f3127k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final p f3112l = new p();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final AtomicBoolean f3114n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final ConcurrentHashMap f3115o = new ConcurrentHashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final ConcurrentHashMap f3116p = new ConcurrentHashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final ConcurrentHashMap f3117q = new ConcurrentHashMap();

    public l(Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Method method, Method method2, Method method3, Method method4, r rVar) {
        this.f3118a = obj;
        this.f3119b = cls;
        this.f3120c = cls2;
        this.f3121d = cls3;
        this.f3122e = cls4;
        this.f3123f = cls5;
        this.f3124g = method;
        this.h = method2;
        this.f3125i = method3;
        this.f3126j = method4;
        this.f3127k = rVar;
    }

    public static final /* synthetic */ String b() {
        if (v2.a.b(l.class)) {
            return null;
        }
        return "i2.l";
    }

    @Override // i2.h
    public final void a(s sVar, Runnable runnable) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            c(new androidx.fragment.app.e(this, sVar, runnable, 3));
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void c(Runnable runnable) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (f3114n.get()) {
                runnable.run();
            } else {
                d(runnable);
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void d(Runnable runnable) {
        Class cls = this.f3119b;
        if (v2.a.b(this)) {
            return;
        }
        try {
            Class clsD = t.d("com.android.billingclient.api.BillingClientStateListener");
            if (clsD == null) {
                return;
            }
            int i6 = 1;
            Method methodF = t.f(cls, "startConnection", clsD);
            if (methodF == null) {
                return;
            }
            Object objNewProxyInstance = Proxy.newProxyInstance(clsD.getClassLoader(), new Class[]{clsD}, new h8.a(i6, runnable));
            Object obj = null;
            if (!v2.a.b(this)) {
                try {
                    obj = this.f3118a;
                } catch (Throwable th) {
                    v2.a.a(th, this);
                }
            }
            t.j(cls, methodF, obj, objNewProxyInstance);
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }
}
