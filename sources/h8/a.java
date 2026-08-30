package h8;

import d7.g;
import i2.l;
import i2.p;
import i2.t;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import k1.h;
import s6.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3026b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f3025a = i6;
        this.f3026b = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        AtomicBoolean atomicBoolean;
        Method methodF;
        AtomicBoolean atomicBoolean2;
        int i6 = this.f3025a;
        Object obj2 = this.f3026b;
        switch (i6) {
            case 0:
                try {
                    return Class.forName(method.getDeclaringClass().getName(), true, h.class.getClassLoader()).getDeclaredMethod(method.getName(), method.getParameterTypes()).invoke((h) obj2, objArr);
                } catch (InvocationTargetException e9) {
                    throw e9.getTargetException();
                } catch (ReflectiveOperationException e10) {
                    throw new RuntimeException("Reflection failed for method " + method, e10);
                }
            default:
                if (!v2.a.b(this)) {
                    try {
                        g.f("proxy", obj);
                        g.f("m", method);
                        if (g.a(method.getName(), "onBillingSetupFinished")) {
                            Object objP = objArr != null ? f.p(0, objArr) : null;
                            Class clsD = t.d("com.android.billingclient.api.BillingResult");
                            if (clsD != null && (methodF = t.f(clsD, "getResponseCode", new Class[0])) != null && g.a(t.j(clsD, methodF, objP, new Object[0]), 0)) {
                                p pVar = l.f3112l;
                                if (v2.a.b(l.class)) {
                                    atomicBoolean2 = null;
                                    atomicBoolean2.set(true);
                                    ((Runnable) obj2).run();
                                } else {
                                    try {
                                        atomicBoolean2 = l.f3114n;
                                    } catch (Throwable th) {
                                        v2.a.a(th, l.class);
                                        atomicBoolean2 = null;
                                    }
                                    atomicBoolean2.set(true);
                                    ((Runnable) obj2).run();
                                }
                            }
                        } else {
                            String name = method.getName();
                            g.e("m.name", name);
                            if (name.endsWith("onBillingServiceDisconnected")) {
                                p pVar2 = l.f3112l;
                                if (v2.a.b(l.class)) {
                                    atomicBoolean = null;
                                    atomicBoolean.set(false);
                                } else {
                                    try {
                                        atomicBoolean = l.f3114n;
                                    } catch (Throwable th2) {
                                        v2.a.a(th2, l.class);
                                        atomicBoolean = null;
                                    }
                                    atomicBoolean.set(false);
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        v2.a.a(th3, this);
                    }
                    break;
                }
                return null;
        }
    }
}
