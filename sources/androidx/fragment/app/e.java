package androidx.fragment.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import com.engagelab.privates.core.api.WakeMessage;
import com.getcapacitor.cordova.MockCordovaWebViewImpl;
import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f496d;

    public /* synthetic */ e(Object obj, Object obj2, Object obj3, int i6) {
        this.f493a = i6;
        this.f494b = obj;
        this.f495c = obj2;
        this.f496d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object objJ = null;
        int i6 = 1;
        switch (this.f493a) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) this.f494b;
                View view = (View) this.f495c;
                g gVar = (g) this.f496d;
                d7.g.f("$container", viewGroup);
                d7.g.f("this$0", gVar);
                viewGroup.endViewTransition(view);
                ((l1) gVar.f520c.f583a).c(gVar);
                return;
            case 1:
                ((MockCordovaWebViewImpl) this.f494b).lambda$eval$0((String) this.f495c, (ValueCallback) this.f496d);
                return;
            case 2:
                com.google.firebase.messaging.g gVar2 = (com.google.firebase.messaging.g) this.f494b;
                Intent intent = (Intent) this.f495c;
                p4.j jVar = (p4.j) this.f496d;
                gVar2.getClass();
                try {
                    gVar2.handleIntent(intent);
                    return;
                } finally {
                    jVar.a(null);
                }
            case 3:
                i2.l lVar = (i2.l) this.f494b;
                i2.s sVar = (i2.s) this.f495c;
                Runnable runnable = (Runnable) this.f496d;
                if (v2.a.b(i2.l.class)) {
                    return;
                }
                try {
                    Class cls = lVar.f3123f;
                    Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new i2.i(lVar, sVar, runnable));
                    Class cls2 = lVar.f3119b;
                    Method method = lVar.f3126j;
                    if (!v2.a.b(lVar)) {
                        try {
                            objJ = lVar.f3118a;
                        } catch (Throwable th) {
                            v2.a.a(th, lVar);
                        }
                        break;
                    }
                    i2.t.j(cls2, method, objJ, sVar.f3179a, objNewProxyInstance);
                    return;
                } catch (Throwable th2) {
                    v2.a.a(th2, i2.l.class);
                    return;
                }
            case 4:
                i2.m mVar = (i2.m) this.f494b;
                i2.s sVar2 = (i2.s) this.f495c;
                Runnable runnable2 = (Runnable) this.f496d;
                if (v2.a.b(i2.m.class)) {
                    return;
                }
                try {
                    Class cls3 = mVar.f3141o;
                    Object objNewProxyInstance2 = Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new i2.k(mVar, new Object[]{sVar2, runnable2}, i6));
                    Class cls4 = mVar.f3129b;
                    Method method2 = mVar.f3143q;
                    if (!v2.a.b(mVar)) {
                        try {
                            obj = mVar.f3128a;
                        } catch (Throwable th3) {
                            v2.a.a(th3, mVar);
                            obj = null;
                        }
                        break;
                    } else {
                        obj = null;
                    }
                    Class cls5 = mVar.f3137k;
                    if (!v2.a.b(mVar)) {
                        try {
                            objJ = i2.t.j(cls5, mVar.f3145s, i2.t.j(cls5, mVar.f3146t, i2.t.j(mVar.f3135i, mVar.f3144r, null, new Object[0]), sVar2.f3179a), new Object[0]);
                        } catch (Throwable th4) {
                            v2.a.a(th4, mVar);
                        }
                        break;
                    }
                    i2.t.j(cls4, method2, obj, objJ, objNewProxyInstance2);
                    return;
                } catch (Throwable th5) {
                    v2.a.a(th5, i2.m.class);
                    return;
                }
            case 5:
                k3.a aVar = (k3.a) this.f494b;
                f3.i iVar = (f3.i) this.f495c;
                String str = iVar.f2568a;
                f3.h hVar = (f3.h) this.f496d;
                aVar.getClass();
                Logger logger = k3.a.f3552f;
                try {
                    g3.e eVarA = aVar.f3555c.a(str);
                    if (eVarA == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        new IllegalArgumentException(str2);
                    } else {
                        ((m3.h) aVar.f3557e).t(new com.google.firebase.messaging.o(aVar, iVar, ((d3.c) eVarA).a(hVar), i6));
                    }
                    return;
                } catch (Exception e9) {
                    logger.warning("Error scheduling event " + e9.getMessage());
                    return;
                }
            case 6:
                m1.e eVar = (m1.e) this.f494b;
                File file = (File) this.f495c;
                String str3 = (String) this.f496d;
                ConcurrentHashMap concurrentHashMap = eVar.f4228g;
                try {
                    if (file.exists()) {
                        file.delete();
                        break;
                    }
                    return;
                } finally {
                    concurrentHashMap.remove(str3);
                }
            case 7:
                d4.b bVar = (d4.b) this.f494b;
                x2.a aVar2 = (x2.a) this.f495c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f496d;
                try {
                    p0.r rVarC = t4.b.c(bVar.f2277a);
                    if (rVarC == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    p0.q qVar = (p0.q) rVarC.f4611a;
                    synchronized (qVar.f4606d) {
                        qVar.f4608f = threadPoolExecutor;
                        break;
                    }
                    rVarC.f4611a.a(new p0.l(aVar2, threadPoolExecutor));
                    return;
                } catch (Throwable th6) {
                    aVar2.k(th6);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case WakeMessage.ACTIVITY /* 8 */:
                y2.a aVar3 = (y2.a) this.f494b;
                y2.m mVar2 = (y2.m) this.f495c;
                Bundle bundle = (Bundle) this.f496d;
                try {
                    aVar3.i(mVar2, bundle);
                    aVar3.q(mVar2, bundle, null);
                    return;
                } catch (x1.l e10) {
                    aVar3.q(mVar2, null, e10);
                    return;
                }
            default:
                y2.u uVar = (y2.u) this.f494b;
                y2.m mVar3 = (y2.m) this.f495c;
                Bundle bundle2 = (Bundle) this.f496d;
                try {
                    uVar.i(mVar3, bundle2);
                    uVar.p(mVar3, bundle2);
                    return;
                } catch (x1.t e11) {
                    x1.o oVar = e11.f5936a;
                    uVar.o(mVar3, oVar.f5911d, oVar.a(), String.valueOf(oVar.f5909b));
                    return;
                } catch (x1.l e12) {
                    uVar.o(mVar3, null, e12.getMessage(), null);
                    return;
                }
        }
    }

    public /* synthetic */ e(k3.a aVar, f3.i iVar, com.getcapacitor.n nVar, f3.h hVar) {
        this.f493a = 5;
        this.f494b = aVar;
        this.f495c = iVar;
        this.f496d = hVar;
    }
}
